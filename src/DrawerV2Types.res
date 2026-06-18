type direction =
  | @as("left") Left
  | @as("right") Right
  | @as("bottom") Bottom
  | @as("top") Top
type type_2 =
  | @as("submit") Submit
  | @as("reset") Reset
  | @as("button") Button
type customEvent = {
  ...JsxDOM.domProps,
}
