@module("@juspay/blend-design-system") @react.component
external make: (
  ~tokens: MultiSelectV2Types.multiSelectV2TokensType,
  ~showSearch: bool,
  ~itemsCount: float,
  ~searchValue: string,
  ~searchPlaceholder: string=?,
  ~searchInputRef: React.ref<Nullable.t<Dom.htmlInputElement>>,
  ~onSearchChange: ReactEvent.Form.t => unit,
  ~onSearchArrowKeyToFirst: unit => unit,
  ~showSelectAll: bool,
  ~selected: array<string>,
  ~availableValues: array<string>,
  ~filteredItems: array<MultiSelectV2Types.multiSelectV2GroupType>,
  ~onSelectAll: (bool, array<MultiSelectV2Types.multiSelectV2GroupType>) => unit=?,
  ~selectAllText: string=?,
  ~disabled: bool=?,
) => React.element = "MultiSelectV2MenuHeader"
