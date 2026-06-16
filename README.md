# ReScript Blend Design System

Fully typed, production-ready ReScript bindings for [@juspay/blend-design-system](https://www.npmjs.com/package/@juspay/blend-design-system).

This package bridges the Blend Design System (authored in React/TS) and your ReScript codebase by exposing strict, type-safe interfaces for the components. The bindings are generated **deterministically** from Blend's shipped TypeScript declarations by [@juspay/rescript-bindgen](https://www.npmjs.com/package/@juspay/rescript-bindgen) — no hand-editing, no AI, no guesswork.

## 📦 Installation

```bash
npm install @juspay/rescript-blend @juspay/blend-design-system
```

`@juspay/blend-design-system` is a **peer dependency** — install the version that matches this package (see versioning below). You also need the ReScript compiler (`rescript >= 12.0.0`) and `@rescript/react` to compile the bindings.

> **1:1 Versioning**
> `@juspay/rescript-blend@X` ships the bindings for `@juspay/blend-design-system@X` — the version numbers match exactly. To find the right Blend version for a release, just read this package's version. A binding-only re-release for an unchanged Blend version (e.g. a generator upgrade) uses a `-N` suffix: `0.0.36` → `0.0.36-1`.

> **Note:** This package ships ReScript source files (`.res`/`.resi`) only. The matching `.js` is emitted by your own ReScript build.

## ⚙️ Configuration

In your project's `rescript.json`, add `@juspay/rescript-blend` to `dependencies`:

```json
{
  "dependencies": [
    "@rescript/react",
    "rescript-webapi",
    "@juspay/rescript-blend"
  ]
}
```

`rescript-webapi` is required because some component props are typed with `Webapi.*` (e.g. `File` / `FileList`).

## 🚀 Usage

All modules are namespaced under `RescriptBlend`. Access them with qualified names or `open` the module. Components come in two shapes depending on their upstream signature:

- **Record props** (components that extend HTML attributes, e.g. `Button`) — props are a record type spread from `HtmlAttrs`.
- **Labeled args** (e.g. `Accordion`, `Alert`) — props are labeled arguments.

Both are written the same way in JSX:

```rescript
@react.component
let make = () => {
  open RescriptBlend

  <Accordion isMultiple=true defaultValue={CommonTypes.Str("panel-1")}>
    <Button text="Continue" buttonType=ButtonSharedTypes.Primary disabled=false />
  </Accordion>
}
```

Shared enums and union types live in dedicated modules (`ButtonSharedTypes`, `AccordionTypes`, `CommonTypes`, …) and are referenced qualified, e.g. `ButtonSharedTypes.Primary` or `CommonTypes.Str("panel-1")`.

### Sub-components

Sub-components are exposed as their own top-level modules (the generator flattens the export surface), e.g. `AccordionItem`:

```rescript
open RescriptBlend

<Accordion>
  <AccordionItem value="1" title="Title"> {React.string("Content")} </AccordionItem>
</Accordion>
```

The exact prop surface for every component is the source of truth — read the component's `.res` file under `src/`. `src/_REPORT.md` lists every component, its readiness, and any props that were loosely typed or flagged.

## 🔧 Generation (maintainers)

Bindings are generated deterministically — the same Blend version always produces byte-identical output, with no secrets or network LLM calls.

```bash
# Bind the Blend version pinned in package.json
npm run generate

# Bind a specific version (and set package.json version to match, 1:1)
npm run generate -- --blend 0.0.36 --set-version

# Debug a single component
npm run generate -- --only Button
```

This wraps the `@juspay/rescript-bindgen` CLI, writes `src/_REPORT.md` (per-component readiness) alongside the bindings, formats the output, and fails if any component is flagged broken.

New Blend releases are picked up automatically: a daily scheduled job (`.github/workflows/sync-bindings.yml`) polls npm for a newer **stable** Blend version, regenerates, and opens a PR with the matching version bump for review. Merging to `main` publishes that version (`.github/workflows/release.yml`).
