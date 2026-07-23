# Figma Code Connect (ReScript)

Maps Blend Design System Figma components to this repo's `RescriptBlend`
bindings. **blend-design-system is the sole source of truth** -- this repo
does not hand-maintain Figma property knowledge. Every component that
blend-design-system has already published a `*.figma.tsx` Code Connect file
for (github.com/juspay/blend-design-system) gets its mapping **synced
automatically**; nothing here is guessed, and nothing needs re-verifying by
hand once synced.

Two consumers are built from **one shared data source** per component
(`figma/componentMaps/<Component>.mjs`):

1. **Local Code Connect template files** (`<Component>.figma.ts`) -- resolved
   by an AI coding assistant with the Figma Dev Mode MCP server connected
   (give it a Figma link; it reads the matching template + live design
   context together). Nothing here is published/pushed to Figma's servers.
2. **Generated ReScript modules** (`src/Figma/<Component>CodeConnect.res`,
   published as part of `@juspay/rescript-blend`) -- for consumers that
   aren't running inside that resolver, e.g. a standalone Figma *plugin*
   (like juspay-portal's `apps/code-connect`) that already extracts
   `componentProperties` itself and just wants the RescriptBlend rendering
   logic, without hand-copying property-mapping tables into another repo.

**No Figma URLs/file keys/node-ids in this repo.** This repo is public
(`@juspay/rescript-blend` on npm/GitHub). Real Figma file URLs, file keys,
and node-ids are internal identifiers and must never be committed here.

## The primary workflow: sync from blend-design-system

```bash
GITHUB_TOKEN=$(gh auth token) npm run figma:sync   # token optional, raises the GitHub API rate limit
npm run figma:generate
npm run build
```

`npm run figma:sync` (`scripts/sync-figma-code-connect.mjs`):

1. Lists every `*.figma.tsx` file in `github.com/juspay/blend-design-system`
   (GitHub tree API; public repo, no auth needed, though `GITHUB_TOKEN` in
   the environment raises the otherwise-tight unauthenticated rate limit).
2. **Parses** each one's `figma.connect(...)` call with the real TypeScript
   compiler API (`scripts/shared/parse-figma-tsx.mjs`) -- not regex, since
   these are hand-written by different people over time with real
   structural variety, unlike our own machine-generated `.res` files. Key
   subtlety it handles: the `props: {...}` object's keys are just local
   variable names the file's author chose for the `example` callback's
   destructured parameters -- the *real* prop name is whatever JSX
   attribute is used inside `example`'s returned `<Component .../>`. E.g.
   Button's file maps `props: { leftIcon: figma.boolean('hasLeftIcon', ...) }`
   but the real prop is `leadingIcon`, from `<Button leadingIcon={leftIcon} />`.
3. Cross-references the result against **our own** generated
   `src/<Component>.res` (`scripts/shared/rescript-component-parser.mjs`, the
   same classifier `scripts/scaffold-figma-component-maps.mjs` uses) to
   resolve enum values into real ReScript constructors -- matched by bound
   string value (Figma `"primary"` <-> `@as("primary") Primary`), never by
   parsing blend's React enum member names, which we never need to
   understand at all.
4. Writes `figma/componentMaps/<Component>.mjs` -- **fully generated, never
   hand-edited**. If blend's mapping is wrong, the fix belongs in
   blend-design-system, then re-run the sync here.

If blend maps a prop we don't have, or an enum value with no ReScript
equivalent (e.g. Button's Figma-only `"plainIcon"`), it's silently omitted,
never invented. Every other classifiable prop on our side that blend's file
doesn't cover gets `mapped: false` with a reason, so re-running never
re-flags it (see "Rejecting a prop" below).

A component with no upstream `.figma.tsx` simply has no Code Connect here
either -- that's correct, not a gap to fill by hand. As of this writing, 18
of 28 blend-design-system `.figma.tsx` files sync cleanly end-to-end
(`Button`, `ButtonGroup`, `AvatarGroup`, `Charts`, `Popover`, `Radio`,
`StatCard`, `SplitTag`, `Tag`, and the `TextInput` family) -- the other 10
hit real parser limits, not data problems (see "Parser limitations" below).

**Runs on a schedule** (`.github/workflows/sync-figma-code-connect.yml`,
weekly) and opens a PR when blend's mappings change -- same posture as
`sync-bindings.yml`: never auto-merges, a human confirms the semantic call.

### Parser limitations (why 10 of 28 don't sync yet)

- **Complex JSX attribute values** -- the parser only resolves a JSX
  attribute whose value is a single identifier reference back to a
  destructured `props:` local (e.g. `text={text}`). Ternaries, member
  access, function calls, and hardcoded string literals in the `example`
  JSX are left unresolved for that one prop (not the whole component).
- **`...ComponentTypes.componentProps`-style spreads** -- some
  bindgen-generated `.res` files (e.g. `Switch.res`) define their real
  props entirely in a separate `*Types.res` type alias and just spread it
  in, rather than inlining fields directly. `scripts/shared/rescript-component-parser.mjs`
  doesn't follow that spread yet, so components shaped this way look like
  they have no props at all -- a real improvement opportunity, not
  attempted here.
- **Multiple components in one file** -- not handled; the parser looks for
  exactly one `figma.connect(...)` call.

None of these cause wrong data to be generated -- they cause a prop, or an
entire component, to be conservatively skipped instead.

## Drift

- **Code side** -- Blend ships a new/removed prop, `npm run generate`
  regenerates `src/*.res`, and a map now has a hole nothing notices.
  **Automated**: `npm run figma:check-drift`
  (`scripts/check-figma-map-drift.mjs`) re-scaffolds every component into a
  temp dir and diffs its prop-key set against the committed map. Runs in CI
  (`.github/workflows/ci.yml`) on every push/PR to `main`. Only fails for
  **verified** maps (`figmaComponentName` set) -- drift in a still-unfinished
  scaffold is reported but doesn't fail CI, since nothing was ever relying
  on it and it drifts on essentially every blend dependency bump. No
  secrets, no network, no human -- pure local diff, reusing the scaffolder
  rather than a second parser.
- **Figma side** -- a designer renames a property, or blend's own
  `.figma.tsx` mapping changes. **Automated by the weekly sync above** --
  since we consume blend-design-system's own published mapping rather than
  reading Figma directly, any change on the Figma side that blend's team
  has already reflected in their `.figma.tsx` gets picked up on next sync,
  with no Figma API token needed at all.

### Rejecting a prop

If blend's file doesn't map a prop, or a human decides a Figma property
genuinely has no valid code correspondence, it's recorded as
`propName: { mapped: false, reason: '...' }` in the map -- never delete the
key. `engine.mjs`, `generate-figma-code-connect.mjs`, and
`check-figma-map-drift.mjs` all treat `mapped: false` as "known, already
decided" and won't re-flag or re-render it. Deleting the key instead looks
identical to "never scaffolded" and will keep getting flagged by the drift
check.

## Files

- `figma/componentMaps/<Component>.mjs` -- **single source of truth** per
  component: `figmaComponentName` (also the "is this map ready" signal for
  the codegen script), then per-prop Figma property names, their kind
  (`string`/`bool`/`enum`/`instanceSwap`), and (for `enum`) the Figma-value
  -> ReScript-expression table. Pure data, zero imports (not even from
  `figma`), loadable by plain Node (sync/codegen/drift-check scripts) as
  well as bundled into a `.figma.ts` template.
- `scripts/sync-figma-code-connect.mjs` -- the primary workflow (see above).
- `scripts/shared/parse-figma-tsx.mjs` -- TSX AST parser for blend's
  `*.figma.tsx` files (real TypeScript compiler API, not regex).
- `scripts/shared/rescript-component-parser.mjs` -- shared logic for reading
  and classifying OUR OWN `src/*.res` files; used by both the sync script
  and the scaffolder, so they stay consistent about what a "simple enum"
  or a "labeled args vs record props" component looks like.
- `scripts/scaffold-figma-component-maps.mjs` -- fallback for components
  blend-design-system hasn't published a `.figma.tsx` for yet: scaffolds a
  TODO-placeholder map from our own bindings alone (see "Scaffolding a
  component with no upstream .figma.tsx" below).
- `figma/mapper.mjs` -- tiny rendering primitives (`strAttr`, `identAttr`,
  `boolAttr`, `exprAttr`) shared by `engine.mjs`.
- `figma/engine.mjs` -- generic Code Connect template runtime:
  `renderFromMap(instance, map)` reads a live Figma instance per the map's
  property definitions and renders RescriptBlend JSX. Limitation: at most 3
  `instanceSwap`-kind props per component (nested instances need real
  `figma.code` interpolation, which needs a fixed number of template slots
  -- raise the limit in `engine.mjs` if a component needs more).
- `figma/<Component>.figma.ts` -- thin per-component template, just
  `renderFromMap(figma.selectedInstance, <Component>Map)`.
- `scripts/generate-figma-code-connect.mjs` -- reads every
  `figma/componentMaps/*.mjs` and emits `src/Figma/<Component>CodeConnect.res`
  exporting `fromFigmaProps: CodeConnectUtils.figmaProps => string`. Skips
  any map whose `figmaComponentName` is still `null` -- never emits
  ReScript from an unverified scaffold, so it's always safe to run across
  all of `componentMaps/` even while most are still TODOs. `instanceSwap`
  props are listed in a comment in the generated file (they need a live
  Figma instance to resolve nested code, which static codegen can't do).
- `src/Figma/CodeConnectUtils.res` -- **hand-written**, not regenerated:
  generic `figmaProps` array plumbing shared by every generated
  `*CodeConnect.res` module.
- `scripts/check-figma-map-drift.mjs` -- CI check, see "Drift" above.

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

## Scaffolding a component with no upstream .figma.tsx

For a component blend-design-system hasn't published Code Connect for yet,
`scripts/scaffold-figma-component-maps.mjs` generates a starter map from
ONLY our own generated ReScript bindings (prop names, kinds, and -- for
simple no-payload variant props -- the code-side constructor names). It
does not know or guess any Figma-side property name; every scaffold ships
with `figmaComponentName: null` and `figmaProp: null` / `TODO_FIGMA_KEY`
placeholders, and needs manual verification against the real component in
Figma (Desktop Inspect panel, or an AI assistant with a Figma link) before
it's trustworthy.

```bash
node scripts/scaffold-figma-component-maps.mjs              # scaffold everything not already present
node scripts/scaffold-figma-component-maps.mjs --only Checkbox,Alert
node scripts/scaffold-figma-component-maps.mjs --force      # re-scaffold, overwriting existing maps
node scripts/scaffold-figma-component-maps.mjs --out-dir /tmp/x --force   # scaffold elsewhere (used by check-figma-map-drift.mjs)
```

**`--force` overwrites unconditionally, including already-verified/synced
maps -- don't run it repo-wide.** Prefer scoping `--force` with `--only`,
or delete the one map you want to regenerate and re-run without `--force`.

To finish a scaffolded component by hand: get a Figma URL (kept in your own
notes, never committed) for a real instance, find the real property names
via Figma Desktop's Inspect panel or an AI assistant, fill in
`figmaComponentName` and every `figmaProp`/`TODO_FIGMA_KEY` you can
confirm (leave the rest `null`, or `mapped: false` if you've confirmed it
genuinely doesn't apply), write `figma/<Component>.figma.ts` (one line, see
`Button.figma.ts`), then `npm run figma:generate && npm run build`.

But check first whether blend-design-system already has a `.figma.tsx` for
it -- if so, prefer fixing/adding it there and re-running `npm run
figma:sync`, rather than hand-maintaining a duplicate mapping here.
