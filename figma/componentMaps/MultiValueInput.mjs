// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/TextInput/MultiValueInput.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/MultiValueInput.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - tags: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - onTagAdd: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - onTagRemove: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)

export default {
  figmaComponentName: 'MultiValueInput',
  codeComponent: 'MultiValueInput',
  id: 'multiValueInput',
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
    disabled: {
      figmaProp: 'state',
      kind: 'enum',
      values: {
        disabled: 'true',
        default: 'false',
        hover: 'false',
        active: 'false',
        focussed: 'false',
        error: 'false',
      },
    },
    value: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    helpIconHintText: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    errorMessage: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
