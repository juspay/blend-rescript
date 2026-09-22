type props = {
  flattenedItems: array<MultiSelectV2Types.flattenedMultiSelectV2Item2>,
  itemIndexMap: Map.t<string, float>,
  allItemsFlat: array<MultiSelectV2Types.multiSelectV2ItemType2>,
  selected: array<string>,
  onSelect: string => unit,
  maxSelections?: float,
  tokens: HighchartsSharedSharedTypes.multiSelectV2TokensType,
  height: float,
  itemHeight: float,
  overscan?: float,
  onEndReached?: unit => unit,
  endReachedThreshold?: float,
  hasMore?: bool,
  focusIdentityEnabled?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectV2MenuVirtualList"
