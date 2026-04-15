type inputSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

@module("@juspay/blend-design-system") @react.component
external make: (
  ~value: string,
  ~label: string=?,
  ~sublabel: string=?,
  ~helpIconHintText: string=?,
  ~name: string=?,
  ~required: bool=?,
  ~error: bool=?,
  ~errorMessage: string=?,
  ~hintText: string=?,
  ~disabled: bool=?,
  ~tags: array<string>,
  ~onTagAdd: string => unit,
  ~onTagRemove: string => unit,
  ~onChange: string => unit,
  ~size: inputSize=?,
  ~placeholder: string=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~maxLength: int=?,
  ~autoComplete: string=?,
  ~readOnly: bool=?,
  ~tabIndex: int=?,
  ~leftSlot: React.element=?,
  ~rightSlot: React.element=?,
) => React.element = "MultiValueInput"
