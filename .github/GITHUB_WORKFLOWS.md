# GitHub Workflows & Processes — blend-rescript

This document explains every workflow, automation, and governance file in the `.github/` directory.

---

## Overview: Workflow Interaction Map

```
                         ┌──────────────┐
                         │   CI (auto)  │  Every push/PR to main
                         │  ci.yml      │  → Build + format check
                         └──────┬───────┘
                                │
    ┌───────────────────────────┼──────────────────────────────┐
    │                           │                              │
    ▼                           ▼                              ▼
┌──────────────┐      ┌──────────────┐               ┌──────────────┐
│  Sync (manual)│     │ Release Mirror│               │  Dependabot  │
│ sync-bindings │     │ (manual)      │               │  (auto)      │
│     .yml      │     │ release-mirror│               │ dependabot   │
└──────┬───────┘     │     .yml      │               │   .yml       │
       │             └──────┬────────┘               └──────────────┘
       │ Creates PR         │ Creates Release
       │ from sync/         │   → triggers
       ▼                    ▼
┌──────────────┐      ┌──────────────┐
│ PR Preview   │      │ Publish NPM  │
│ (auto)       │      │ (auto)       │
│ pkg-pr-new   │      │ publish-npm  │
│     .yml     │      │     .yml     │
└──────────────┘      └──────────────┘
```

---

## 1. CI — `.github/workflows/ci.yml`

### What It Does
Runs on every push and pull request to `main`. Validates that the codebase compiles cleanly and follows formatting rules.

### Trigger
- **Push** to `main`
- **Pull request** targeting `main`

### Steps
1. Checkout code
2. Setup Node.js 20
3. `npm ci` — install exact dependencies
4. `npm run format:check` — verify ReScript formatting
5. `npm run build` — compile all ReScript bindings
6. Fail if any `src/*.failed.res` files exist

### When to Use
**Automatic.** You don't trigger this — it runs on every PR and push. It's your safety net to ensure no broken code lands on `main`.

### Concurrency
Cancels in-progress runs for the same branch/ref. If you push a new commit to a PR, the previous CI run is cancelled.

---

## 2. Sync Bindings — `.github/workflows/sync-bindings.yml`

### What It Does
Manually triggered workflow that regenerates ReScript bindings against a specific version of `@juspay/blend-design-system` and opens a PR with the changes.

### Trigger
**Manual only** — `Actions → Sync bindings with upstream blend → Run workflow`

### Inputs
| Input | Description | Default | Required |
|-------|-------------|---------|----------|
| `blend_version` | Version spec to install (e.g., `"latest"`, `"1.2.3"`, or a pkg.pr.new URL) | `latest` | No |
| `allow_prerelease` | Allow `-beta`/`-alpha`/`-rc` versions | `false` | No |

### Steps
1. Checkout code
2. Setup Node.js 20, install dependencies (`npm ci`)
3. Install the target blend version (`npm install --no-save`)
4. Resolve and verify the installed version
5. **Reject prerelease versions** unless `allow_prerelease=true`
6. Regenerate all bindings using AI (`npm run generate -- --all`)
7. Build to confirm green compilation
8. Pin the blend version in `dependencies` (stable releases only)
9. Open a PR on branch `sync/blend-<version>` with reviewer checklist

### When to Use
- When `@juspay/blend-design-system` publishes a **new stable release** and you want to update bindings
- When you want to test against a **beta/prerelease** version (set `allow_prerelease=true`)
- When you want to test against a **pkg.pr.new URL** from an unmerged blend PR

### Important Rules
- ⚠️ If you tick `allow_prerelease=true`, **do NOT merge** the resulting PR — it's for testing only
- The PR branch follows the pattern `sync/blend-<version>`, which triggers the `pkg-pr-new` workflow for preview publishing

### Output
A pull request with:
- Regenerated `src/*.res` files
- Updated `package.json` and `package-lock.json` (pinned blend version)
- Reviewer checklist and preview install instructions

---

## 3. Release Mirror — `.github/workflows/release-mirror.yml`

### What It Does
The **primary release workflow**. It mirrors a `@juspay/blend-design-system` release by optionally regenerating bindings, version-bumping this package, and publishing to npm. It includes a safety-net that detects API changes even when you say "no regeneration needed."

### Trigger
**Manual only** — `Actions → Release mirror → Run workflow`

