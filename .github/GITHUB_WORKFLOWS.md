# GitHub Workflows & Processes — blend-rescript

This document explains the workflows and automation in `.github/`. Bindings are
generated **deterministically** by [`@juspay/rescript-bindgen`](https://www.npmjs.com/package/@juspay/rescript-bindgen)
(no LLM, no secrets), and the package follows **1:1 versioning** with
`@juspay/blend-design-system`.

---

## Overview

```
  ┌────────────────────────────┐
  │ Sync bindings              │  Daily schedule (poll npm for new stable blend)
  │ sync-bindings.yml          │  + manual workflow_dispatch
  └──────────────┬─────────────┘
                 │ opens PR  (regenerated src/ + _REPORT.md + version = blend version)
                 ▼
  ┌────────────────────────────┐
  │ CI                         │  Every push/PR to main → format check + build
  │ ci.yml                     │
  └──────────────┬─────────────┘
                 │ merge to main
                 ▼
  ┌────────────────────────────┐
  │ Release and Publish        │  Push to main → publish package.json version
  │ release.yml                │  to npm (OIDC) + GitHub Packages (skips if already published)
  └────────────────────────────┘
```

---

## 1. CI — `.github/workflows/ci.yml`

Runs on every push and pull request to `main`.

1. Checkout, setup Node 20, `npm ci`
2. `npm run format:check` — verify ReScript formatting
3. `npm run build` — compile all bindings

Concurrency cancels in-progress runs for the same ref.

---

## 2. Sync Bindings — `.github/workflows/sync-bindings.yml`

Regenerates bindings against a Blend version and opens a PR.

### Triggers
- **`schedule`** — daily at 03:00 UTC. Polls npm for the latest **stable** Blend
  (`npm view @juspay/blend-design-system version`); if it's newer than the version
  pinned in `package.json`, it regenerates and opens a PR. Otherwise it's a no-op.
- **`workflow_dispatch`** — manual run against a specific `blend_version`.

### Inputs (manual)
| Input | Description | Default |
|-------|-------------|---------|
| `blend_version` | Version spec to install (`latest`, `1.2.3`, …) | `latest` |
| `allow_prerelease` | Allow `-beta`/`-alpha`/`-rc` (testing only) | `false` |

### Steps
1. Checkout, setup Node 20, `npm ci`
2. (schedule) Poll npm; skip the rest if already on the latest stable
3. Install the target Blend version (`npm install --no-save`)
4. Resolve the installed version; **reject prereleases** unless `allow_prerelease=true`
5. Pin the version in `devDependencies`
6. `npm run generate -- --blend <v> --set-version` — deterministic regen + 1:1 version
7. `npm run build` to confirm green
8. Open a PR on branch `sync/blend-<version>` with `src/**`, `src/_REPORT.md`,
   `package.json`, `package-lock.json` and a reviewer checklist

### Rules
- ⚠️ If you set `allow_prerelease=true`, **do NOT merge** the resulting PR — testing only.

---

## 3. Release and Publish — `.github/workflows/release.yml`

Publishes on push to `main`. Replaces semantic-release.

### `test` job
Checkout, `npm ci`, `npm run build`, `npm run format:check`.

### `release` job (needs `test`)
1. Checkout (full history), setup Node 20, `npm ci`, build
2. **Decide whether to publish** — read `package.json` version; if that exact
   version is already on npm, skip (so chore/docs commits don't fail on a duplicate publish)
3. Tag `v<version>` and push
4. Publish to npm with `--provenance` (OIDC trusted publishing)
5. Publish to GitHub Packages (`npm.pkg.github.com`)

The published version **is** the Blend version (set by the sync PR). For a
binding-only re-release of an unchanged Blend version, bump with a `-N` suffix
(`0.0.36` → `0.0.36-1`) before merging.

---

## Non-Workflow Files

### `.github/CODEOWNERS`
Required reviewers — `@roshan84ya` for all files, with explicit entries for
`/src/**`, `/scripts/**`, `/.github/**`.

### `.github/dependabot.yml`
Weekly npm + GitHub Actions updates; **ignores `@juspay/blend-design-system`**
(handled by the sync workflow).

### `.github/ISSUE_TEMPLATE/`, `PULL_REQUEST_TEMPLATE.md`
Issue and PR templates.

---

## Secrets

No LLM or `NPM_TOKEN` secrets are required. Publishing uses **OIDC trusted
publishing** — `release.yml` exchanges its short-lived OIDC token with npm at
publish time. A trusted publisher must be configured on npmjs.com pointing at this
repo + `release.yml`. `GITHUB_TOKEN` (provided automatically) covers tagging and
GitHub Packages.
