// Shared logic for reading OUR OWN generated ReScript bindings (src/*.res)
// and classifying their props -- used by both scripts/scaffold-figma-component-maps.mjs
// (scaffolds TODO placeholders) and scripts/sync-figma-code-connect.mjs
// (enriches with real data parsed from blend-design-system's .figma.tsx
// files). Kept in one place so both stay consistent about what a "simple
// enum" or a "labeled args vs record props" component looks like.

import { readFile } from "node:fs/promises";
import { existsSync } from "node:fs";
import { join } from "node:path";

export async function readTypesModule(SRC, moduleName) {
  const p = join(SRC, `${moduleName}.res`);
  return existsSync(p) ? await readFile(p, "utf8") : null;
}

// Extract a simple (no-payload) variant's constructors: `type name = | @as("x") Foo | ...`.
// Returns null if the type isn't found, or has any payload-carrying / non-@as constructor
// (in which case we don't understand it well enough to treat it as a simple enum).
export function extractSimpleVariant(typesContent, typeName) {
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

// Classify one prop's raw ReScript type into a shape figma/engine.mjs understands
// (string/bool/enum/instanceSwap), or "unsupported" with a reason, or null to skip silently.
export async function classifyType(SRC, propName, rawType) {
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
    const content = await readTypesModule(SRC, moduleName);
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

// "labeled args": `external make: (~prop: Type=?, ...) => React.element = "Name"`
export function parseLabeledArgs(content) {
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

// "record props": `type props = {...}` + `external make: React.component<props> = "Name"`
export function parseRecordProps(content) {
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

// Full parse+classify for one component's src/<componentName>.res.
// Returns { codeComponent, entries: [[propName, spec]] } or null if the file
// doesn't exist or matches neither known shape.
export async function parseComponentFile(SRC, componentName) {
  const resPath = join(SRC, `${componentName}.res`);
  if (!existsSync(resPath)) return null;
  const content = await readFile(resPath, "utf8");
  const parsed = parseLabeledArgs(content) ?? parseRecordProps(content);
  if (!parsed) return null;

  const entries = [];
  for (const [propName, rawType] of parsed.props) {
    const spec = await classifyType(SRC, propName, rawType);
    if (spec) entries.push([propName, spec]);
  }
  return { codeComponent: parsed.codeComponent, entries };
}
