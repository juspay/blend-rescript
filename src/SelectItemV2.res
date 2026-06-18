@module("@juspay/blend-design-system") @react.component
external make: (
  ~item: SelectV2Types.selectV2ItemType,
  ~onSelect: string => unit,
  ~itemTokens: SelectV2Types.selectV2MenuItemTokensBase,
  ~index: int=?,
  ~selectedPosition: SelectV2Types.selectedPosition=?,
  ~className: string=?,
  ~mode: SelectV2Types.mode,
  ~selected: string=?,
  ~showCheckmark: bool=?,
  ~selectedValues: array<string>=?,
) => React.element = "SelectItemV2"
