type props = {
  ...HighchartsSharedSharedTypes.menuListSharedProps,
  filteredItems: array<HighchartsSharedSharedTypes.singleSelectV2GroupType>,
  enableSearch?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SingleSelectV2List"
