// Shared rendering helpers used by figma/engine.mjs (the Code Connect
// template runtime) and referenced conceptually by scripts/generate-figma-code-connect.mjs
// (which emits the equivalent logic as generated ReScript). Plain .mjs, no
// Figma-runtime imports here except `figma.code` for expression attrs, kept
// separate from `figma/componentMaps/*.mjs` (pure data, zero imports) so the
// codegen script can load the maps in plain Node without pulling in the
// Figma-only `figma` module.

import figma from 'figma'

// A quoted string attribute, e.g. text="Proceed". Omitted if value is undefined.
export const strAttr = (name, value) => (value === undefined ? '' : `${name}="${value}"`)

// An unquoted identifier/expression attribute, e.g. buttonType=ButtonTypes.Primary.
// `value` should already be the fully qualified ReScript expression string.
export const identAttr = (name, value) => (value === undefined ? '' : `${name}=${value}`)

// ReScript JSX has no bare-boolean shorthand (unlike JS/JSX) -- always emits
// `name=true`/`name=false` explicitly rather than an empty string for `false`,
// since `disabled=false` is meaningfully different from omitting the prop.
export const boolAttr = (name, value) =>
  value === undefined ? '' : `${name}=${value ? 'true' : 'false'}`

// A braced expression attribute for nested element/code values, e.g.
// trailingIcon={<ChevronRight />}. `value` is a ResultSection[] as returned
// by `instance.executeTemplate().example`, or undefined to omit the prop.
export const exprAttr = (name, value) => (value === undefined ? '' : figma.code`${name}={${value}}`)
