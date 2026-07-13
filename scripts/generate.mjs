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
//   node scripts/generate.mjs --augment highcharts/modules/xrange  # load extra .d.ts roots
//
// The CLI writes src/_REPORT.md (per-component readiness) and src/_bindgen-summary.json
// (machine-readable buckets) alongside the generated *.res files.

import { execFileSync } from "node:child_process";
import { existsSync, readFileSync, rmSync, writeFileSync } from "node:fs";
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
// copy in node_modules, else the pin in our package.json (dependencies — where Blend
// now lives as a runtime dep; devDeps/peerDeps are only stale-entry fallbacks).
function resolveBlendVersion() {
  const explicit = flag("--blend");
  if (explicit) return explicit;
  try {
    return readJson(join(ROOT, "node_modules", PKG, "package.json")).version;
  } catch {}
  const pkg = readJson(join(ROOT, "package.json"));
  const range =
    pkg.dependencies?.[PKG] ?? pkg.peerDependencies?.[PKG] ?? pkg.devDependencies?.[PKG];
  const pinned = range?.replace(/^[^\d]*/, "");
  if (!pinned) {
    console.error(`Could not resolve a ${PKG} version. Pass --blend <version>.`);
    process.exit(1);
  }
  return pinned;
}

const version = resolveBlendVersion();
const onlyComp = flag("--only");

function collectFlags(name) {
  const values = [];
  for (let i = 0; i < process.argv.length; i++) {
    if (process.argv[i] === name && process.argv[i + 1]) {
      values.push(...process.argv[i + 1].split(",").map((s) => s.trim()).filter(Boolean));
      i++;
    }
  }
  return values;
}

// Blend exposes Highcharts xrange data. Its extra Point.x2/custom fields live in
// a module augmentation file, so load it explicitly to match the app-side import.
const augmentMods = Array.from(
  new Set(["highcharts/modules/xrange", ...collectFlags("--augment")]),
);

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
  ...augmentMods.flatMap((mod) => ["--augment", mod]),
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
  const lockPath = join(ROOT, "package-lock.json");
  // Snapshot both manifests up front so a failed lock refresh can restore them to their
  // pre-step state — the pin and lock move together or not at all, never a half-applied
  // (pin-without-lock) manifest. (Regenerated src/ bindings are NOT reverted — producing
  // them is the point of the command; see the failure note in the catch below.)
  const pkgBefore = readFileSync(pkgPath, "utf8");
  const lockBefore = existsSync(lockPath) ? readFileSync(lockPath, "utf8") : null;

  const pkg = JSON.parse(pkgBefore);
  pkg.version = version;
  // Blend ships as a runtime `dependency` (not a peer) so consumers install only
  // @juspay/rescript-blend and get Blend transitively. Keep that pin EXACT and 1:1
  // with the bindings we just generated.
  pkg.dependencies = { ...pkg.dependencies, [PKG]: version };
  writeFileSync(pkgPath, JSON.stringify(pkg, null, 2) + "\n");
  console.log(`Set package.json version = ${version} (1:1 with blend) and dependencies.${PKG} = ${version}`);

  // Sync package-lock.json to the pin we just wrote. A stale lock beside a bumped pin makes
  // every later `npm ci` abort with EUSAGE, so a failure MUST fail loudly (never swallowed).
  // `--set-version` is a release-prep step (the daily sync workflow + manual releases), so a
  // registry round-trip is expected; a hard failure here is the point — it fails the job
  // BEFORE a drifted lockfile can reach a PR or `main`. (We can't lean on the sync PR's
  // `pull_request` CI: it's opened with the default GITHUB_TOKEN, which suppresses that run,
  // and the job's own `npm ci` runs before generation.)
  try {
    execFileSync("npm", ["install", "--package-lock-only"], { cwd: ROOT, stdio: "inherit" });
  } catch (err) {
    // Restore the manifests to their pre-step state (best-effort — each write guarded so one
    // failure doesn't skip the other), then ALWAYS re-throw the original npm error: a rollback
    // FS error (e.g. disk full — the very thing that may have broken the refresh) must not mask
    // it. This reverts package.json + lock ONLY; the regenerated src/ bindings stay in the tree,
    // so discard them (`git checkout -- src`) after a failed run.
    try { writeFileSync(pkgPath, pkgBefore); } catch {}
    try {
      if (lockBefore !== null) writeFileSync(lockPath, lockBefore);
      else if (existsSync(lockPath)) rmSync(lockPath);
    } catch {}
    throw err;
  }
}
