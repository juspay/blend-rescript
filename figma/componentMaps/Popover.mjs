// SYNCED by scripts/sync-figma-code-connect.mjs from blend-design-system's
// apps/storybook/stories/components/Popover/Popover.figma.tsx (branch: main). Do NOT hand-edit -- edit nothing here;
// blend-design-system's own .figma.tsx is the single source of truth. If a
// mapping is wrong, it needs fixing upstream in blend-design-system, then
// re-run `npm run figma:sync` here.
//
// Figma property names/values (and, for enums, the ReScript constructors)
// are derived from blend's own published Code Connect mapping, cross-
// referenced against our own generated src/Popover.res --
// not guessed, not scaffolded.
//
// Skipped during sync:
// - trigger: JSX attribute value is not a simple identifier reference (from blend's file, not resolvable)
// - heading: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - description: JSX attribute has no expression (or a plain string literal) (from blend's file, not resolvable)
// - size: no Figma values resolved against our binding -- skipped

export default {
  figmaComponentName: 'Popover',
  codeComponent: 'Popover',
  id: 'popover',
  imports: ['open JuspayRescriptBlend'],
  props: {
    showCloseButton: { figmaProp: 'close', kind: 'bool' },
    heading: { mapped: false, reason: 'JSX attribute has no expression (or a plain string literal) (from blend\'s file, not resolvable)' },
    description: { mapped: false, reason: 'JSX attribute has no expression (or a plain string literal) (from blend\'s file, not resolvable)' },
    asModal: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    side: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    align: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    size: { mapped: false, reason: 'no Figma values resolved against our binding -- skipped' },
    shadow: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    useDrawerOnMobile: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
    avoidCollisions: { mapped: false, reason: 'not present in blend-design-system\'s published .figma.tsx' },
  },
}
