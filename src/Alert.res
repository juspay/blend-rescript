// Alert variant types
type alertVariant =
  | @as("primary") Primary
  | @as("success") Success
  | @as("warning") Warning
  | @as("error") Error
  | @as("purple") Purple
  | @as("orange") Orange
  | @as("neutral") Neutral

// Alert style types
type alertStyle =
  | @as("subtle") Subtle
  | @as("noFill") NoFill

// Alert action placement types
type alertActionPlacement =
  | @as("bottom") Bottom
  | @as("right") Right

// Alert action type
type alertAction = {
  label: string,
  onClick: unit => unit,
}

// Alert props type
type alertProps = {
  heading: string,
  description: string,
  variant?: alertVariant,
  style?: alertStyle,
  primaryAction?: alertAction,
  secondaryAction?: alertAction,
  onClose?: unit => unit,
  icon?: React.element,
  actionPlacement?: alertActionPlacement,
}

// External binding to the Alert component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~heading: string,
  ~description: string,
  ~variant: alertVariant=?,
  ~style: alertStyle=?,
  ~primaryAction: alertAction=?,
  ~secondaryAction: alertAction=?,
  ~onClose: unit => unit=?,
  ~icon: React.element=?,
  ~actionPlacement: alertActionPlacement=?,
  // Common HTML div attributes
  ~className: string=?,
  ~id: string=?,
  ~role: string=?,
  ~ariaLabel: string=?,
  ~ariaDescribedBy: string=?,
) => React.element = "Alert"

// Helper function to create alert actions easily
let makeAction = (~label: string, ~onClick: unit => unit): alertAction => {
  label,
  onClick,
}
