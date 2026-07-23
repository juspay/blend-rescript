// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Charts/Charts.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/Charts.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - legendPosition: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - data: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - colors: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - xAxisLabel: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - yAxisLabel: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - slot1: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - slot2: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - slot3: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - chartHeaderSlot: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)

export default {
  figmaComponentName: 'Charts',
  codeComponent: 'Charts',
  id: 'charts',
  imports: ['open RescriptBlend'],
  props: {
    chartType: {
      figmaProp: 'type',
      kind: 'enum',
      values: {
        line: 'HighchartsSharedTypes.Line',
        bar: 'HighchartsSharedTypes.Bar',
        pie: 'HighchartsSharedTypes.Pie',
      },
    },
    legendPosition: { mapped: false, reason: 'JSX attribute value is not a simple identifier reference (from blend\'s file, not resolvable)' },
    stackedLegends: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    showHeader: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    showCollapseIcon: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    isExpanded: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    chartName: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
