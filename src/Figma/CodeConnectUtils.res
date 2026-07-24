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

// -- Props-array builders --
//
// Each returns `option<(codePropName, codeValueText)>` -- the same
// `(string, string)` tuple shape juspay-portal's own Figma plugin already
// produces (see e.g. `ButtonUtils.convertToButtonProps` returning
// `array<option<(string, string)>>`). Every generated `<Component>CodeConnect.res`
// exposes a `toProps` built from these, so a consumer owns its own tag
// name, wrapper, and constants/hookState composition (e.g.
// `FigmaUtils.convertPropsNodeStateVariable`) instead of being handed a
// finished, already-composed string.

// A quoted string prop, e.g. ("text", "\"Proceed\"").
let strPropEntry = (name: string, value: option<string>): option<(string, string)> =>
  value->Option.map(v => (name, `"${v}"`))

// An unquoted identifier/expression prop, e.g. ("buttonType", "ButtonTypes.Primary").
let propEntry = (name: string, value: option<string>): option<(string, string)> =>
  value->Option.map(v => (name, v))

// ReScript JSX has no bare-boolean shorthand -- always emits `name=true`/
// `name=false` explicitly rather than omitting on `false`, since
// `disabled=false` is meaningfully different from omitting the prop.
let boolPropEntry = (name: string, value: option<bool>): option<(string, string)> =>
  value->Option.map(v => (name, v ? "true" : "false"))

// Joins a props array (as `toProps` produces) into a rendered `<Tag ... />`
// string -- used to implement `fromFigmaProps` as a thin wrapper over
// `toProps`, for consumers that just want a finished snippet.
let joinTag = (tagName: string, entries: array<option<(string, string)>>): string => {
  let attrs =
    entries
    ->Array.filterMap(e => e)
    ->Array.map(((k, v)) => ` ${k}=${v}`)
    ->Array.join("")
  `<${tagName}${attrs} />`
}
