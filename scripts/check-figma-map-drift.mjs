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
// Severity: a map is "verified" once a human has set figmaComponentName
// (real Figma data exists, e.g. Button.mjs) -- drift there is a real
// regression (a working Code Connect mapping just broke) and FAILS the
// check. A map still at figmaComponentName: null is just an unfinished
// scaffold -- of course it drifts every time Blend regenerates bindings
// (confirmed empirically: a routine bindgen bump changed ~50 components'
// shape at once), and nothing was ever relying on it, so that's reported
// but doesn't fail CI. Re-run the scaffolder before finishing one of those.
//
// Usage:
//   node scripts/check-figma-map-drift.mjs
// Exit code 0 = no drift in any verified map, 1 = a verified map drifted.

import { mkdtemp, readdir, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { execFileSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const ROOT = join(dirname(fileURLToPath(import.meta.url)), "..");
const MAPS_DIR = join(ROOT, "figma", "componentMaps");

async function loadMap(dir, file) {
  const mod = await import(join(dir, file));
  return mod.default;
}

async function main() {
  const tmp = await mkdtemp(join(tmpdir(), "figma-map-drift-"));
  let verifiedDrifted = false;
  let scaffoldDrifted = false;
  try {
    execFileSync(
      "node",
      [join(ROOT, "scripts", "scaffold-figma-component-maps.mjs"), "--force", "--out-dir", tmp],
      { cwd: ROOT, stdio: "inherit" },
    );

    const freshFiles = new Set(await readdir(tmp));
    const committedFiles = (await readdir(MAPS_DIR)).filter((f) => f.endsWith(".mjs"));

    for (const file of committedFiles) {
      const committedMap = await loadMap(MAPS_DIR, file);
      const isVerified = Boolean(committedMap.figmaComponentName);
      const marker = isVerified ? "✗" : "·";

      if (!freshFiles.has(file)) {
        // No longer derivable from src/ at all -- component removed from
        // Blend, or its .res shape no longer matches either parser pattern.
        // Can't diff props in that case, just flag it for a human to look at.
        console.log(`${marker} ${file}: no longer derivable from src/ -- component removed, or its .res shape changed enough that the scaffolder can't parse it. Review manually.`);
        if (isVerified) verifiedDrifted = true;
        else scaffoldDrifted = true;
        continue;
      }

      const freshKeys = new Set(Object.keys((await loadMap(tmp, file)).props ?? {}));
      const committedKeys = new Set(Object.keys(committedMap.props ?? {}));

      const gained = [...freshKeys].filter((k) => !committedKeys.has(k));
      const removed = [...committedKeys].filter((k) => !freshKeys.has(k));

      if (gained.length > 0) {
        console.log(`${marker} ${file}: gained prop(s) not in the committed map: ${gained.join(", ")}`);
        if (isVerified) verifiedDrifted = true;
        else scaffoldDrifted = true;
      }
      if (removed.length > 0) {
        console.log(`${marker} ${file}: map references prop(s) no longer in src/: ${removed.join(", ")}`);
        if (isVerified) verifiedDrifted = true;
        else scaffoldDrifted = true;
      }
    }

    if (scaffoldDrifted) {
      console.log(
        "\n(Above `·` lines are unfinished scaffolds, not failures -- re-run scripts/scaffold-figma-component-maps.mjs " +
          "for the affected component(s) whenever you get to finishing them.)",
      );
    }

    if (verifiedDrifted) {
      console.log(
        "\nA VERIFIED map drifted -- this is a real regression, not just a stale scaffold. " +
          "Run `node scripts/scaffold-figma-component-maps.mjs --only <Component> --force --out-dir /tmp/scratch` " +
          "to see the fresh shape, then hand-merge new/removed props into the committed map. " +
          "To deliberately exclude a prop, set it to `{ mapped: false, reason: '...' }` -- don't just delete the key.",
      );
      process.exitCode = 1;
    } else if (!scaffoldDrifted) {
      console.log("No drift anywhere (verified maps or scaffolds).");
    } else {
      console.log("\nNo drift in any verified map (only unfinished scaffolds drifted, see above -- not a failure).");
    }
  } finally {
    await rm(tmp, { recursive: true, force: true });
  }
}

main();
