#!/usr/bin/env node
// Scaffolds figma/componentMaps/<Component>.mjs for every "usable" component
// in src/_REPORT.md, using ONLY information derivable from our own generated
// ReScript bindings (prop names, kinds, and -- for simple no-payload variant
// props -- the code-side constructor names). It does NOT know or guess any
// Figma-side property name or Figma-side enum value label; those are always
// left as explicit TODOs. Nothing this script writes should be treated as
// verified against Figma.
//
// Handles the two prop shapes rescript-bindgen emits (see README.md):
//   - "labeled args": `external make: (~prop: Type=?, ...) => React.element = "Name"`
//   - "record props": `type props = {...}` + `external make: React.component<props> = "Name"`
// Props whose type can't be confidently classified are recorded as
// `unsupported` (with the raw type text) rather than guessed at.
//
// Usage:
//   node scripts/scaffold-figma-component-maps.mjs
//   node scripts/scaffold-figma-component-maps.mjs --only Checkbox,Alert
//   node scripts/scaffold-figma-component-maps.mjs --force   # overwrite existing maps
//   node scripts/scaffold-figma-component-maps.mjs --out-dir /tmp/x --force
//     # write elsewhere instead of figma/componentMaps -- used by
//     # scripts/check-figma-map-drift.mjs to diff a fresh scaffold against
//     # the committed maps without touching them.

import { readFile, writeFile, mkdir, readdir } from "node:fs/promises";
import { existsSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join, isAbsolute } from "node:path";

const ROOT = join(dirname(fileURLToPath(import.meta.url)), "..");
const SRC = join(ROOT, "src");
const DEFAULT_MAPS_DIR = join(ROOT, "figma", "componentMaps");

const flag = (name) => {
  const i = process.argv.indexOf(name);
  return i !== -1 ? process.argv[i + 1] : undefined;
};
const force = process.argv.includes("--force");
const onlyList = flag("--only")?.split(",").map((s) => s.trim());
const outDirFlag = flag("--out-dir");
const MAPS_DIR = outDirFlag ? (isAbsolute(outDirFlag) ? outDirFlag : join(ROOT, outDirFlag)) : DEFAULT_MAPS_DIR;

const typesFileCache = new Map();
async function readTypesModule(moduleName) {
  if (typesFileCache.has(moduleName)) return typesFileCache.get(moduleName);
  const p = join(SRC, `${moduleName}.res`);
  const content = existsSync(p) ? await readFile(p, "utf8") : null;
  typesFileCache.set(moduleName, content);
  return content;
}

// Extract a simple (no-payload) variant's constructors: `type name = | @as("x") Foo | ...`.
// Returns null if the type isn't found, or has any payload-carrying / non-@as constructor
// (in which case we don't understand it well enough to scaffold an enum for it).
function extractSimpleVariant(typesContent, typeName) {
  const re = new RegExp(`type ${typeName} =([\\s\\S]*?)(?=\\ntype |\\n$)`, "m");
  const m = typesContent.match(re);
  if (!m) return null;
  const body = m[1];
  const lines = body
    .split("\n")
    .map((l) => l.trim())
    .filter((l) => l.startsWith("|"));
  if (lines.length === 0) return null;
  const constructors = [];
  for (const line of lines) {
    // | @as("primary") Primary
    const cm = line.match(/^\|\s*@as\("([^"]+)"\)\s*([A-Z]\w*)\s*$/);
    if (!cm) return null; // payload-carrying or unrecognized shape -- bail, mark unsupported upstream
    constructors.push({ asValue: cm[1], constructor: cm[2] });
  }
  return constructors;
}

