# Figma Code Connect (ReScript)

Maps Blend Design System Figma components to this repo's `RescriptBlend`
bindings, for two different consumers built from **one shared data source**
per component (`figma/componentMaps/<Component>.mjs`):

1. **Local Code Connect template files** (`<Component>.figma.ts`) --
   resolved live by Figma's Dev Mode MCP server when a developer selects a
   connected component in Figma Desktop. Nothing here is published/pushed to
   Figma's servers.
2. **Generated ReScript modules** (`src/Figma/<Component>CodeConnect.res`,
   published as part of `@juspay/rescript-blend`) -- for consumers that
   aren't running inside Figma's Code Connect resolver, e.g. a standalone
   Figma *plugin* (like juspay-portal's `apps/code-connect`) that already
   extracts `componentProperties` itself and just wants the RescriptBlend
   rendering logic, without hand-copying property-mapping tables into
   another repo.

Figma's Code Connect `label` field has a fixed set of values (React, Vue,
Swift, Compose, ...) with no "ReScript" option, so if/when the template
files get pushed via `add_code_connect_map`, they'll surface under a
"Javascript" tab in Figma's Inspect panel, alongside the existing React
mapping. This doesn't affect the generated ReScript modules.

**No Figma URLs/file keys/node-ids in this repo.** This repo is public
(`@juspay/rescript-blend` on npm/GitHub). Real Figma file URLs, file keys,
and node-ids are internal identifiers and must never be committed here --
not in a componentMap, not in a `.figma.ts` header comment, not in this
README. Keep them in your own local notes while you work; only the
*property-mapping knowledge* (property names, variant values -- not which
file/node they came from) belongs in the committed maps.

## Files

- `figma/componentMaps/<Component>.mjs` -- **single source of truth** per
  component: `figmaComponentName` (the Figma component/component-set's
  display name -- also doubles as the "is this map ready" signal for the
  codegen script), then per-prop Figma property names, their kind
  (`string`/`bool`/`enum`/`instanceSwap`), and (for `enum`) the Figma-value
  -> ReScript-expression table. A prop can also be
  `{ mapped: false, reason: '...' }` to record a deliberate "don't connect
  this" decision (see "Rejecting a prop" below). Pure data, zero imports
  (not even from `figma`), so it can be loaded by plain Node (the codegen
  and drift-check scripts) as well as bundled into a `.figma.ts` template.
- `figma/mapper.mjs` -- tiny rendering primitives (`strAttr`, `identAttr`,
  `boolAttr`, `exprAttr`) shared by `engine.mjs`.
- `figma/engine.mjs` -- generic Code Connect template runtime:
  `renderFromMap(instance, map)` reads a live Figma instance per the map's
  property definitions and renders RescriptBlend JSX. Limitation: at most 3
  `instanceSwap`-kind props per component (nested instances need real
  `figma.code` interpolation, which needs a fixed number of template slots
  -- raise the limit in `engine.mjs` if a component needs more).
- `figma/<Component>.figma.ts` -- thin per-component template, just
  `renderFromMap(figma.selectedInstance, <Component>Map)`. No per-component
  boilerplate.
