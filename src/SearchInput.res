@module("@juspay/blend-design-system") @react.component
external make: (
  ~leftSlot: React.element=?,
  ~rightSlot: React.element=?,
  ~error: bool=?,
  ~disabled: bool=?,
  ~placeholder: string=?,
  ~value: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~name: string=?,
) => React.element = "SearchInput"
