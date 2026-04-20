// Type definitions
type switchSize =
  | @as("sm") Sm
  | @as("md") Md

type maxLength = {
  label?: int,
  subtext?: int,
}

// Switch binding for the design system
@module("@juspay/blend-design-system") @react.component
external make: (
  ~id: string=?,
  ~label: string=?,
  ~checked: bool=?,
  ~defaultChecked: bool=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~error: bool=?,
  ~size: switchSize=?,
  ~onChange: bool => unit=?,
  ~value: string=?,
  ~children: string=?,
  ~subtext: string=?,
  ~slot: React.element=?,
  ~name: string=?,
  ~className: string=?,
  ~maxLength: maxLength=?,
) => React.element = "Switch"

// SwitchGroup binding
module Group = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~id: string=?,
    ~label: string=?,
    ~name: string=?,
    ~children: React.element,
    ~disabled: bool=?,
    ~value: array<string>=?,
    ~defaultValue: array<string>=?,
    ~onChange: array<string> => unit=?,
    ~className: string=?,
  ) => React.element = "SwitchGroup"
}
