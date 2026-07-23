// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/TextInput/DropdownInput.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/DropdownInput.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - onChange: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - onDropDownChange: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - dropDownItems: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - dropDownValue: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - slot: our own binding classifies this prop as 'unsupported', not 'instanceSwap' like blend does -- skipped

export default {
  figmaComponentName: 'DropdownInput',
  codeComponent: 'DropdownInput',
  id: 'dropdownInput',
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
    dropDownValue: { mapped: false, reason: 'JSX attribute has no expression (or a plain string literal) (from blend\'s file, not resolvable)' },
    dropdownName: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    dropdownPosition: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
