// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/TextInput/TextInput.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/TextInput.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - onChange: not a recognized figma.* call (from blend's file, not resolvable)
// - leftSlot: our own binding classifies this prop as 'unsupported', not 'instanceSwap' like blend does -- skipped
// - rightSlot: our own binding classifies this prop as 'unsupported', not 'instanceSwap' like blend does -- skipped

export default {
  figmaComponentName: 'TextInput',
  codeComponent: 'TextInput',
  id: 'textInput',
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
    value: { figmaProp: 'placeholder', kind: 'string' },
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
    helpIconHintText: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    errorMessage: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    cursor: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    passwordToggle: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    textInputGroupPosition: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