async function classifyType(componentName, propName, rawType) {
  const type = rawType.trim().replace(/=\?$/, "").trim();

  if (type === "string") return { kind: "string" };
  if (type === "bool") return { kind: "bool" };
  if (type === "React.element") {
    const isIconLike = /icon/i.test(propName);
    return isIconLike
      ? { kind: "instanceSwap" }
      : { kind: "unsupported", reason: "React.element (slot/children) -- needs manual handling" };
  }

  // Qualified reference to a *Types module, e.g. CheckboxTypes.checkboxSize
  const qm = type.match(/^(\w+Types)\.(\w+)$/);
  if (qm) {
    const [, moduleName, typeName] = qm;
    const content = await readTypesModule(moduleName);
    if (content) {
      const constructors = extractSimpleVariant(content, typeName);
      if (constructors) {
        return {
          kind: "enum",
          codeModule: moduleName,
          constructors, // [{asValue, constructor}] -- code side known, Figma side unknown
        };
      }
    }
    return { kind: "unsupported", reason: `${type} -- variant has payload(s) or is a record, not a simple enum` };
  }

  if (type.includes("=>")) return { kind: "unsupported", reason: `${type} -- event handler, code-only` };
  if (type.startsWith("React.ref<")) return null; // skip silently, like onClick/ref elsewhere in this repo
  if (propName === "ref") return null;
  if (propName === "children" && type === "React.element") return null; // handled above anyway

  return { kind: "unsupported", reason: `${type} -- not confidently classifiable` };
}

function renderPropsBlock(entries) {
  const lines = [];
  for (const [propName, spec] of entries) {
    if (spec.kind === "unsupported") {
      lines.push(`    // TODO (unsupported): ${propName} -- ${spec.reason}`);
      continue;
    }
    if (spec.kind === "string" || spec.kind === "bool") {
      lines.push(`    ${propName}: { figmaProp: null /* TODO */, kind: '${spec.kind}' },`);
      continue;
    }
    if (spec.kind === "instanceSwap") {
      lines.push(`    ${propName}: { figmaProp: null /* TODO */, kind: 'instanceSwap' },`);
      continue;
    }
    if (spec.kind === "enum") {
      lines.push(`    ${propName}: {`);
      lines.push(`      figmaProp: null, // TODO: Figma property name`);
      lines.push(`      kind: 'enum',`);
      lines.push(`      values: {`);
      for (const { asValue, constructor } of spec.constructors) {
        lines.push(
          `        // TODO_FIGMA_KEY: '${spec.codeModule}.${constructor}', // ReScript: ${constructor} (bound value "${asValue}")`,
        );
      }
      lines.push(`      },`);
      lines.push(`    },`);
      continue;
    }
  }
  return lines.join("\n");
}

async function parseLabeledArgs(content) {
  const m = content.match(/external make:\s*\(([\s\S]*?)\)\s*=>\s*React\.element\s*=\s*"(\w+)"/);
  if (!m) return null;
  const [, argsBlock, codeComponent] = m;
  const propLines = argsBlock
    .split("\n")
    .map((l) => l.trim())
    .filter((l) => l.startsWith("~"));
  const props = [];
  for (const line of propLines) {
    const pm = line.match(/^~(\w+):\s*(.+?),?\s*$/);
    if (!pm) continue;
    const [, propName, rawType] = pm;
    props.push([propName, rawType]);
  }
  return { codeComponent, props };
}

async function parseRecordProps(content, filename) {
  const typeMatch = content.match(/type props = \{([\s\S]*?)\n\}/);
  const externalMatch = content.match(/external make:\s*React\.component<props>\s*=\s*"(\w+)"/);
  if (!typeMatch || !externalMatch) return null;
  const codeComponent = externalMatch[1];
  const body = typeMatch[1];
  const propLines = body
    .split("\n")
    .map((l) => l.trim())
    .filter((l) => l.length > 0 && !l.startsWith("...") && !l.startsWith("//"));
  const props = [];
  for (const line of propLines) {
    const pm = line.match(/^(\w+)\??:\s*(.+?),?\s*$/);
    if (!pm) continue;
    const [, propName, rawType] = pm;
    props.push([propName, rawType]);
  }
  return { codeComponent, props };
}

