// Type definitions
type radioSize =
  | @as("sm") Sm
  | @as("md") Md

// Radio binding for the design system
@module("@juspay/blend-design-system") @react.component
external make: (
  ~id: string=?,
  ~value: string=?,
  ~checked: bool=?,
  ~defaultChecked: bool=?,
  ~onChange: bool => unit=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~error: bool=?,
  ~size: radioSize=?,
  ~children: React.element=?,
  ~subtext: string=?,
  ~slot: React.element=?,
  ~name: string=?,
) => React.element = "Radio"

// RadioGroup binding
module Group = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~id: string=?,
    ~label: string=?,
    ~name: string,
    ~defaultValue: string=?,
    ~value: string=?,
    ~children: React.element,
    ~onChange: string => unit=?,
    ~disabled: bool=?,
  ) => React.element = "RadioGroup"
}
