#!/usr/bin/env node
// Deterministic ReScript binding generation for @juspay/blend-design-system.
//
// Thin wrapper that runs the @juspay/rescript-bindgen CLI directly on blend's
// shipped .d.ts files. No LLM, no secrets, no network model calls — same blend
// version always produces byte-identical bindings.
//
// Usage:
//   node scripts/generate.mjs                 # bind the version pinned in package.json
//   node scripts/generate.mjs --blend 0.0.36  # bind a specific version
//   node scripts/generate.mjs --set-version   # also set package.json version = blend version (1:1)
//   node scripts/generate.mjs --only Button   # only emit one component (debugging)
//
// The CLI writes src/_REPORT.md (per-component readiness) and src/_bindgen-summary.json
// (machine-readable buckets) alongside the generated *.res files.

import { execFileSync } from "node:child_process";
import { existsSync, readFileSync, writeFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const ROOT = join(dirname(fileURLToPath(import.meta.url)), "..");
const PKG = "@juspay/blend-design-system";
const SRC = join(ROOT, "src");

function flag(name) {
  const i = process.argv.indexOf(name);
  return i !== -1 ? process.argv[i + 1] : undefined;
}
const has = (name) => process.argv.includes(name);

const readJson = (p) => JSON.parse(readFileSync(p, "utf8"));

// Resolve the blend version to bind: explicit --blend wins, else the installed
// copy in node_modules, else the pin in our package.json (devDeps/peerDeps).
function resolveBlendVersion() {
  const explicit = flag("--blend");
  if (explicit) return explicit;
  try {
    return readJson(join(ROOT, "node_modules", PKG, "package.json")).version;
  } catch {}
  const pkg = readJson(join(ROOT, "package.json"));
  const range =
    pkg.devDependencies?.[PKG] ?? pkg.peerDependencies?.[PKG] ?? pkg.dependencies?.[PKG];
  const pinned = range?.replace(/^[^\d]*/, "");
  if (!pinned) {
    console.error(`Could not resolve a ${PKG} version. Pass --blend <version>.`);
    process.exit(1);
  }
  return pinned;
}

const version = resolveBlendVersion();
const onlyComp = flag("--only");

// The version installed in node_modules, if any.
let installedVersion;
try {
  installedVersion = readJson(join(ROOT, "node_modules", PKG, "package.json")).version;
} catch {}

// Prefer the pinned devDependency (deterministic per the lockfile); fall back to
// npx fetching the latest only when the package isn't installed.
const localBin = join(ROOT, "node_modules", ".bin", "rescript-bindgen");
const useLocal = existsSync(localBin);
const cmd = useLocal ? localBin : "npx";

// When the target version is the one already installed, bind it offline from
// node_modules (matches `generate:raw`); otherwise let bindgen fetch it.
const offline = version === installedVersion;

const cliArgs = [
  ...(useLocal ? [] : ["--yes", "@juspay/rescript-bindgen"]),
  "--pkg",
  `${PKG}@${version}`,
  ...(offline ? ["--node-modules", join(ROOT, "node_modules"), "--no-install"] : []),
  "--out",
  SRC,
  "--project",
  ROOT,
  "--webapi",
  "--report",
  "--json-summary",
  join(SRC, "_bindgen-summary.json"),
  "--clean",
  "--yes",
];
if (onlyComp) cliArgs.push("--only", onlyComp);

console.log(`Generating ReScript bindings for ${PKG}@${version} → src/`);
execFileSync(cmd, cliArgs, { cwd: ROOT, stdio: "inherit" });

// Normalise formatting so the committed bindings pass `format:check` in CI.
// `rescript format` is deterministic and idempotent, so this preserves the
// "same blend version → byte-identical src/" guarantee.
console.log("Formatting generated bindings (rescript format)…");
execFileSync("npx", ["rescript", "format"], { cwd: ROOT, stdio: "inherit" });

// Fail loudly if bindgen flagged any component as broken.
try {
  const { components = {} } = readJson(join(SRC, "_bindgen-summary.json"));
  const broken = components.broken ?? 0;
  if (broken > 0) {
    console.error(`\n✗ ${broken} component(s) flagged as broken — see src/_REPORT.md`);
    process.exit(1);
  }
  console.log(
    `\n✓ ${components.usable ?? "?"}/${components.total ?? "?"} components usable — see src/_REPORT.md`,
  );
} catch {
  console.warn("Could not read src/_bindgen-summary.json; skipping defect gate.");
}

if (has("--set-version")) {
  const pkgPath = join(ROOT, "package.json");
  const pkg = readJson(pkgPath);
  pkg.version = version;
  writeFileSync(pkgPath, JSON.stringify(pkg, null, 2) + "\n");
  console.log(`Set package.json version = ${version} (1:1 with blend)`);
}
