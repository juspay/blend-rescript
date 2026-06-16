# Contributing to blend-rescript

Thanks for helping keep the ReScript bindings for [`@juspay/blend-design-system`](https://github.com/juspay/blend-design-system) in sync. This guide covers the moving parts you'll need to know.

## Setup

```bash
nvm use              # uses .nvmrc → Node 20
npm install
npm run build        # rescript compile; should be green before any commit
```

## Generating bindings

Bindings are generated **deterministically** from the upstream TypeScript declarations by [`@juspay/rescript-bindgen`](https://www.npmjs.com/package/@juspay/rescript-bindgen). The thin wrapper `scripts/generate.mjs` drives it. There are **no secrets, no `.env`, and no network LLM calls** — the same Blend version always produces byte-identical output.

### Regenerating everything

```bash
# Bind the Blend version pinned in package.json (devDependencies)
npm run generate

# Bind a specific version, and set package.json version to match (1:1)
npm run generate -- --blend 0.0.36 --set-version
```

### Debugging one component

```bash
npm run generate -- --only Button
```

### Calling the CLI directly (`generate:raw`)

`npm run generate` is a thin wrapper (`scripts/generate.mjs`) that resolves the version, runs the CLI, formats, and gates on broken components. To see/run the underlying [`@juspay/rescript-bindgen`](https://www.npmjs.com/package/@juspay/rescript-bindgen) command with nothing in between:

```bash
npm run generate:raw
```

which is exactly:

```bash
rescript-bindgen --pkg @juspay/blend-design-system --node-modules ./node_modules --no-install \
  --out src --project . --webapi --report --json-summary src/_bindgen-summary.json --clean --yes
```

It binds the locally-installed (pinned) Blend version with no network. Note it does **not** run `rescript format` or the broken-component gate afterward — run `npm run format` yourself, or just use `npm run generate`, before committing.

### Output

Each run writes the `*.res` bindings into `src/`, plus:
- `src/_REPORT.md` — per-component readiness (committed; a review artifact).
- `src/_bindgen-summary.json` and `src/.bindgen-manifest.json` — run scratch (gitignored).

The wrapper formats the output (`rescript format`) and **fails the run if any component is flagged broken** (the deterministic replacement for the old `.failed.res` check).

## Syncing with upstream — 1:1 versioning

`@juspay/rescript-blend@X` ships the bindings for `@juspay/blend-design-system@X`; the version numbers match. A binding-only re-release for an unchanged Blend version uses a `-N` suffix (`0.0.36` → `0.0.36-1`).

The workflow `sync-bindings.yml`:

- Runs **daily on a schedule** — polls npm for a newer **stable** Blend version and, if found, regenerates and opens a PR with the matching version bump. Stable releases are fully automatic; just review and merge the PR.
- Also runs manually via `Actions → Sync bindings with upstream blend → Run workflow` for a specific version.
- Refuses prerelease versions (`-beta`, `-alpha`, `-rc`) on the auto path; you must tick `allow_prerelease` to sync one.

### Cutting a beta release (manual)

Betas are **on-demand**, not automatic:

1. `Actions → Sync bindings with upstream blend → Run workflow`.
2. Set `blend_version` to the beta (e.g. `0.0.37-beta.6`, or `beta` for the current beta dist-tag).
3. Tick **`allow_prerelease`**.
4. Review the generated PR and **merge it** — merging is expected for betas.

On merge, `release.yml` publishes it under the npm **`beta`** dist-tag, so it never moves `latest`. Consumers opt in with `npm install @juspay/rescript-blend@beta`; a plain `npm install` still resolves to the newest stable.

## Release flow

Merging a sync PR to `main` runs `release.yml`, which publishes the `package.json` version (= Blend version) to npm with OIDC provenance and to GitHub Packages. The dist-tag is derived from the version: **stable → `latest`, prerelease → `beta`**. It tags `v<version>` and **skips publishing if that version is already on npm**, so chore/docs commits don't trigger a duplicate-publish failure. (No semantic-release.)

## Checklist before opening a PR

- [ ] `npm run build` green
- [ ] `npm run format:check` green
- [ ] `src/_REPORT.md` shows 0 broken components
- [ ] If bindings changed, reviewed diff against upstream
- [ ] Version = Blend version (use a `-N` suffix only for a binding-only re-release)
