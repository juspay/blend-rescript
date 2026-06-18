@module("@juspay/blend-design-system") @react.component
external make: (
  ~filteredItems: array<MultiSelectV2Types.multiSelectV2GroupType>,
  ~allItemsFlat: array<MultiSelectV2Types.multiSelectV2ItemType>,
  ~selected: array<string>,
  ~onSelect: string => unit,
  ~maxSelections: float=?,
  ~tokens: MultiSelectV2Types.multiSelectV2TokensType,
  ~size: SelectV2Types.selectV2Size,
  ~variant: SelectV2Types.selectV2Variant,
) => React.element = "MultiSelectV2MenuItems"
