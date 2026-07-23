// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/StatCard/StatCard.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/StatCard.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - change: figma.boolean() with an unrecognized true/false mapping (from blend's file, not resolvable)
// - value: our own binding classifies this prop as 'unsupported', not 'string' like blend does -- skipped
// - chartData: our own binding classifies this prop as 'unsupported', not 'enum' like blend does -- skipped
// - progressValue: our own binding classifies this prop as 'unsupported', not 'enum' like blend does -- skipped

export default {
  figmaComponentName: 'StatCard',
  codeComponent: 'StatCard',
  id: 'statCard',
  imports: ['open RescriptBlend'],
  props: {
    variant: {
      figmaProp: 'type',
      kind: 'enum',
      values: {
        line: 'StatCardTypes.Line',
        progress: 'StatCardTypes.Progress',
        bar: 'StatCardTypes.Bar',
        number: 'StatCardTypes.Number',
      },
    },
    title: { figmaProp: 'title', kind: 'string' },
    subtitle: { figmaProp: 'date', kind: 'string' },
    titleIcon: { figmaProp: 'slot 1', kind: 'instanceSwap' },
    actionIcon: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    helpIconText: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    maxWidth: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    minWidth: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    valueFormatter: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    height: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    direction: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    dataDisplay: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    showBorder: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
