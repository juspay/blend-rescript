type tagVariant =
  | @as("noFill") NoFill
  | @as("attentive") Attentive
  | @as("subtle") Subtle
type tagColor =
  | @as("neutral") Neutral
  | @as("primary") Primary
  | @as("secondary") Secondary
  | @as("success") Success
  | @as("error") Error
  | @as("warning") Warning
  | @as("purple") Purple
type tagSize =
  | @as("xs") Xs
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tagShape =
  | @as("squarical") Squarical
  | @as("rounded") Rounded

type tagConfig = {
  text: string,
  variant?: tagVariant,
  color?: tagColor,
  leftSlot?: React.element,
  rightSlot?: React.element,
  onClick?: ReactEvent.Mouse.t => unit,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~primaryTag: tagConfig,
  ~secondaryTag: tagConfig=?,
  ~size: tagSize=?,
  ~shape: tagShape=?,
  ~testId: string=?,
) => React.element = "SplitTag"
