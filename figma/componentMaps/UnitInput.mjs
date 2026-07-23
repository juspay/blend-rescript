// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/TextInput/UnitInput.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/UnitInput.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - value: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - onChange: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - leftSlot: our own binding classifies this prop as 'unsupported', not 'instanceSwap' like blend does -- skipped
// - rightSlot: our own binding classifies this prop as 'unsupported', not 'instanceSwap' like blend does -- skipped

export default {
  figmaComponentName: 'UnitInput',
  codeComponent: 'UnitInput',
  id: 'unitInput',
  imports: ['open RescriptBlend'],
  props: {
    size: {
      figmaProp: 'size',
      kind: 'enum',
      values: {
        md: 'InputsTypes.Md',
        lg: 'InputsTypes.Lg',
      },
    },
    label: { figmaProp: 'label', kind: 'string' },
    sublabel: { figmaProp: 'sublabel', kind: 'string' },
    hintText: { figmaProp: 'hintText', kind: 'string' },
    unit: { figmaProp: 'unitText', kind: 'string' },
    unitPosition: {
      figmaProp: 'unitPosition',
      kind: 'enum',
      values: {
        left: 'InputsTypes.Left',
        right: 'InputsTypes.Right',
      },
    },
    error: {
      figmaProp: 'state',
      kind: 'enum',
      values: {
        error: 'true',
        default: 'false',
        hover: 'false',
        active: 'false',
        focussed: 'false',
        disabled: 'false',
      },
    },
    required: { figmaProp: 'mandatory', kind: 'bool' },
    errorMessage: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    helpIconHintText: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
