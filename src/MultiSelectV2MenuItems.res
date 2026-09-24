type props = {
  filteredItems: array<MultiSelectV2Types.multiSelectV2GroupType2>,
  allItemsFlat: array<MultiSelectV2Types.multiSelectV2ItemType2>,
  selected: array<string>,
  onSelect: string => unit,
  maxSelections?: float,
  tokens: HighchartsSharedSharedTypes.multiSelectV2TokensType,
  size: SelectV2Types.selectV2Size2,
  variant: SelectV2Types.selectV2Variant2,
  focusIdentityEnabled?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectV2MenuItems"
