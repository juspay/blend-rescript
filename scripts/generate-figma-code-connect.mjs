#!/usr/bin/env node
// Generates src/Figma/<Component>CodeConnect.res from figma/componentMaps/*.mjs.
//
// The component maps are the single source of truth for Figma-property <->
// JuspayRescriptBlend-prop knowledge, shared with the Code Connect template
// runtime (figma/engine.mjs, used by figma/<Component>.figma.ts). This
// script derives the same knowledge into two plain ReScript functions:
//
//   toProps: CodeConnectUtils.figmaProps => array<option<(string, string)>>
//   fromFigmaProps: CodeConnectUtils.figmaProps => string  (thin wrapper over toProps)
//
// `toProps` returns (codePropName, codeValueText) pairs -- the SAME shape a
// Figma plugin's own converter already returns (see e.g. juspay-portal's
// apps/code-connect ButtonUtils.convertToButtonProps: array<option<(string,
// string)>>), so a caller that already owns its own tag-name/wrapper/state
// composition (juspay-portal's entry.res + FigmaUtils.convertPropsNodeStateVariable)
// can plug this in directly instead of getting back an already-composed,
// un-composable string. `fromFigmaProps` stays for callers that just want a
// finished snippet.
//
// Only primitive (string/bool/enum) props are covered. instanceSwap-kind
// props (icons, nested components) need a live Figma instance to resolve
// nested code and can't be produced by static codegen -- see the "Not
// covered" comment emitted in each generated file.
//
// Also emits src/Figma/CodeConnectRegistry.res: a single `resolve` function
// dispatching by figmaComponentName across every generated component, so a
// consumer doesn't hand-maintain a Figma-component-name -> module switch of
// its own -- see writeRegistry() below for the important naming caveat.
//
// Usage:
//   node scripts/generate-figma-code-connect.mjs

import { readdir, mkdir, writeFile, rm } from "node:fs/promises";
import { existsSync } from "node:fs";
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

function renderPropEntry(varName, spec) {
  if (spec.kind === "string") return `CodeConnectUtils.strPropEntry("${varName}", ${varName})`;
  if (spec.kind === "bool") return `CodeConnectUtils.boolPropEntry("${varName}", ${varName})`;
  return `CodeConnectUtils.propEntry("${varName}", ${varName})`;
}

