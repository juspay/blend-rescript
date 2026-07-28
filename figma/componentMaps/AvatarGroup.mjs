// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Avatar/AvatarGroup.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/AvatarGroup.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - avatars: references undestructured local 'avatars' (from blend's file, not resolvable)
// - maxCount: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)

export default {
  figmaComponentName: 'AvatarGroup',
  codeComponent: 'AvatarGroup',
  id: 'avatarGroup',
  imports: ['open JuspayRescriptBlend'],
  props: {
    size: {
      figmaProp: 'size',
      kind: 'enum',
      values: {
        sm: 'JuspayRescriptBlend.AvatarTypes.Sm',
        md: 'JuspayRescriptBlend.AvatarTypes.Md',
        lg: 'JuspayRescriptBlend.AvatarTypes.Lg',
        xl: 'JuspayRescriptBlend.AvatarTypes.Xl',
      },
    },
    shape: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
