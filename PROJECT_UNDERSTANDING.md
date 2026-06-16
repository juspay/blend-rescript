# Blend ReScript — Project Understanding & Current State

## Project Overview

**Blend ReScript** (`@juspay/rescript-blend`) provides fully typed, production-ready
ReScript bindings for [@juspay/blend-design-system](https://www.npmjs.com/package/@juspay/blend-design-system),
a TypeScript/React component library.

### Purpose
- Eliminates manual ReScript binding creation for Blend consumers
- Maintains type safety between the TS components and ReScript consumers
- Generates bindings **deterministically** — same Blend version → byte-identical output

---

## Architecture

### Package structure
```
blend-rescript/
├── src/                          # Generated ReScript bindings (.res → .js)
│   ├── [Component].res           # One file per component (Button, Accordion, …)
│   ├── [Component]Types.res      # Shared enums/unions, deduplicated per family
│   ├── CommonTypes.res           # Cross-component shared types (e.g. stringOrStringArray)
│   ├── HtmlAttrs.res             # Shared HTML-attribute record spreads
│   ├── BlendDesignSystemBindings.res  # Standalone function exports (token getters, …)
│   ├── _REPORT.md                # Per-component readiness (committed; review artifact)
│   ├── _bindgen-summary.json     # Machine-readable buckets (gitignored)
│   └── .bindgen-manifest.json    # Generator manifest (gitignored)
├── scripts/
│   └── generate.mjs              # Thin wrapper around @juspay/rescript-bindgen
├── rescript.json                 # ReScript compiler config (namespace: true, +101 as error)
└── package.json                  # 1:1 versioned with @juspay/blend-design-system
```

### Core technologies
- **ReScript 12** — compiles to JavaScript
- **@rescript/react** — React bindings; **rescript-webapi** — `Webapi.*` props (File/FileList)
- **@juspay/rescript-bindgen** — the deterministic TS→ReScript generator
- **Node.js ≥20**

### Generation flow
```
@juspay/blend-design-system .d.ts → rescript-bindgen → ReScript .res (+ _REPORT.md)
```
Deterministic, secret-free, contract-guaranteed: bindgen never fabricates a type
(no `Obj.magic` / `%identity`). Props it can't model precisely are **flagged**
(loosely typed or marked for review in `_REPORT.md`) rather than faked. There is no
LLM, no retry loop, and no `.failed.res` — a broken component fails the run outright.

---

## Binding patterns (as emitted by rescript-bindgen)

### Record props (components extending HTML attributes)
```rescript
type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitClassNameDisabledOnClickStyle,
  buttonType?: ButtonSharedTypes.buttonType,
  text?: string,
  disabled?: bool,
}
@module("@juspay/blend-design-system")
external make: React.component<props> = "Button"
```

### Labeled-args props
```rescript
@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~accordionType: AccordionTypes.accordionType=?,
  ~defaultValue: CommonTypes.stringOrStringArray=?,
) => React.element = "Accordion"
```

### Shared enums and unions (referenced qualified, never redeclared)
```rescript
// ButtonSharedTypes.res
type buttonType = @as("primary") Primary | @as("secondary") Secondary | ...

// CommonTypes.res
@unboxed type stringOrStringArray = Str(string) | StrArr(array<string>)
```

---

## Current inventory

For blend `0.0.36`: **94 components, 94 usable, 0 broken**, across **153** files,
with **1151** shared types deduplicated into **57** `*Types.res` modules, plus **50**
standalone function bindings. The authoritative, always-current snapshot is
`src/_REPORT.md` (regenerated on every `npm run generate`).

---

## Versioning & sync

- **1:1 versioning:** `@juspay/rescript-blend@X` = bindings for `@juspay/blend-design-system@X`.
  Binding-only re-release of an unchanged Blend version → `-N` suffix (`0.0.36` → `0.0.36-1`).
- **Sync:** `sync-bindings.yml` polls npm daily for a newer stable Blend, regenerates,
  and opens a version-bumped PR (also runnable manually). Merge to `main` → `release.yml`
  publishes that version. See `.github/GITHUB_WORKFLOWS.md`.

---

## Development commands

```bash
npm run build              # rescript compile
npm run watch              # watch mode
npm run format:check       # formatting gate (CI)
npm run generate           # regenerate bindings for the pinned Blend version
npm run generate -- --blend 0.0.36 --set-version   # bind a specific version, set 1:1 version
npm run generate -- --only Button                  # debug a single component
```

---

*Reflects the migration to deterministic generation via `@juspay/rescript-bindgen` (blend 0.0.36).*
