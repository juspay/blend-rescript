// Type definitions
type checkboxSize =
  | @as("sm") Sm
  | @as("md") Md

type checkboxState =
  | @as("true") Checked
  | @as("false") Unchecked
  | @as("indeterminate") Indeterminate

// Checkbox binding for the design system
@module("@juspay/blend-design-system") @react.component
external make: (
  ~id: string=?,
  ~label: string=?,
  ~value: string=?,
  ~checked: 'a=?,
  ~defaultChecked: bool=?,
  ~onCheckedChange: 'a => unit=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~error: bool=?,
  ~size: checkboxSize=?,
  ~children: React.element=?,
  ~subtext: string=?,
  ~slot: React.element=?,
) => React.element = "Checkbox"
