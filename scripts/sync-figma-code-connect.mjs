#!/usr/bin/env node
// Regenerates figma/componentMaps/<Component>.mjs directly from
// blend-design-system's own published *.figma.tsx files -- this repo does
// NOT hand-maintain Figma property knowledge; blend-design-system is the
// sole source of truth, exactly like npm run generate already treats it
// as the source of truth for the ReScript bindings themselves.
//
// For each *.figma.tsx file found in juspay/blend-design-system:
//   1. Parse its figma.connect(...) call (scripts/shared/parse-figma-tsx.mjs)
//      to get { realPropName -> Figma extraction spec }.
//   2. Cross-reference against OUR OWN generated src/<Component>.res
//      (scripts/shared/rescript-component-parser.mjs) to resolve enum values
//      into real ReScript constructors (matched by bound string value,
//      e.g. Figma "primary" <-> @as("primary") Primary -- NOT by parsing
//      blend's React enum member names, which we never need to understand).
//   3. Write figma/componentMaps/<Component>.mjs -- fully generated, not
//      hand-edited. A component with no upstream .figma.tsx simply has no
//      Code Connect here either; that's correct, not a gap to fill by hand.
//
// If blend maps a prop we don't have, or a Figma-only enum value with no
// ReScript equivalent (e.g. Button's "plainIcon"), it's silently omitted --
// never invented. Every one of OUR component's OTHER classifiable props
// that blend's file doesn't mention gets `mapped: false` with a reason,
// so re-running this script (or scripts/check-figma-map-drift.mjs) never
// re-flags it.
//
// Usage:
//   node scripts/sync-figma-code-connect.mjs
//   node scripts/sync-figma-code-connect.mjs --only Button
//   GITHUB_TOKEN=... node scripts/sync-figma-code-connect.mjs   # higher API rate limit

