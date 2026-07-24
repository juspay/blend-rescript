// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Tags/SplitTag.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/SplitTag.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - primaryTag: references undestructured local 'primaryTag' (from blend's file, not resolvable)
// - secondaryTag: references undestructured local 'secondaryTag' (from blend's file, not resolvable)

export default {
  figmaComponentName: 'SplitTag',
  codeComponent: 'SplitTag',
  id: 'splitTag',
  imports: ['open JuspayRescriptBlend'],
  props: {
    shape: {
      figmaProp: 'shape',
      kind: 'enum',
      values: {
        rounded: 'JuspayRescriptBlend.TagsTypes.Rounded',
        squarical: 'JuspayRescriptBlend.TagsTypes.Squarical',
      },
    },
    size: {
      figmaProp: 'size',
      kind: 'enum',
      values: {
        xs: 'JuspayRescriptBlend.TagsTypes.Xs',
        sm: 'JuspayRescriptBlend.TagsTypes.Sm',
        md: 'JuspayRescriptBlend.TagsTypes.Md',
        lg: 'JuspayRescriptBlend.TagsTypes.Lg',
      },
    },
  },
}