// Escapes a value for embedding in a ReScript (double-quoted) string
// literal. `figmaComponentName`/`codeComponent` ultimately trace back to
// blend-design-system's fetched *.figma.tsx content (via figma:sync) --
// external, even if same-org -- so escape properly (backslash before
// quote) rather than assume they're always simple identifiers.
const resStringLiteral = (s) => s.replace(/\\/g, "\\\\").replace(/"/g, '\\"');

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
  const propEntries = covered.map(([varName, spec]) => renderPropEntry(varName, spec)).join(",\n    ");

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
// toProps derives JuspayRescriptBlend.${map.codeComponent}'s props from a Figma
// component-properties array, as array<option<(propName, propValueText)>> --
// own your own tag name/wrapper/state composition with it (e.g.
// FigmaUtils.convertPropsNodeStateVariable-style). Enum values are fully
// qualified (JuspayRescriptBlend.<Module>.<Constructor>), so they compile
// regardless of what's \`open\` in the caller's file -- no import assumed.
// fromFigmaProps is a thin wrapper over toProps for callers that just want
// a finished snippet; defaults the tag to the fully-qualified
// JuspayRescriptBlend.${map.codeComponent} for the same reason -- pass
// ~tagName (e.g. "Blend.${map.codeComponent}") to render any other tag/prefix.${skippedNote}
let toProps = (props: CodeConnectUtils.figmaProps): array<option<(string, string)>> => {
${extraction}

  [
    ${propEntries}
  ]
}

let fromFigmaProps = (props: CodeConnectUtils.figmaProps, ~tagName: string="JuspayRescriptBlend.${map.codeComponent}"): string =>
  CodeConnectUtils.joinTag(tagName, toProps(props))
`;

  await writeFile(join(OUT_DIR, moduleFile), source);
  return {
    componentName,
    status: "generated",
    figmaComponentName: map.figmaComponentName,
    codeComponent: map.codeComponent,
  };
}

// Emits src/Figma/CodeConnectRegistry.res: dispatches by figmaComponentName
// so a consumer doesn't hand-maintain a Figma-component-name -> module
// switch of its own (the same duplication toProps/fromFigmaProps already
// removed for property mappings, one level up for components). One arm
// per component actually generated -- an unverified scaffold never leaks
// in, same gate as everywhere else.
async function writeRegistry(generated) {
  const registryPath = join(OUT_DIR, "CodeConnectRegistry.res");
  if (generated.length === 0) {
    if (existsSync(registryPath)) {
      await rm(registryPath);
      return { wrote: false, removed: true };
    }
    return { wrote: false, removed: false };
  }

  const arms = generated
    .map(
      (r) =>
        `  | "${resStringLiteral(r.figmaComponentName)}" => Some((${r.componentName}CodeConnect.toProps(props), "${resStringLiteral(r.codeComponent)}"))`,
    )
    .join("\n");

  const source = `// GENERATED by scripts/generate-figma-code-connect.mjs. Do not edit by hand.
//
// Dispatches by figmaComponentName so a consumer doesn't hand-maintain its
// own Figma-component-name -> module switch (the same duplication toProps
// already removes for property mappings, one level up for components).
//
// IMPORTANT: figmaComponentName is whatever identifier blend-design-system's
// own *.figma.tsx uses in its figma.connect(<ComponentName>, ...) call --
// NOT necessarily the literal name shown in Figma's layers/Inspect panel.
// These can differ: Button's real Figma component set is named "Buttons"
// (plural, confirmed via Figma Desktop's Inspect panel), while blend's
// figma.connect() call uses the React identifier "Button" (singular), so
// this registry's "Button" key won't match a raw Figma layer name of
// "Buttons" without the caller normalizing first (same idea as
// juspay-portal's existing ^ComponentName \\d+$ instance-suffix
// normalization). Resolving the actual Figma component name from a live
// node, and reconciling it against this registry's keys, is the caller's
// problem -- this package only supplies the mapping.
//
// Returns Some((props, codeComponent)) for anything synced/verified, None
// otherwise -- the caller supplies its own tag prefix/wrapper (e.g.
// "Blend." ++ codeComponent) and any composition
// (FigmaUtils.convertPropsNodeStateVariable-style).
let resolve = (
  figmaComponentName: string,
  props: CodeConnectUtils.figmaProps,
): option<(array<option<(string, string)>>, string)> =>
  switch figmaComponentName {
${arms}
  | _ => None
  }
`;

  await writeFile(registryPath, source);
  return { wrote: true, removed: false };
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
    (f) => f.endsWith("CodeConnect.res") && f !== "CodeConnectUtils.res" && f !== "CodeConnectRegistry.res",
  );
  const removed = [];
  for (const f of existingResFiles) {
    if (!expectedFiles.has(f)) {
      await rm(join(OUT_DIR, f));
      removed.push(f);
    }
  }

  const registryResult = await writeRegistry(generated);

  for (const r of generated) console.log(`wrote src/Figma/${r.componentName}CodeConnect.res`);
  for (const f of removed) console.log(`removed stale src/Figma/${f} (no longer a ready map)`);
  if (registryResult.wrote) console.log(`wrote src/Figma/CodeConnectRegistry.res (${generated.length} arm(s))`);
  if (registryResult.removed) console.log(`removed stale src/Figma/CodeConnectRegistry.res (no ready maps left)`);
  console.log(`\nGenerated ${generated.length}/${results.length} (${notReady.length} skipped -- not yet verified, figmaComponentName is still null).`);
  if (removed.length > 0) console.log(`Removed ${removed.length} stale generated file(s).`);
  if (generated.length > 0 || removed.length > 0) console.log("Run `npm run build` to verify the generated ReScript compiles.");
}

main();
