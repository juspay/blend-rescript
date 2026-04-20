// Type definitions
type popoverSize =
  | @as("small") Small
  | @as("medium") Medium
type popoverSide =
  | @as("top") Top
  | @as("right") Right
  | @as("bottom") Bottom
  | @as("left") Left
type popoverAlign =
  | @as("start") Start
  | @as("center") Center
  | @as("end") End
type popoverShadow =
  | @as("xs") Xs
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
  | @as("xl") Xl
  | @as("2xl") Xl2
  | @as("full") Full

// Button type variants
type buttonType =
  | @as("primary") Primary
  | @as("secondary") Secondary
  | @as("success") Success
  | @as("danger") Danger
  | @as("warning") Warning
  | @as("info") Info

// Button sub type variants
type buttonSubType =
  | @as("filled") Filled
  | @as("outlined") Outlined
  | @as("text") Text

// Action type for popover buttons
type popoverActionType = {
  text: string,
  onClick: unit => unit,
  disabled?: bool,
  buttonType?: buttonType,
  subType?: buttonSubType,
  leadingIcon?: React.element,
  trailingIcon?: React.element,
}

// Popover binding for the design system
@module("@juspay/blend-design-system") @react.component
external make: (
  ~heading: string=?,
  ~description: string=?,
  ~trigger: React.element,
  ~children: React.element,
  ~showCloseButton: bool=?,
  @as("open") ~open_: bool=?,
  ~onOpenChange: bool => unit=?,
  ~primaryAction: popoverActionType=?,
  ~secondaryAction: popoverActionType=?,
  ~className: string=?,
  ~size: popoverSize=?,
  ~side: popoverSide=?,
  ~align: popoverAlign=?,
  ~sideOffset: int=?,
  ~alignOffset: int=?,
  ~width: int=?,
  ~minWidth: int=?,
  ~maxWidth: int=?,
  ~height: int=?,
  ~minHeight: int=?,
  ~maxHeight: int=?,
  ~zIndex: int=?,
  ~shadow: popoverShadow=?,
  ~useDrawerOnMobile: bool=?,
) => React.element = "Popover"
