# Changelog

All notable changes to this project are documented here. Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/); this project follows [SemVer](https://semver.org/).

## [Unreleased]

### Changed
- **BREAKING**: Bindings are now generated **deterministically** by [`@juspay/rescript-bindgen`](https://www.npmjs.com/package/@juspay/rescript-bindgen) instead of an LLM. Same Blend version → byte-identical output, no secrets, no network. The binding surface changes: richer record-props (`type props = {...HtmlAttrs.x}` + `React.component<props>`) and shared `*Types`/`CommonTypes`/`HtmlAttrs` modules referenced qualified. Consumers must update call sites.
- **BREAKING**: Re-adopted **1:1 versioning** — `@juspay/rescript-blend@X` ships bindings for `@juspay/blend-design-system@X`. `@juspay/blend-design-system` moved from `dependencies` to a **peer dependency**. Binding-only re-releases use a `-N` suffix (`0.0.36` → `0.0.36-1`).
- `sync-bindings.yml` now polls npm **daily** for a new stable Blend and regenerates deterministically (plus manual dispatch); no LLM secrets.
- `release.yml` publishes the `package.json` version directly (skipping if already on npm); **semantic-release removed**.

### Removed
- LLM generation: `scripts/generate-bindings.mjs`, `scripts/bindings-instructions.md`, `scripts/known-errors.md`, and the `@juspay/neurolink` / `dotenv` / `undici` dependencies and `LITELLM_*` / `TEST_KEY` secrets.
- `semantic-release` and all `@semantic-release/*` packages plus the embedded `release` config.
- `.github/workflows/release-mirror.yml` (superseded by the daily poll + deterministic generation).
- The `.failed.res` gates across CI/release (bindgen flags issues inline + in `src/_REPORT.md`; a broken component fails generation outright).

### Added
- `scripts/generate.mjs` — thin wrapper around the `@juspay/rescript-bindgen` CLI (`--blend`, `--set-version`, `--only`); writes `src/_REPORT.md`.
- `@juspay/rescript-bindgen` dev dependency.

### Bindgen preview validation (in progress — dev pin, not yet shippable)

The `@juspay/rescript-bindgen` devDependency is temporarily pinned to an **unmerged
pkg.pr.new preview URL** (currently `@11bd7f8`, PR #135) while a series of upstream fixes
is validated against the current Blend pin (`0.0.37-beta.8`). This must be repinned to a
published npm release before any release off `main`. Each preview was regenerated,
compiled, format-checked, and cross-checked against upstream golden + benchmark suites;
bindings were also verified for prop-completeness against the TypeScript `.d.ts`.

Validated and adopted (in order):
- **#125** — variadic rest-parameter bindings. Fixed a real defect: `mergeSingleSelectV2AriaDescribedBy` now `@variadic` (`array<string> => string`); the old form produced comma-joined output where `aria-describedby` needs space-separated.
- **#126** (CJS `export =`), **#127** (callable-with-properties), **#132**/**#134** (`error-any`/`unresolved` import flagging) — clean upstream hardening; **no-ops for Blend** (byte-identical output; Blend hits none of these shapes).
- **#129** — compound-component statics: **+11 recovered components** (`Skeleton.Circle/Rectangle/Rounded`, `Timeline.*`) that were previously dropped. Surfaced an upstream typings imprecision → filed `juspay/blend-design-system#1576` (compound statics typed inline instead of `typeof`, causing duplicate `*2` bindings).
- **#131** — shared-props records (#82/#130): the largest binding change (net −7,433 lines). `styledBlockProps` (92 CSS fields) and `baseSkeletonProps` collapse into shared spreads; the HtmlAttrs walk is now transitive. Verified **0 prop loss** (2,703 props recovered vs the prior version; complete coverage vs the `.d.ts`).
- **#135** (#133 deep-report engine) — report-accuracy fix; `.res` bindings unchanged. Now honestly flags **7 components as 🔍 needs-review** (BlendChart, ChartV2, ChartV2Legend, DataTable, PivotTableModal, StatCardV2, ThemeProvider) that carry `review`/`any`-level fields inside shared Highcharts/token types, previously hidden behind a "✅ usable" verdict. Its first cut hung generation on Blend + `--webapi` → filed `juspay/rescript-bindgen#139` (deep walk re-traversed the ~2,600-node Highcharts graph combinatorially); fixed upstream via a worklist fixed-point and re-validated (5s, complete).

Evaluated and **not** adopted:
- **#136** (#128 callable-module home placement) — a valid upstream placement fix, but a **no-op for Blend** (byte-identical `.res` output; Blend has no callable-module with prop-derived deps). It branches off #134 in parallel to #135, so pinning it would **revert #135's deep-report** (drop the 7 needs-review sections) for zero gain. Left on #135; revisit once #128 and #133 both land on `main`.

## [1.0.0] — 2026-05-01

First stable release under the `@juspay/rescript-blend` package name. Marks the transition from upstream version mirroring to independent SemVer; the package is now versioned on its own cadence and pins the upstream `@juspay/blend-design-system` it was generated against.

### Changed
- **BREAKING**: Package renamed from `@subham_/rescript-blend` to `@juspay/rescript-blend`. Consumers must update their dependency.
- **BREAKING**: Abandoned 1:1 version mirroring with `@juspay/blend-design-system`. This package now follows independent SemVer; the bundled blend version is pinned in `dependencies` and bumped explicitly per release.
- `rescript.json` `name` aligned to `@juspay/rescript-blend` to match `package.json` and avoid ReScript package-resolution warnings.

### Added
- `.github/workflows/release-mirror.yml` — manual workflow that mirrors each `@juspay/blend-design-system` version (stable or pkg.pr.new URL) to a matching `@juspay/rescript-blend` release, with a `.d.ts`-diff safety net that opens a correction PR when `regenerate=no` is picked on a release that actually changed the public API. Preview versions (those with a `-preview.<sha>` suffix) additionally publish to `pkg.pr.new` so consumers can install a SHA-anchored URL alongside the npm prerelease tag. See #47 for the full design.
- `.github/workflows/ci.yml` — ReScript build validation on push/PR to `main`.
- `.github/workflows/publish-npm.yml` — NPM publish triggered by GitHub Releases, using OIDC trusted publishing.
- `.github/workflows/sync-bindings.yml` — manual binding regeneration against upstream `@juspay/blend-design-system`; rejects prerelease versions by default.
- `.github/CODEOWNERS`, PR/issue templates, `dependabot.yml`.
- `CONTRIBUTING.md` and this `CHANGELOG.md`.
- `package.json`: `files` allowlist, `engines.node >= 20`, `author`, `repository`, `bugs`, `homepage` metadata.
- `.nvmrc` pinning Node 20.

### Removed
- Committed build artifact `juspay-rescript-blend-0.1.0.tgz`.
- Stale `main: "index.js"` pointing at a non-existent file.
- Debug `console.log` in `scripts/generate-bindings.mjs` that leaked `TEST_KEY` to stdout.

## [0.0.37-beta.2] — 2026-04-23

### Changed
- **BREAKING**: Reset versioning strategy to mirror `@juspay/blend-design-system` versions exactly
- Package version now tracks upstream: `0.0.37-beta.2` ↔ `blend-design-system@0.0.37-beta.2`
- Deprecated all 0.1.x versions in favor of mirrored versioning
- Updated dependencies to match blend-design-system 0.0.37-beta.2

## [0.1.6] — 2026-04-23 (DEPRECATED)

Last version before version mirroring strategy. Deprecated in favor of 0.0.37-beta.2+.

## [0.1.2] — 2026-xx-xx (DEPRECATED)

Initial published version. See commit history for details. Deprecated.
