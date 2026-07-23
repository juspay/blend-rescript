// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Tooltip/Tooltip.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/Tooltip.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - content: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - side: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - align: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - showArrow: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - slot: our own binding classifies this prop as 'unsupported', not 'instanceSwap' like blend does -- skipped

export default {
  figmaComponentName: 'Tooltip',
  codeComponent: 'Tooltip',
  id: 'tooltip',
  imports: ['open RescriptBlend'],
  props: {
    size: {
      figmaProp: 'size',
      kind: 'enum',
      values: {
        sm: 'TooltipTypes.Sm',
      },
    },
    slotDirection: {
      figmaProp: 'slotDirection',
      kind: 'enum',
      values: {
        left: 'TooltipTypes.Left',
        right: 'TooltipTypes.Right',
      },
    },
    side: { mapped: false, reason: 'JSX attribute value is not a simple identifier reference (from blend\'s file, not resolvable)' },
    align: { mapped: false, reason: 'JSX attribute value is not a simple identifier reference (from blend\'s file, not resolvable)' },
    showArrow: { mapped: false, reason: 'JSX attribute value is not a simple identifier reference (from blend\'s file, not resolvable)' },
    maxWidth: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    fullWidth: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    disableInteractive: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
