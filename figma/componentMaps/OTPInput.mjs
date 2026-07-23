// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/TextInput/OTPInput.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/OTPInput.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - value: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - onChange: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)

export default {
  figmaComponentName: 'OTPInput',
  codeComponent: 'OTPInput',
  id: 'oTPInput',
  imports: ['open RescriptBlend'],
  props: {
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
    helpIconHintText: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    errorMessage: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    value: { mapped: false, reason: 'JSX attribute has no expression (or a plain string literal) (from blend\'s file, not resolvable)' },
    autoFocus: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    form: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    placeholder: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
