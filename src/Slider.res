// Slider variant enum
type sliderVariant =
  | @as("primary") Primary
  | @as("secondary") Secondary

// Slider size enum
type sliderSize =
  | @as("sm") Small
  | @as("md") Medium
  | @as("lg") Large

// Slider value type enum
type sliderValueType =
  | @as("number") Number
  | @as("percentage") Percentage
  | @as("decimal") Decimal

// Label position type
type sliderLabelPosition =
  | @as("top") Top
  | @as("bottom") Bottom
  | @as("inline") Inline

// Value format configuration record
type sliderValueFormatConfig = {
  @as("type") type_: sliderValueType,
  decimalPlaces?: int,
  prefix?: string,
  suffix?: string,
  showLabels?: bool,
  formatter?: float => string,
}

// Helper functions to create format configs
let makeValueFormatConfig = (
  ~type_: sliderValueType,
  ~decimalPlaces: option<int>=?,
  ~prefix: option<string>=?,
  ~suffix: option<string>=?,
  ~showLabels: option<bool>=?,
  ~formatter: option<float => string>=?,
  (),
): sliderValueFormatConfig => {
  type_,
  ?decimalPlaces,
  ?prefix,
  ?suffix,
  ?showLabels,
  ?formatter,
}

// Simple Slider component binding
@module("@juspay/blend-design-system") @react.component
external make: (
  ~variant: sliderVariant=?,
  ~size: sliderSize=?,
  ~valueFormat: sliderValueFormatConfig=?,
  ~showValueLabels: bool=?,
  ~labelPosition: sliderLabelPosition=?,
  ~value: array<float>=?,
  ~defaultValue: array<float>=?,
  ~min: float=?,
  ~max: float=?,
  ~step: float=?,
  ~onValueChange: array<float> => unit=?,
  ~onValueChangeComplete: array<float> => unit=?,
  ~disabled: bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~label: string=?,
  ~name: string=?,
  ~id: string=?,
  ~className: string=?,
  ~style: JsxDOM.style=?,
  ~dataTestId: string=?,
  ~children: React.element=?,
) => React.element = "Slider"

// Convenience constants for easier usage
module SliderVariant = {
  let primary = Primary
  let secondary = Secondary
}

module SliderSize = {
  let small = Small
  let medium = Medium
  let large = Large
}

module SliderValueType = {
  let number = Number
  let percentage = Percentage
  let decimal = Decimal
}

module SliderLabelPosition = {
  let top = Top
  let bottom = Bottom
  let inline = Inline
}
