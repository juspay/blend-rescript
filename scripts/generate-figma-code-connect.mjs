#!/usr/bin/env node
// Generates src/Figma/<Component>CodeConnect.res from figma/componentMaps/*.mjs.
//
// The component maps are the single source of truth for Figma-property <->
// RescriptBlend-prop knowledge, shared with the Code Connect template
// runtime (figma/engine.mjs, used by figma/<Component>.figma.ts). This
// script derives the same knowledge into a plain ReScript function --
// `fromFigmaProps: CodeConnectUtils.figmaProps => string` -- for consumers
// that aren't running inside Figma's Code Connect resolver, e.g. a Figma
// *plugin* (like juspay-portal's apps/code-connect) that already extracts
// componentProperties itself and just needs the RescriptBlend rendering
// logic, without hand-copying getEnum mapping tables into another repo.
//
// Only primitive (string/bool/enum) props are covered. instanceSwap-kind
// props (icons, nested components) need a live Figma instance to resolve
// nested code and can't be produced by static codegen -- see the "Not
// covered" comment emitted in each generated file.
//
// Usage:
//   node scripts/generate-figma-code-connect.mjs

import { readdir, mkdir, writeFile, rm } from "node:fs/promises";
import { fileURLToPath } from "node:url";
import { dirname, join, basename } from "node:path";

const ROOT = join(dirname(fileURLToPath(import.meta.url)), "..");
const MAPS_DIR = join(ROOT, "figma", "componentMaps");
const OUT_DIR = join(ROOT, "src", "Figma");

function renderEnumExtraction(varName, spec) {
  const cases = Object.entries(spec.values)
    .map(([figVal, codeVal]) => `      | "${figVal}" => Some("${codeVal}")`)
    .join("\n");
  return `  let ${varName} =
    props
    ->CodeConnectUtils.getStringProp("${spec.figmaProp}")
    ->Option.flatMap(v =>
      switch v {
${cases}
      | _ => None
      }
    )`;
}

function renderExtraction(varName, spec) {
  // A human deliberately decided this Figma property has no valid code
  // correspondence -- respect it, don't re-derive/re-propose it.
  if (spec.mapped === false) return null;
  // No confirmed Figma property name yet (unfilled scaffold entry) -- skip
  // it entirely rather than emit e.g. getStringProp("null"), which would
  // silently "work" (never match a real property) but for the wrong reason.
  if (!spec.figmaProp) return null;
  switch (spec.kind) {
    case "string":
      return `  let ${varName} = props->CodeConnectUtils.getStringProp("${spec.figmaProp}")`;
    case "bool":
      return `  let ${varName} = props->CodeConnectUtils.getBoolProp("${spec.figmaProp}")`;
    case "enum": {
      // An enum with no filled-in Figma values yet (all TODO_FIGMA_KEY
      // comments) has an empty `values` object -- also not ready.
      if (Object.keys(spec.values).length === 0) return null;
      return renderEnumExtraction(varName, spec);
    }
    default:
      return null; // instanceSwap and anything else: not statically derivable
  }
}

function renderAttrJoin(varName, spec) {
  if (spec.kind === "string") return `CodeConnectUtils.strAttr("${varName}", ${varName})`;
  if (spec.kind === "bool") return `CodeConnectUtils.boolAttr("${varName}", ${varName})`;
  return `CodeConnectUtils.attr("${varName}", ${varName})`;
}

