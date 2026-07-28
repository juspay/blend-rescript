// Manually-curated aliases: additional raw Figma component/component-set
// names that should resolve to the same CodeConnectRegistry entry as the
// figmaComponentName already synced into figma/componentMaps/<Component>.mjs.
//
// This file is NOT touched by scripts/sync-figma-code-connect.mjs and never
// will be -- that script only knows the identifier blend-design-system's own
// figma.connect(<Identifier>, ...) call uses (e.g. "Button"), which is a code
// identifier, not necessarily the literal name Figma's own Inspect panel
// shows for that component/component-set. Where the two differ, record it
// here so a caller never has to hand-normalize the raw Figma name itself
// before calling CodeConnectRegistry.resolve -- keeping that knowledge here
// (and re-synced/regenerated automatically into the registry) is what lets
// consumers avoid writing or maintaining any mapping of their own.
//
// Each entry must be verified against the real Figma component (Figma
// Desktop's Inspect panel, or the Figma REST API) -- not guessed. An
// unverified alias risks silently misrouting a real Figma layer name that
// happens to coincide with blend's own naming.
//
// Keyed by componentName (the figma/componentMaps/<componentName>.mjs
// filename, e.g. "Button"), value is an array of extra raw Figma names.

export default {
  // blend-design-system's Button.figma.tsx calls figma.connect(Button, ...)
  // -- the code identifier is "Button" (singular). The actual published
  // Figma component set is named "Buttons" (plural), confirmed via Figma
  // Desktop's Inspect panel on the real published component.
  Button: ["Buttons"],
};