- `scripts/generate-figma-code-connect.mjs` -- reads every
  `figma/componentMaps/*.mjs` and emits `src/Figma/<Component>CodeConnect.res`
  exporting `fromFigmaProps: CodeConnectUtils.figmaProps => string`. Only
  `string`/`bool`/`enum` props are covered -- `instanceSwap` props are
  listed in a comment in the generated file (they need a live Figma
  instance to resolve nested code, which static codegen can't do).
- `src/Figma/CodeConnectUtils.res` -- **hand-written**, not regenerated:
  generic `figmaProps` array plumbing shared by every generated
  `*CodeConnect.res` module.
- `scripts/check-figma-map-drift.mjs` -- CI check (Drift A, see below):
  catches the code-side prop drift, not Figma-side renames.

Run `npm run figma:generate` after editing any `componentMaps/*.mjs` file,
then `npm run build` to verify the generated ReScript compiles.

## Drift, and what's automated vs. not

Two independent ways a `componentMaps/<Component>.mjs` can go stale, from
the PR #128 review:

- **Drift A (code side)** -- Blend ships a new/removed prop, `npm run
  generate` regenerates `src/*.res`, and the map now has a hole nothing
  notices. **Automated**: `npm run figma:check-drift`
  (`scripts/check-figma-map-drift.mjs`) re-scaffolds every component into a
  temp dir and diffs its prop-key set against the committed map, reporting
  e.g. "Button gained prop(s): fullWidth". Runs in CI (`.github/workflows/ci.yml`)
  on every push/PR to `main`. No secrets, no network, no human -- pure
  local diff, reusing the scaffolder rather than a second parser.
- **Drift B (Figma side)** -- a designer renames a property (`Button Type`
  -> `Type`) or a variant value (`SMALL` -> `Small`). Nothing currently
  notices: `getStringProp`/`getEnum` return `None`, the prop silently
  vanishes from the rendered snippet, and the build stays green. **Not yet
  automated.** The MCP tools used to build the verified part of this PR
  (`get_code_connect_map`, Dev Mode Inspect) are Desktop/interactive-only
  and can't run in CI. The real fix is the Figma REST API
  (`GET /v1/files/:key/nodes?ids=...` -- `COMPONENT_SET` nodes return
  `componentPropertyDefinitions`, machine-readable real property
  names/variant values), polled on a cron the same way `sync-bindings.yml`
  polls npm, opening a PR on drift (never auto-merging) rather than
  silently fixing it -- a human still confirms the semantic call, same
  posture as `sync-bindings.yml`. **Deliberately not built yet**: it needs
  a Figma API token in CI, which breaks this pipeline's current
  no-secrets/no-network property, and that's a tradeoff worth a deliberate
  decision rather than sliding into. If/when it happens, keep it in a
  separate workflow from binding generation so the deterministic path
  stays secret-free -- and since this repo can't hold real Figma node-ids
  (see above), the component-name -> node-id mapping that poll would need
  has to live somewhere private, not in a committed `componentMaps/*.mjs`.

### Rejecting a prop

If a human decides a Figma property genuinely has no valid code
correspondence (e.g. `State`/Hover-Active being visual QA scaffolding, not
a real controlled prop), record that as
`propName: { mapped: false, reason: '...' }` in the map -- don't delete the
key. `engine.mjs`, `generate-figma-code-connect.mjs`, and
`check-figma-map-drift.mjs` all treat `mapped: false` as "known, already
decided" and won't re-flag or re-render it. Deleting the key instead looks
identical to "never scaffolded" and will keep getting flagged by the drift
check.

## Consuming from another repo (e.g. juspay-portal's Figma plugin)

Add `@juspay/rescript-blend` as a dependency, then call the generated
module directly -- e.g. in juspay-portal's `entry.res`, in place of a
hand-written `ButtonUtils.res`-style converter:

```rescript
| "Buttons" =>
  (
    [(RescriptBlend.ButtonCodeConnect.fromFigmaProps(componentProps), "", "")],
    "",
  )
```

(exact wiring depends on how the calling code assembles its output --
`fromFigmaProps` returns a ready-to-embed `<Button ... />` string given the
same `(propName, propValue)` array shape the plugin already extracts via its
own `componentProperties` handling.) `leadingIcon`/`trailingIcon` aren't in
that string (see the generated file's header comment) -- splice them in at
the call site if the plugin has its own way to resolve nested icon
instances.

## Scaffolding all components

`scripts/scaffold-figma-component-maps.mjs` generates a starter
`figma/componentMaps/<Component>.mjs` for every "usable" component in
`src/_REPORT.md` (currently 211; 209 scaffold cleanly, 2 -- `ChartV2Legend`,
`StatCardV2` -- don't match either recognized `.res` shape and are skipped
rather than guessed at), using ONLY our own generated ReScript bindings
(prop names, kinds, and -- for simple no-payload variant props -- the
code-side constructor names, e.g. `size` -> `CheckboxTypes.Sm`/`Md`). It
does not know or guess any Figma-side property name; every scaffold ships
with `figmaComponentName: null` and `figmaProp: null` / `TODO_FIGMA_KEY`
placeholders. Props whose type it
can't confidently classify (event handlers, payload-carrying variants,
generic `React.element` slots that aren't icon-shaped) are commented out
with a reason instead of guessed.

```bash
node scripts/scaffold-figma-component-maps.mjs              # scaffold everything not already present
node scripts/scaffold-figma-component-maps.mjs --only Checkbox,Alert
node scripts/scaffold-figma-component-maps.mjs --force      # re-scaffold, overwriting existing maps
node scripts/scaffold-figma-component-maps.mjs --out-dir /tmp/x --force   # scaffold elsewhere (used by check-figma-map-drift.mjs)
```

**`--force` overwrites unconditionally, including already-verified maps
(like `Button.mjs`) -- don't run it repo-wide once real Figma data exists
in a map.** Prefer scoping `--force` with `--only` to specific components,
or just delete the one scaffold you want to regenerate and re-run without
`--force`.

`scripts/generate-figma-code-connect.mjs` skips any map whose
`figmaComponentName` is still `null` -- it will never emit ReScript from an
unverified scaffold, so `npm run figma:generate` is always safe to run
across all of `componentMaps/` even while most are still TODOs.

## Finishing a scaffolded component

1. Open `figma/componentMaps/<Component>.mjs` -- everything ReScript-side
   is already filled in.
2. Get a Figma URL with `node-id` for a real instance of the component --
   keep the URL itself in your own local notes, don't paste it into any
   committed file (see "No Figma URLs" above).
3. Use `get_code_connect_map` (works on instance nodes, resolves to the
   existing React mapping if one exists -- this is how `Button.mjs`'s real
   data was found) or `get_context_for_code_connect` on the pristine
   component/component-set node (if reachable), or Figma Desktop's Dev Mode
   Inspect panel, to find the real property names and variant option
   labels.
4. Fill in `figmaComponentName` and every `figmaProp` / `TODO_FIGMA_KEY` you
   can confirm. Leave anything unconfirmed as `null` rather than guessing --
   `figma:generate` treats a map with no `figmaComponentName` as not-ready,
   but once that's set, a partially-filled prop table still generates for
   whatever IS filled in (any prop still `null`/missing a value just
   renders as an omitted attr). If you've checked a prop and concluded it
   genuinely shouldn't connect to Figma, mark it
   `{ mapped: false, reason: '...' }` rather than leaving it `null` forever
   or deleting it (see "Rejecting a prop" above).
5. Write `figma/<Component>.figma.ts` (one line:
   `export default renderFromMap(figma.selectedInstance, <Component>Map)`,
   see `Button.figma.ts`).
6. Run `npm run figma:generate && npm run build`.
7. Verify live in Figma Desktop (Dev Mode + MCP server connected) against a
   real instance before considering it done.

## Known gap: Button

None of `componentMaps/Button.mjs`'s property names have been confirmed
against the actual "Buttons" component-set property panel (only an instance
node was reachable via the available tools -- see the file's header comment
for exactly what's evidenced vs. guessed). Two confidence tiers, both need
verification in Figma Desktop before relying on this:

- **High confidence** (`Text`, `Button Type`, `Size`, `Sub Type`,
  `Disabled`, `Left Icon`/`Right Icon`) -- directly evidenced by the
  existing React Code Connect mapping's resolved snippet on this node.
  Verified end-to-end: `npm run figma:generate && npm run build` compiles
  cleanly, and calling `ButtonCodeConnect.fromFigmaProps` with this node's
  known real values reproduces the expected `<Button .../>` string.
- **Low confidence** (`Group Position`, `State`, `Loading`, `Show Skeleton`,
  `skeletonVariant`, `fullWidth`, `justifyContent`) -- inferred purely from
  `ButtonTypes.buttonProps` existing in the ReScript binding, with no
  Figma-side evidence at all. These may not exist as properties on the
  component, may be named differently, or (for `State`) may not have a
  valid code correspondence even if present -- if you confirm one doesn't,
  mark it `{ mapped: false, reason: '...' }` rather than leaving it
  perpetually pending.

Not mappable at all (payload-carrying or code-only, no scaffold entry
possible): `width`, `onClick`, `ref`.

Scaling this to the other 208 scaffolded components needs the Blend Design
System library's own Figma file (not a file that merely *uses* the
library) so `list_file_components_for_code_connect` can enumerate real
properties in bulk instead of confirming one component at a time -- see
"Drift B" above for the same access problem in the CI-automation context.