import { writeFile, mkdir, rm } from "node:fs/promises";
import { existsSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";
import { parseFigmaTsx } from "./shared/parse-figma-tsx.mjs";
import { parseComponentFile } from "./shared/rescript-component-parser.mjs";

const ROOT = join(dirname(fileURLToPath(import.meta.url)), "..");
const SRC = join(ROOT, "src");
const MAPS_DIR = join(ROOT, "figma", "componentMaps");
const REPO = "juspay/blend-design-system";
const BRANCH = "main";

const flag = (name) => {
  const i = process.argv.indexOf(name);
  return i !== -1 ? process.argv[i + 1] : undefined;
};
const onlyList = flag("--only")?.split(",").map((s) => s.trim());

function ghHeaders() {
  const headers = { Accept: "application/vnd.github+json" };
  if (process.env.GITHUB_TOKEN) headers.Authorization = `Bearer ${process.env.GITHUB_TOKEN}`;
  return headers;
}

async function listFigmaTsxFiles() {
  const url = `https://api.github.com/repos/${REPO}/git/trees/${BRANCH}?recursive=1`;
  const res = await fetch(url, { headers: ghHeaders() });
  if (!res.ok) throw new Error(`GitHub tree API failed: ${res.status} ${res.statusText}`);
  const data = await res.json();
  if (data.truncated) console.warn("Warning: GitHub tree listing was truncated -- some files may be missing.");
  return data.tree.filter((n) => n.type === "blob" && n.path.endsWith(".figma.tsx")).map((n) => n.path);
}

async function fetchRaw(path) {
  const url = `https://raw.githubusercontent.com/${REPO}/${BRANCH}/${path}`;
  const res = await fetch(url);
  if (!res.ok) throw new Error(`raw fetch failed for ${path}: ${res.status} ${res.statusText}`);
  return res.text();
}

// Guess which of our src/*.res components this file targets: prefer a V2
// variant if the path says so, else the base name, else give up.
//
// `reactComponentName` comes from parsing blend-design-system's fetched
// *.figma.tsx content -- external, network-sourced text, even though
// same-org. It ends up in a filesystem path (both the existsSync check
// here and the later componentMaps write), so validate it's a plain
// ReScript-identifier-shaped name before it touches any path at all,
// rather than relying only on existsSync ruling out anything unexpected --
// existsSync alone still means a value with e.g. path-traversal characters
// gets passed to `join()`, even if that particular join happens to miss.
function resolveOurComponentName(reactComponentName, path) {
  if (!reactComponentName || !/^[A-Za-z][A-Za-z0-9]*$/.test(reactComponentName)) return null;
  const candidates = /\/v2\//i.test(path)
    ? [`${reactComponentName}V2`, reactComponentName]
    : [reactComponentName, `${reactComponentName}V2`];
  for (const name of candidates) {
    if (existsSync(join(SRC, `${name}.res`))) return name;
  }
  return null;
}

// Resolves a blend-side prop spec against our own classification of the
// same prop name. Returns a final componentMaps-shaped spec, or null if it
// can't be resolved at all (logged by the caller).
function resolveProp(blendSpec, ourSpec, propName, warnings) {
  if (blendSpec.kind === "enum") {
    const allLiteral = Object.values(blendSpec.values).every((v) => v === "true" || v === "false");
    // `ourSpec` must still EXIST (the prop name is real on our side) even
    // though we don't care about matching its exact kind here -- e.g.
    // Button's real `disabled: bool` prop, resolved via Figma's `state`
    // instead. Existence alone, not full agreement, is enough for this
    // literal-boolean case. Without this check, a component whose real
    // props are invisible to our regex parser (e.g. Switch.res spreads
    // `...SwitchTypes.switchProps` from a separate type instead of
    // inlining fields -- a real parser limitation, not a data problem)
    // would accept blend's prop name blindly with nothing on our side to
    // back it up.
    if (allLiteral && ourSpec) {
      return { figmaProp: blendSpec.figmaProp, kind: "enum", values: { ...blendSpec.values } };
    }
  }

  // Everything else: our own classifier must independently agree this prop
  // is representable, with the SAME kind blend claims -- never trust
  // blend's shape alone. This is what keeps this script consistent with
  // scripts/scaffold-figma-component-maps.mjs's classification (used
  // identically by the drift check), so a synced map never has a key a
  // fresh scaffold of the same .res file wouldn't also produce. (Caught a
  // real bug this way: blend's Tooltip.figma.tsx maps a JSX `slot` prop via
  // figma.instance(...), but our own classifier deliberately treats
  // generic non-icon React.element props as unsupported -- accepting
  // blend's classification anyway made the synced map disagree with what
  // scripts/check-figma-map-drift.mjs's fresh re-scaffold produces.)
  if (!ourSpec || ourSpec.kind === "unsupported" || ourSpec.kind !== blendSpec.kind) {
    warnings.push(
      `${propName}: our own binding classifies this prop as '${ourSpec?.kind ?? "(missing)"}', not '${blendSpec.kind}' like blend does -- skipped`,
    );
    return null;
  }

  if (blendSpec.kind === "instanceSwap") return { figmaProp: blendSpec.figmaProp, kind: "instanceSwap" };
  if (blendSpec.kind === "string") return { figmaProp: blendSpec.figmaProp, kind: "string" };
  if (blendSpec.kind === "bool") return { figmaProp: blendSpec.figmaProp, kind: "bool" };

  if (blendSpec.kind === "enum") {
    const values = {};
    for (const [figKey, v] of Object.entries(blendSpec.values)) {
      if (v === "true" || v === "false") {
        values[figKey] = v;
        continue;
      }
      // __CODE_REF__: resolve by matching the Figma key against our own
      // bound values (e.g. Figma "primary" <-> @as("primary") Primary),
      // never by parsing blend's React enum member text. Fully qualified
      // (JuspayRescriptBlend.<module>.<constructor>) so the emitted value
      // compiles regardless of what's `open` in the caller's file -- no
      // import/open assumption needed for this consumption path.
      const match = ourSpec.constructors.find((c) => c.asValue === figKey);
      if (match) values[figKey] = `JuspayRescriptBlend.${ourSpec.codeModule}.${match.constructor}`;
      // else: Figma-only value with no ReScript equivalent (e.g.
      // "plainIcon") -- omit, never invent.
    }
    if (Object.keys(values).length === 0) {
      warnings.push(`${propName}: no Figma values resolved against our binding -- skipped`);
      return null;
    }
    return { figmaProp: blendSpec.figmaProp, kind: "enum", values };
  }

  return null;
}

// Escapes a value for embedding as a single-quoted JS string literal in
// generated output. `spec.figmaProp` and Figma enum keys ultimately come
// from blend-design-system's fetched *.figma.tsx content -- untrusted in
// the sense that it's external, even though same-org -- so anything
// derived from it needs real escaping, not just quote-escaping (backslash
// MUST be escaped first, or a literal trailing backslash in the source
// text would escape the closing quote instead of itself).
const jsStringLiteral = (s) => s.replace(/\\/g, "\\\\").replace(/'/g, "\\'");

function renderPropsBlock(resolvedProps, rejectedProps) {
  const lines = [];
  for (const [propName, spec] of Object.entries(resolvedProps)) {
    if (spec.kind === "enum") {
      lines.push(`    ${propName}: {`);
      lines.push(`      figmaProp: '${jsStringLiteral(spec.figmaProp)}',`);
      lines.push(`      kind: 'enum',`);
      lines.push(`      values: {`);
      for (const [figKey, codeVal] of Object.entries(spec.values)) {
        const quotedKey = /^[A-Za-z_$][\w$]*$/.test(figKey) ? figKey : `'${jsStringLiteral(figKey)}'`;
        lines.push(`        ${quotedKey}: '${codeVal}',`);
      }
      lines.push(`      },`);
      lines.push(`    },`);
    } else {
      lines.push(`    ${propName}: { figmaProp: '${jsStringLiteral(spec.figmaProp)}', kind: '${spec.kind}' },`);
    }
  }
  for (const [propName, reason] of Object.entries(rejectedProps)) {
    lines.push(`    ${propName}: { mapped: false, reason: '${jsStringLiteral(reason)}' },`);
  }
  return lines.join("\n");
}

async function syncOne(path) {
  const source = await fetchRaw(path);
  const parsed = parseFigmaTsx(source, path);
  if (!parsed) return { path, status: "no-figma-connect" };
  if (!parsed.reactComponentName) return { path, status: "no-component-name" };

  const ourComponentName = resolveOurComponentName(parsed.reactComponentName, path);
  if (!ourComponentName) return { path, status: "no-matching-binding", reactComponentName: parsed.reactComponentName };
  if (onlyList && !onlyList.includes(ourComponentName)) return { path, status: "skipped-not-in-only" };

  const ours = await parseComponentFile(SRC, ourComponentName);
  if (!ours) return { path, status: "our-binding-unparsed", ourComponentName };
  const oursByName = new Map(ours.entries);

  const resolved = {};
  const warnings = [...parsed.unsupported.map((u) => `${u.propName}: ${u.reason} (from blend's file, not resolvable)`)];
  for (const [propName, blendSpec] of Object.entries(parsed.props)) {
    const ourSpec = oursByName.get(propName);
    const finalSpec = resolveProp(blendSpec, ourSpec, propName, warnings);
    if (finalSpec) resolved[propName] = finalSpec;
    else if (!warnings.some((w) => w.startsWith(`${propName}:`))) {
      warnings.push(`${propName}: blend maps this but it doesn't exist in our binding -- skipped`);
    }
  }

  // Every OUR-side classifiable prop not successfully resolved gets a
  // `mapped: false` entry -- not just ones blend's file never mentions.
  // Without this, a prop blend mentions but that fails resolution (e.g. a
  // kind mismatch) would get NO key at all, while a fresh scaffold of the
  // same .res file always includes one -- exactly the inconsistency
  // scripts/check-figma-map-drift.mjs exists to catch (and did: caught
  // this as "Popover.mjs: gained prop(s): size").
  const rejected = {};
  for (const [propName, spec] of ours.entries) {
    if (resolved[propName] || spec.kind === "unsupported") continue;
    const specificWarning = warnings.find((w) => w.startsWith(`${propName}:`));
    rejected[propName] = specificWarning
      ? specificWarning.slice(propName.length + 2)
      : "not present in blend-design-system's published .figma.tsx";
  }

  if (Object.keys(resolved).length === 0) {
    // Don't leave a stale map from a PREVIOUS (possibly buggier) sync run
    // sitting there marked verified when this run found nothing resolvable
    // -- that's exactly the kind of drift the CI check exists to catch,
    // just self-inflicted. Delete it; scripts/scaffold-figma-component-maps.mjs
    // will recreate a clean unverified TODO scaffold on next run.
    const existingPath = join(MAPS_DIR, `${ourComponentName}.mjs`);
    if (existsSync(existingPath)) {
      await rm(existingPath);
      return { path, status: "nothing-resolved-removed-stale", ourComponentName, warnings };
    }
    return { path, status: "nothing-resolved", ourComponentName, warnings };
  }

  const codeComponent = ours.codeComponent;
  const source_ = `// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// ${path} (branch: ${BRANCH}). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run \`npm run figma:sync\` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/${ourComponentName}.res --
// not guessed, not scaffolded.
${warnings.length > 0 ? `//\n// Skipped during sync:\n${warnings.map((w) => `// - ${w}`).join("\n")}\n` : ""}
export default {
  figmaComponentName: '${parsed.reactComponentName}',
  codeComponent: '${codeComponent}',
  id: '${ourComponentName.charAt(0).toLowerCase() + ourComponentName.slice(1)}',
  imports: ['open JuspayRescriptBlend'],
  props: {
${renderPropsBlock(resolved, rejected)}
  },
}
`;

  await mkdir(MAPS_DIR, { recursive: true });
  await writeFile(join(MAPS_DIR, `${ourComponentName}.mjs`), source_);
  return { path, status: "synced", ourComponentName, propCount: Object.keys(resolved).length, warnings };
}

async function main() {
  console.log(`Listing *.figma.tsx files in ${REPO}@${BRANCH}...`);
  const files = await listFigmaTsxFiles();
  console.log(`Found ${files.length} file(s).\n`);

  const results = [];
  for (const path of files) {
    try {
      results.push(await syncOne(path));
    } catch (err) {
      results.push({ path, status: "error", error: err.message });
    }
  }

  const synced = results.filter((r) => r.status === "synced");
  const other = results.filter((r) => r.status !== "synced");

  for (const r of synced) {
    console.log(`✓ ${r.ourComponentName}: synced ${r.propCount} prop(s) from ${r.path}`);
    for (const w of r.warnings ?? []) console.log(`    - ${w}`);
  }
  console.log(`\nSynced ${synced.length}/${results.length}.`);
  for (const r of other) {
    console.log(`  ${r.status}: ${r.path}${r.ourComponentName ? ` (${r.ourComponentName})` : ""}${r.error ? ` -- ${r.error}` : ""}`);
  }
}

main();
