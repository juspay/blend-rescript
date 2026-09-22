type props = {
  item: MultiSelectV2Types.multiSelectV2ItemType2,
  onSelect: string => unit,
  selected: array<string>,
  maxSelections?: float,
  allItems?: array<MultiSelectV2Types.multiSelectV2ItemType2>,
  index?: int,
  focusIdentityEnabled?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectV2MenuItem"
