@module("@juspay/blend-design-system") @react.component
external make: (
  ~selected: string,
  ~onSelect: string => unit,
  ~singleSelectTokens: SingleSelectV2Types.singleSelectV2TokensType,
  ~size: SelectV2Types.selectV2Size,
  ~variant: SelectV2Types.selectV2Variant,
  ~filteredItems: array<SingleSelectV2Types.singleSelectV2GroupType>,
  ~enableSearch: bool=?,
) => React.element = "SingleSelectV2List"
