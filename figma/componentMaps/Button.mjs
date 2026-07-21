// Canonical Figma <-> RescriptBlend.Button mapping data. Pure data, zero
// imports -- consumed by figma/engine.mjs (Code Connect template runtime,
// via Button.figma.ts) AND scripts/generate-figma-code-connect.mjs (Node
// codegen, produces src/Figma/ButtonCodeConnect.res). Edit this file only;
// both consumers regenerate/re-derive from it, nothing downstream should be
// hand-edited.
//
// Confidence: `text`/`buttonType`/`size`/`subType`/`disabled`/`rightIcon`
// are evidenced by an existing React Code Connect mapping's resolved
// snippet on a real Button instance (checked interactively via Figma MCP
// tools -- deliberately not recording which file/node here, since this
// repo is public: see figma/README.md's "No Figma URLs/keys/node-ids in
// this repo" note). `leftIcon`/`buttonGroupPosition`/`state`/`loading`/
// `showSkeleton` are inferred purely from src/ButtonTypes.res with no
// Figma-side evidence. NONE of these have been confirmed against the
// actual "Buttons" component-set property panel -- verify in Figma
// Desktop (Dev Mode + MCP server) before relying on this.
//
// Not mapped at all (payload-carrying or code-only, no scaffold entry
// possible): `width`/`onClick`/`ref`/`children`.

export default {
  figmaComponentName: 'Buttons',
  codeComponent: 'Button',
  id: 'button',
  imports: ['open RescriptBlend'],
  props: {
    text: { figmaProp: 'Text', kind: 'string' },
    buttonType: {
      figmaProp: 'Button Type',
      kind: 'enum',
      values: {
        PRIMARY: 'ButtonTypes.Primary',
        SECONDARY: 'ButtonTypes.Secondary',
        DANGER: 'ButtonTypes.Danger',
        SUCCESS: 'ButtonTypes.Success',
      },
    },
    size: {
      figmaProp: 'Size',
      kind: 'enum',
      values: {
        SMALL: 'ButtonTypes.Sm',
        MEDIUM: 'ButtonTypes.Md',
        LARGE: 'ButtonTypes.Lg',
      },
    },
    subType: {
      figmaProp: 'Sub Type',
      kind: 'enum',
      values: {
        DEFAULT: 'ButtonTypes.Default',
        ICON_ONLY: 'ButtonTypes.IconOnly',
        INLINE: 'ButtonTypes.Inline',
      },
    },
    disabled: { figmaProp: 'Disabled', kind: 'bool' },
    // Low confidence -- see file header.
    buttonGroupPosition: {
      figmaProp: 'Group Position',
      kind: 'enum',
      values: {
        LEFT: 'ButtonTypes.Left',
        CENTER: 'ButtonTypes.Center',
        RIGHT: 'ButtonTypes.Right',
      },
    },
    state: {
      figmaProp: 'State',
      kind: 'enum',
      values: {
        DEFAULT: 'ButtonTypes.Default',
        HOVER: 'ButtonTypes.Hover',
        ACTIVE: 'ButtonTypes.Active',
        DISABLED: 'ButtonTypes.Disabled',
      },
    },
    loading: { figmaProp: 'Loading', kind: 'bool' },
    showSkeleton: { figmaProp: 'Show Skeleton', kind: 'bool' },
    // Low confidence, pending -- flagged by scripts/check-figma-map-drift.mjs
    // as present in src/Button.res but not yet in this map. figmaProp/values
    // still unverified, same as the rest of the "Low confidence" tier above.
    skeletonVariant: {
      figmaProp: null, // TODO: Figma property name
      kind: 'enum',
      values: {
        // TODO_FIGMA_KEY: 'SkeletonTypes.Pulse', // ReScript: Pulse (bound value "pulse")
        // TODO_FIGMA_KEY: 'SkeletonTypes.Wave', // ReScript: Wave (bound value "wave")
        // TODO_FIGMA_KEY: 'SkeletonTypes.Shimmer', // ReScript: Shimmer (bound value "shimmer")
      },
    },
    fullWidth: { figmaProp: null /* TODO */, kind: 'bool' },
    justifyContent: { figmaProp: null /* TODO */, kind: 'string' },
    //
    // instanceSwap-kind props are resolved dynamically (never hardcoded) by
    // figma/engine.mjs, and are NOT part of the codegen script's output
    // (the generated ReScript module only takes primitive Figma properties
    // as input -- a nested instance's own code has to be resolved by
    // whatever calls it, since ReScript codegen has no live Figma instance
    // to call executeTemplate() against).
    leadingIcon: { figmaProp: 'Left Icon', kind: 'instanceSwap' },
    trailingIcon: { figmaProp: 'Right Icon', kind: 'instanceSwap' },
  },
}
