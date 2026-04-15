type tagVariant =
  | @as("noFill") NoFill
  | @as("attentive") Attentive
  | @as("subtle") Subtle
type tagShape =
  | @as("squarical") Squarical
  | @as("rounded") Rounded
type tagSize =
  | @as("xs") Xs
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tagColor =
  | @as("neutral") Neutral
  | @as("primary") Primary
  | @as("success") Success
  | @as("error") Error
  | @as("warning") Warning
  | @as("purple") Purple

type tagProps = {
  variant?: tagVariant,
  shape?: tagShape,
  size?: tagSize,
  color?: tagColor,
  label?: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  className?: string,
  text?: string,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~variant: tagVariant=?,
  ~shape: tagShape=?,
  ~size: tagSize=?,
  ~color: tagColor=?,
  ~label: string=?,
  ~leftSlot: React.element=?,
  ~rightSlot: React.element=?,
  ~className: string=?,
  ~id: string=?,
  ~dataTestId: string=?,
  ~text: string=?,
) => React.element = "Tag"
