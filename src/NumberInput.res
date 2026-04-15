type buttonSubType =
  | @as("filled") Filled
  | @as("outlined") Outlined
  | @as("text") Text

type numberInputSize =
  | @as("md") Md
  | @as("lg") Lg

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
  ~size: numberInputSize=?,
  ~disabled: bool=?,
  ~placeholder: string=?,
  ~label: string,
  ~sublabel: string=?,
  ~helpIconHintText: string=?,
  ~hintText: string=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~name: string=?,
  ~preventNegative: bool=?,
  ~maxLength: int=?,
) => React.element = "NumberInput"
