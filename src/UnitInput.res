type unitInputSize =
  | @as("md") Md
  | @as("lg") Lg

type unitInputPosition =
  | @as("left") Left
  | @as("right") Right

@module("@juspay/blend-design-system") @react.component
external make: (
  ~value: float=?,
  ~onChange: ReactEvent.Form.t => unit,
  ~min: float=?,
  ~max: float=?,
  ~step: float=?,
  ~error: bool=?,
  ~errorMessage: string=?,
  ~required: bool=?,
  ~size: unitInputSize=?,
  ~disabled: bool=?,
  ~placeholder: string=?,
  ~label: string,
  ~sublabel: string=?,
  ~helpIconHintText: string=?,
  ~hintText: string=?,
  ~leftSlot: React.element=?,
  ~rightSlot: React.element=?,
  ~unit: string,
  ~unitPosition: unitInputPosition=?,
  ~name: string=?,
) => React.element = "UnitInput"
