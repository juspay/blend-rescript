// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Button/Button.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/Button.res --
// not guessed, not scaffolded.

export default {
  figmaComponentName: 'Button',
  codeComponent: 'Button',
  id: 'button',
  imports: ['open JuspayRescriptBlend'],
  props: {
    text: { figmaProp: 'text', kind: 'string' },
    buttonType: {
      figmaProp: 'buttonType',
      kind: 'enum',
      values: {
        primary: 'JuspayRescriptBlend.ButtonTypes.Primary',
        secondary: 'JuspayRescriptBlend.ButtonTypes.Secondary',
        danger: 'JuspayRescriptBlend.ButtonTypes.Danger',
        success: 'JuspayRescriptBlend.ButtonTypes.Success',
      },
    },
    size: {
      figmaProp: 'size',
      kind: 'enum',
      values: {
        sm: 'JuspayRescriptBlend.ButtonTypes.Sm',
        md: 'JuspayRescriptBlend.ButtonTypes.Md',
        lg: 'JuspayRescriptBlend.ButtonTypes.Lg',
      },
    },
    subType: {
      figmaProp: 'subType',
      kind: 'enum',
      values: {
        default: 'JuspayRescriptBlend.ButtonTypes.Default',
        iconOnly: 'JuspayRescriptBlend.ButtonTypes.IconOnly',
        inline: 'JuspayRescriptBlend.ButtonTypes.Inline',
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
      },
    },
    leadingIcon: { figmaProp: 'leftIcon', kind: 'instanceSwap' },
    trailingIcon: { figmaProp: 'rightIcon', kind: 'instanceSwap' },
    loading: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    showSkeleton: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    skeletonVariant: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    buttonGroupPosition: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    fullWidth: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    justifyContent: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    state: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
