# Changelog

All notable changes to this project are documented here. Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/); this project follows [SemVer](https://semver.org/).

## [Unreleased]

### Added
- `.github/workflows/release-mirror.yml` — manual workflow that mirrors each `@juspay/blend-design-system` version (stable or pkg.pr.new URL) to a matching `@subham_/rescript-blend` release, with a `.d.ts`-diff safety net that opens a correction PR when `regenerate=no` is picked on a release that actually changed the public API. Preview versions (those with a `-preview.<sha>` suffix) additionally publish to `pkg.pr.new` so consumers can install a SHA-anchored URL alongside the npm prerelease tag. See #47 for the full design.
- `.github/workflows/ci.yml` — ReScript build validation on push/PR to `main`.
- `.github/workflows/publish-npm.yml` — NPM publish triggered by GitHub Releases.
- `.github/workflows/sync-bindings.yml` — manual binding regeneration against upstream `@juspay/blend-design-system`; rejects prerelease versions by default.
- `.github/CODEOWNERS`, PR/issue templates, `dependabot.yml`.
- `CONTRIBUTING.md` and this `CHANGELOG.md`.
- `package.json`: `files` allowlist, `engines.node >= 20`, `author`, `repository`, `bugs`, `homepage` metadata.
- `.nvmrc` pinning Node 20.

### Changed
- `package.json` `@juspay/blend-design-system` pinned to an exact version (`0.0.36`) instead of `"latest"`. Going forward, each release of this package is locked to a specific blend version chosen by the release-mirror workflow. Consumers should not install `@juspay/blend-design-system` directly.
- `package.json` `license` corrected from `ISC` to `MIT` to match `LICENSE`.
- `dotenv` moved from `dependencies` to `devDependencies` (used only by the maintainer generation script).
- `.github/workflows/publish-npm.yml` switched from long-lived `NPM_TOKEN` to OIDC trusted publishing. Node bumped to 22 and `npm` upgraded to latest to meet the OIDC minimum. Requires a matching trusted-publisher config on npmjs.com for `@subham_/rescript-blend`. See #52.

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
