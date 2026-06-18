@module("@juspay/blend-design-system") @react.component
external make: (
  ~inputRef: React.ref<Nullable.t<Dom.htmlInputElement>>,
  ~value: string,
  ~onChange: ReactEvent.Form.t => unit,
  ~placeholder: string=?,
  ~ariaLabel: string=?,
  ~onArrowKeyToFirstOption: unit => unit=?,
) => React.element = "MultiSelectV2MenuSearch"
