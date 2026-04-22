# Changelog

All notable changes to this project are documented here. Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/); this project follows [SemVer](https://semver.org/).

## [Unreleased]

### Added
- `.github/workflows/ci.yml` — ReScript build validation on push/PR to `main`.
- `.github/workflows/publish-npm.yml` — NPM publish triggered by GitHub Releases.
- `.github/workflows/sync-bindings.yml` — manual binding regeneration against upstream `@juspay/blend-design-system`; rejects prerelease versions by default.
- `.github/CODEOWNERS`, PR/issue templates, `dependabot.yml`.
- `CONTRIBUTING.md` and this `CHANGELOG.md`.
- `package.json`: `files` allowlist, `engines.node >= 20`, `author`, `repository`, `bugs`, `homepage` metadata.
- `.nvmrc` pinning Node 20.

### Changed
- `package.json` `license` corrected from `ISC` to `MIT` to match `LICENSE`.
- `dotenv` moved from `dependencies` to `devDependencies` (used only by the maintainer generation script).

### Removed
- Committed build artifact `juspay-rescript-blend-0.1.0.tgz`.
- Stale `main: "index.js"` pointing at a non-existent file.
- Debug `console.log` in `scripts/generate-bindings.mjs` that leaked `TEST_KEY` to stdout.

## [0.1.2] — 2026-xx-xx

Initial published version. See commit history for details.