async function generateOne(file) {
  const mod = await import(join(MAPS_DIR, file));
  const map = mod.default;
  const componentName = basename(file, ".mjs");
  const moduleFile = `${componentName}CodeConnect.res`;

  // Unverified scaffolds (see scripts/scaffold-figma-component-maps.mjs) have
  // figmaComponentName: null until a human fills it in. Never emit ReScript
  // from a map that hasn't been verified -- a generated function that
  // silently returns None/"" for every prop would look done when it isn't.
  if (!map.figmaComponentName) {
    return { componentName, status: "not-ready" };
  }

  // A prop is "covered" only if renderExtraction actually produced code for
  // it -- that's the single source of truth for what's ready (unfilled
  // scaffold entries, instanceSwap props, and anything renderExtraction
  // declines to handle all return null the same way).
  const withExtraction = Object.entries(map.props).map(([varName, spec]) => [
    varName,
    spec,
    renderExtraction(varName, spec),
  ]);
  const covered = withExtraction.filter(([, , ext]) => ext !== null);
  const skipped = withExtraction.filter(([, , ext]) => ext === null);

  if (covered.length === 0) {
    return { componentName, status: "not-ready" };
  }

  const extraction = covered.map(([, , ext]) => ext).join("\n");
  const joins = covered.map(([varName, spec]) => renderAttrJoin(varName, spec)).join(" ++\n  ");

  const rejected = skipped.filter(([, spec]) => spec.mapped === false);
  const pending = skipped.filter(([, spec]) => spec.mapped !== false);
  const skippedNote =
    (rejected.length > 0
      ? `\n// Deliberately not mapped (see figma/componentMaps/${file}): ${rejected
          .map(([name]) => name)
          .join(", ")}.`
      : "") +
    (pending.length > 0
      ? `\n// Not covered (unfilled figmaProp/values, instanceSwap, or otherwise not statically derivable): ${pending
          .map(([name]) => name)
          .join(", ")}. Splice these in at the call site if needed.`
      : "") +
    (rejected.length > 0 || pending.length > 0 ? "\n" : "");

  const source = `// GENERATED by scripts/generate-figma-code-connect.mjs from figma/componentMaps/${file}.
// Do not edit by hand -- edit the source map and re-run \`npm run figma:generate\`.
//
// Renders RescriptBlend.${map.codeComponent} JSX text from a Figma
// component-properties array.${skippedNote}
let fromFigmaProps = (props: CodeConnectUtils.figmaProps): string => {
${extraction}

  "<${map.codeComponent}" ++
  ${joins} ++
  " />"
}
`;

  await writeFile(join(OUT_DIR, moduleFile), source);
  return { componentName, status: "generated" };
}

async function main() {
  await mkdir(OUT_DIR, { recursive: true });
  const files = (await readdir(MAPS_DIR)).filter((f) => f.endsWith(".mjs"));
  if (files.length === 0) {
    console.warn(`No component maps found in ${MAPS_DIR}`);
    return;
  }
  const results = [];
  for (const file of files) {
    results.push(await generateOne(file));
  }

  const generated = results.filter((r) => r.status === "generated");
  const notReady = results.filter((r) => r.status === "not-ready");

  // Remove orphaned output: a *CodeConnect.res left over from a component
  // that's no longer ready (map deleted, or regressed to figmaComponentName:
  // null) since the last time this generated it. Without this, a stale
  // generated file keeps compiling and passing `npm run build` forever,
  // silently out of sync with its (now-gone) source map.
  const expectedFiles = new Set(generated.map((r) => `${r.componentName}CodeConnect.res`));
  const existingResFiles = (await readdir(OUT_DIR)).filter(
    (f) => f.endsWith("CodeConnect.res") && f !== "CodeConnectUtils.res",
  );
  const removed = [];
  for (const f of existingResFiles) {
    if (!expectedFiles.has(f)) {
      await rm(join(OUT_DIR, f));
      removed.push(f);
    }
  }

  for (const r of generated) console.log(`wrote src/Figma/${r.componentName}CodeConnect.res`);
  for (const f of removed) console.log(`removed stale src/Figma/${f} (no longer a ready map)`);
  console.log(`\nGenerated ${generated.length}/${results.length} (${notReady.length} skipped -- not yet verified, figmaComponentName is still null).`);
  if (removed.length > 0) console.log(`Removed ${removed.length} stale generated file(s).`);
  if (generated.length > 0 || removed.length > 0) console.log("Run `npm run build` to verify the generated ReScript compiles.");
}

main();