### Inputs
| Input | Description | Required | Options |
|-------|-------------|----------|---------|
| `blend_version` | Blend version or pkg.pr.new URL to pin (e.g., `"0.0.36"` or `https://pkg.pr.new/...`) | Yes | — |
| `regenerate` | Regenerate bindings? Pick "yes" if blend changed any public API. Pick "no" for internal fixes, perf, CSS, or docs. | Yes | `yes` / `no` |

### Steps

#### Phase 1: Baseline & Diff
1. Checkout code (full history)
2. Install baseline blend version (`npm ci`)
3. Snapshot baseline `.d.ts` files to `/tmp/baseline/`
4. Pin blend to the requested version
5. Snapshot new `.d.ts` files to `/tmp/new/`
6. **Compute `.d.ts` diff** — objectively detects if the API actually changed

#### Phase 2: Safety-Net Gate
If `regenerate=no` but the diff detects API changes:

7. **Correction path** — regenerates bindings anyway
8. **Opens a correction PR** (branch: `correction/blend-<version>`) with the regenerated code
9. **Fails the run** — prevents accidental publishing without updated bindings

#### Phase 3: Happy Path
If `regenerate=yes`, or `regenerate=no` with no API changes:

10. **Regenerate bindings** (if `regenerate=yes`) — warns if no diff detected (unnecessary regen)
11. **Compile gates** — format check + build
12. **Compute target version** — mirrors blend version 1:1, or creates `-preview.<sha>` for pkg.pr.new URLs
13. **Bump package version** to match
14. **Commit and tag** — pushes `v<version>` tag to main
15. **Create GitHub Release** — this triggers `publish-npm.yml`
16. **Publish preview to pkg.pr.new** — only for `-preview.` versions

### Version Mirroring Logic
| Input `blend_version` | Output `@subham_/rescript-blend` version |
|---|---|
| `0.0.36` (stable) | `0.0.36` |
| `https://pkg.pr.new/@juspay/blend-design-system@abc1234` | `<current>-preview.abc1234` |

