type props = {
  ...HighchartsSharedSharedTypes.menuListSharedProps,
  filteredItems: array<SingleSelectV2Types.singleSelectV2GroupType2>,
  enableSearch?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SingleSelectV2List"
