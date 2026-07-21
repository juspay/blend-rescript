// Hand-written support for the generated src/Figma/*CodeConnect.res modules
// (see scripts/generate-figma-code-connect.mjs). NOT regenerated -- this is
// generic Figma-properties-array plumbing, independent of any one Blend
// component or Blend version, so it doesn't need to be derived from
// figma/componentMaps/*.mjs the way the per-component modules do.

// Same (propName, propValue) pair shape Figma plugin code already extracts
// from a node's `componentProperties` (see e.g. juspay-portal's
// apps/code-connect FigmaUtils.getComponentProperTies).
type figmaProps = array<(option<string>, option<string>)>

let getStringProp = (props: figmaProps, key: string): option<string> =>
  props
  ->Array.find(((k, _)) => k === Some(key))
  ->Option.flatMap(((_, v)) => v)

let getBoolProp = (props: figmaProps, key: string): option<bool> =>
  props->getStringProp(key)->Option.map(v => v === "true")

// An unquoted identifier/expression attribute, e.g. buttonType=ButtonTypes.Primary.
let attr = (name: string, value: option<string>): string =>
  switch value {
  | Some(v) => ` ${name}=${v}`
  | None => ""
  }

// A quoted string attribute, e.g. text="Proceed".
let strAttr = (name: string, value: option<string>): string =>
  switch value {
  | Some(v) => ` ${name}="${v}"`
  | None => ""
  }

// ReScript JSX has no bare-boolean shorthand -- always emits `name=true`/
// `name=false` explicitly rather than omitting on `false`, since
// `disabled=false` is meaningfully different from omitting the prop.
let boolAttr = (name: string, value: option<bool>): string =>
  switch value {
  | Some(v) => ` ${name}=${v ? "true" : "false"}`
  | None => ""
  }
