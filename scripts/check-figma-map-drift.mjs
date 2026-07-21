#!/usr/bin/env node
// Detects "Drift A" from the PR #128 review: Blend ships a new/removed prop,
// `npm run generate` regenerates src/*.res, and figma/componentMaps/*.mjs
// now has a hole nothing notices. Re-scaffolds every component into a temp
// dir (reusing scripts/scaffold-figma-component-maps.mjs, not a second
// parser) and diffs its prop-key set against the committed map's. Local
// only: no secrets, no network, no human.
//
// This does NOT catch "Drift B" (a designer renames a Figma property, or
// changes a variant label) -- that needs live Figma data (REST API or Dev
// Mode), which this deterministic/secret-free check deliberately doesn't
// touch. See figma/README.md.
//
// A committed map's prop entry can be `{ mapped: false, reason: '...' }` to
// record "a human looked at this and decided not to connect it" -- such an
// entry still counts as a known key, so re-scaffolding never re-flags it as
// "gained". Deleting the key entirely, instead of setting `mapped: false`,
// looks identical to "never scaffolded" to this script and WILL get
// re-flagged -- see the scaffold script's header comment.
//
// Usage:
//   node scripts/check-figma-map-drift.mjs
// Exit code 0 = no drift, 1 = drift found (or something no longer parses).

import { mkdtemp, readdir, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { execFileSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const ROOT = join(dirname(fileURLToPath(import.meta.url)), "..");
const MAPS_DIR = join(ROOT, "figma", "componentMaps");

async function loadPropKeys(dir, file) {
  const mod = await import(join(dir, file));
  return new Set(Object.keys(mod.default.props ?? {}));
}

async function main() {
  const tmp = await mkdtemp(join(tmpdir(), "figma-map-drift-"));
  let drifted = false;
  try {
    execFileSync(
      "node",
      [join(ROOT, "scripts", "scaffold-figma-component-maps.mjs"), "--force", "--out-dir", tmp],
      { cwd: ROOT, stdio: "inherit" },
    );

    const freshFiles = new Set(await readdir(tmp));
    const committedFiles = (await readdir(MAPS_DIR)).filter((f) => f.endsWith(".mjs"));

    for (const file of committedFiles) {
      if (!freshFiles.has(file)) {
        // No longer derivable from src/ at all -- component removed from
        // Blend, or its .res shape no longer matches either parser pattern.
        // Can't diff props in that case, just flag it for a human to look at.
        console.log(`⚠ ${file}: no longer derivable from src/ -- component removed, or its .res shape changed enough that the scaffolder can't parse it. Review manually.`);
        drifted = true;
        continue;
      }

      const [freshKeys, committedKeys] = await Promise.all([
        loadPropKeys(tmp, file),
        loadPropKeys(MAPS_DIR, file),
      ]);

      const gained = [...freshKeys].filter((k) => !committedKeys.has(k));
      const removed = [...committedKeys].filter((k) => !freshKeys.has(k));

      if (gained.length > 0) {
        console.log(`✗ ${file}: gained prop(s) not in the committed map: ${gained.join(", ")}`);
        drifted = true;
      }
      if (removed.length > 0) {
        console.log(`✗ ${file}: map references prop(s) no longer in src/: ${removed.join(", ")}`);
        drifted = true;
      }
    }

    if (drifted) {
      console.log(
        "\nRun `node scripts/scaffold-figma-component-maps.mjs --only <Component> --force --out-dir /tmp/scratch` " +
          "to see the fresh shape, then hand-merge new/removed props into the committed map. " +
          "To deliberately exclude a prop, set it to `{ mapped: false, reason: '...' }` -- don't just delete the key.",
      );
      process.exitCode = 1;
    } else {
      console.log("No drift between src/ bindings and figma/componentMaps/.");
    }
  } finally {
    await rm(tmp, { recursive: true, force: true });
  }
}

main();