### When to Use
- **Stable blend release** → use `regenerate=yes` (or `no` if you're certain only internal things changed)
- **Testing a pkg.pr.new URL** → use `regenerate=yes` to get a preview package
- This is the **one-stop shop** for going from "blend released" to "npm published"

### Safety Features
- If you say "no regen needed" but the API actually changed, the workflow **stops and opens a correction PR** instead of publishing stale bindings
- If you say "yes regen" but nothing changed, it warns you but proceeds anyway

---

## 4. Publish to NPM — `.github/workflows/publish-npm.yml`

### What It Does
Publishes the package to the npm registry. Triggered automatically when a GitHub Release is created (typically by the release-mirror workflow).

### Trigger
- **Release published** (GitHub Release event)
- **Manual dispatch** with dry-run option

### Inputs (manual dispatch only)
| Input | Description | Default |
|-------|-------------|---------|
| `dry_run` | Dry run (no publish) | `true` |

### Steps
1. Checkout code
2. Setup Node.js 20 with npm registry
3. `npm ci` + `npm run build`
4. Check for `.failed.res` files (refuse to publish)
5. Verify version matches release tag (e.g., tag `v0.1.5` must match `package.json` version `0.1.5`)
6. Check if version already published on npm (skip if so)
7. **Publish** with `--access public --provenance` (or dry-run)

### When to Use
- **Automatic**: triggered by GitHub Release creation (from release-mirror workflow)
- **Manual dry-run**: use `workflow_dispatch` with `dry_run=true` to verify what would be published without actually publishing

### Provenance
The `--provenance` flag creates a signed link between the npm package and the GitHub Actions run, providing supply chain security.

---

## 5. PR Preview Publish — `.github/workflows/pkg-pr-new.yml`

### What It Does
Auto-publishes a preview package for PRs originating from `sync/` branches, allowing developers to test updated bindings in their consumer projects without publishing to npm.

### Trigger
- **Pull request** to `main` where the source branch starts with `sync/`
- Types: `opened`, `synchronize`, `reopened`

### Steps
1. Checkout code
2. Setup Node.js 20, install dependencies
3. Build
4. Check for `.failed.res` files (refuse to preview)
5. Publish preview via `npx pkg-pr-new publish`
6. Comment install instructions on the PR (updates existing comment on re-push)

### When to Use
**Automatic.** Whenever a sync PR is created (from `sync-bindings.yml`), this workflow publishes a preview package. Developers install it via:

```bash
# Using npm
npx pkg-pr-new@latest install @subham_/rescript-blend@<PR_NUMBER>

# Using yarn
yarn add https://pkg.pr.new/@subham_/rescript-blend@<PR_NUMBER>
```

### Concurrency
Cancels previous preview runs for the same PR on new pushes.

### Important Notes
- Only runs for PRs from `sync/` branches — chore PRs, feature PRs, etc. are excluded
- Preview packages from `pkg.pr.new` are **ephemeral** — they auto-expire and should never be used in production
- The bot comment on the PR updates on each push (no duplicate comments)

---

## Non-Workflow Files

### `.github/CODEOWNERS`
Defines who is required to review changes:
- **All files**: `@roshan84ya`
- **`/src/**`**: `@roshan84ya` (binding changes)
- **`/scripts/**`**: `@roshan84ya` (generation scripts)
- **`/.github/**`**: `@roshan84ya` (CI infrastructure)

### `.github/dependabot.yml`
Configures automated dependency updates:
- **npm**: Weekly on Monday, max 5 PRs, **ignores `@juspay/blend-design-system`** (handled by sync workflow instead)
- **GitHub Actions**: Weekly on Monday, max 5 PRs

### `.github/PULL_REQUEST_TEMPLATE.md`
Standard template for pull request descriptions.

### `.github/ISSUE_TEMPLATE/binding-out-of-sync.md`
Template for reporting bindings that are out of sync with the upstream design system.

### `.github/ISSUE_TEMPLATE/bug_report.md`
Template for reporting bugs in the ReScript bindings.

---

## Complete Workflow Decision Tree

```
You want to...
│
├── ...update bindings for a new blend release
│   → Use: Release Mirror (release-mirror.yml)
│   → Set: blend_version = "0.0.36", regenerate = "yes"
│   → Result: Bindings regenerated, version bumped, npm published
│
├── ...update bindings but blend only had internal changes
│   → Use: Release Mirror (release-mirror.yml)
│   → Set: blend_version = "0.0.37", regenerate = "no"
│   → Result: Version bumped, npm published (safety-net catches API changes)
│
├── ...test bindings against a beta/prerelease blend
│   → Use: Sync Bindings (sync-bindings.yml)
│   → Set: blend_version = "0.0.38-beta", allow_prerelease = true
│   → Result: PR with regenerated bindings + pkg.pr.new preview
│   → DO NOT merge the PR
│
├── ...test bindings against an unmerged blend PR (pkg.pr.new URL)
│   → Use: Sync Bindings (sync-bindings.yml)
│   → Set: blend_version = "https://pkg.pr.new/@juspay/blend-design-system@abc123", allow_prerelease = true
│   → Result: PR with regenerated bindings + pkg.pr.new preview
│   → DO NOT merge the PR
│
├── ...quickly test locally without GitHub
│   → Use: ./scripts/test-local.sh --blend-version <version> --component <name>
│   → Or:  ./scripts/test-local.sh --blend-version <version> --all
│   → Result: Local tarball for install in consumer project
│
├── ...publish to npm (manual override)
│   → Use: Publish NPM (publish-npm.yml)
│   → Set: dry_run = "true" first, then "false" to actually publish
│   → Result: Package published to npm
│
└── ...just verify the build is green
    → CI runs automatically on every push/PR
    → No action needed
```

---

## Secrets Required

These secrets must be configured in GitHub Settings → Secrets and variables → Actions:

| Secret | Used By | Purpose |
|--------|---------|---------|
| `LITELLM_BASE_URL` | `sync-bindings.yml`, `release-mirror.yml` | LLM API endpoint for binding generation |
| `LITELLM_API_KEY` | `sync-bindings.yml`, `release-mirror.yml` | LLM API key for binding generation |
| `TEST_KEY` | `sync-bindings.yml`, `release-mirror.yml` | Test key for NeuroLink |

`publish-npm.yml` uses **OIDC trusted publishing** instead of a long-lived token. No `NPM_TOKEN` secret is required; the workflow exchanges its short-lived OIDC token with npm at publish time. The package must have a trusted publisher configured on npmjs.com pointing at this repo + `publish-npm.yml` + the `npm` environment.

---

*Document Generated: 2026-04-23*