async function scaffoldOne(componentName) {
  const resPath = join(SRC, `${componentName}.res`);
  if (!existsSync(resPath)) return { componentName, status: "no-file" };

  const outPath = join(MAPS_DIR, `${componentName}.mjs`);
  if (existsSync(outPath) && !force) return { componentName, status: "skipped-exists" };

  const content = await readFile(resPath, "utf8");
  const parsed = (await parseLabeledArgs(content)) ?? (await parseRecordProps(content, componentName));
  if (!parsed) return { componentName, status: "unparsed" };

  const entries = [];
  for (const [propName, rawType] of parsed.props) {
    const spec = await classifyType(componentName, propName, rawType);
    if (spec) entries.push([propName, spec]);
  }
  if (entries.length === 0) return { componentName, status: "no-props" };

  const supportedCount = entries.filter(([, s]) => s.kind !== "unsupported").length;

  const source = `// SCAFFOLD generated by scripts/scaffold-figma-component-maps.mjs from src/${componentName}.res.
// ReScript-side prop names/kinds (and, for simple enums, code-side constructor
// names) are derived from our own bindings -- safe, no Figma guessing.
// Figma-side property names and enum KEYS are UNKNOWN and must be filled in
// by checking the real component in Figma Desktop. This file is NOT ready
// for figma:generate until figmaComponentName is set and at least one prop
// below has a real figmaProp (unresolved entries are skipped by the
// codegen script, not guessed).
//
// This repo is public -- never commit a real Figma file URL, file key, or
// node-id here or anywhere else in this repo (see figma/README.md). Keep
// those in your own local notes if you need them for reference.
//
// To deliberately exclude a prop from Code Connect (e.g. a Figma variant
// with no valid code correspondence), replace its entry with
// \`propName: { mapped: false, reason: '...' }\` -- do NOT just delete the
// key. A deleted key looks identical to "not yet scaffolded" to
// scripts/check-figma-map-drift.mjs and will keep getting re-flagged;
// \`mapped: false\` records the decision so it's respected going forward.

export default {
  figmaComponentName: null, // TODO: Figma component/component-set name
  codeComponent: '${parsed.codeComponent}',
  id: '${componentName.charAt(0).toLowerCase() + componentName.slice(1)}',
  imports: ['open RescriptBlend'],
  props: {
${renderPropsBlock(entries)}
  },
}
`;
  await writeFile(outPath, source);
  return { componentName, status: "scaffolded", propCount: entries.length, supportedCount };
}

async function main() {
  const report = await readFile(join(SRC, "_REPORT.md"), "utf8");
  const usableSection = report.match(/## ✅ Usable[\s\S]*?(?=\n## )/)?.[0] ?? "";
  let names = [...usableSection.matchAll(/^- (\w+)/gm)].map((m) => m[1]);
  if (onlyList) names = names.filter((n) => onlyList.includes(n));

  await mkdir(MAPS_DIR, { recursive: true });

  const results = [];
  for (const name of names) {
    results.push(await scaffoldOne(name));
  }

  const byStatus = {};
  for (const r of results) {
    byStatus[r.status] ??= [];
    byStatus[r.status].push(r);
  }

  console.log(`\nScaffolded ${byStatus["scaffolded"]?.length ?? 0}/${names.length} components.`);
  for (const [status, list] of Object.entries(byStatus)) {
    if (status === "scaffolded") continue;
    console.log(`  ${status}: ${list.length} (${list.map((r) => r.componentName).slice(0, 12).join(", ")}${list.length > 12 ? ", ..." : ""})`);
  }

  const totalProps = (byStatus["scaffolded"] ?? []).reduce((a, r) => a + r.propCount, 0);
  const totalSupported = (byStatus["scaffolded"] ?? []).reduce((a, r) => a + r.supportedCount, 0);
  console.log(`\n${totalSupported}/${totalProps} scaffolded props are structurally classified (string/bool/enum/instanceSwap); the rest are marked unsupported with a reason comment.`);
  console.log(`All figmaProp/enum-key values are TODO placeholders -- nothing here is verified against Figma.`);
}

main();
