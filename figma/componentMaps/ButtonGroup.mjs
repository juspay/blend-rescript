// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Button/ButtonGroup.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/ButtonGroup.res --
// not guessed, not scaffolded.

export default {
  figmaComponentName: 'ButtonGroup',
  codeComponent: 'ButtonGroup',
  id: 'buttonGroup',
  imports: ['open JuspayRescriptBlend'],
  props: {
    stacked: { figmaProp: 'stack', kind: 'bool' },
  },
}
