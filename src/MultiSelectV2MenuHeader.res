type props = {
  tokens: HighchartsSharedSharedTypes.multiSelectV2TokensType,
  showSearch: bool,
  showSearchWhenEmpty?: bool,
  itemsCount: float,
  searchValue: string,
  searchPlaceholder?: string,
  searchInputRef: React.ref<Nullable.t<Dom.element>>,
  onSearchChange: ReactEvent.Form.t => unit,
  onSearchArrowKeyToFirst: unit => unit,
  showSelectAll: bool,
  selected: array<string>,
  availableValues: array<string>,
  filteredItems: array<MultiSelectV2Types.multiSelectV2GroupType2>,
  onSelectAll?: (bool, array<MultiSelectV2Types.multiSelectV2GroupType2>) => unit,
  selectAllText?: string,
  disabled?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectV2MenuHeader"
