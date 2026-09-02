type props = {
  ...HighchartsSharedSharedTypes.menuListSharedProps,
  flattenedItems: array<HighchartsSharedSharedTypes.flattenedItem>,
  virtualViewportHeight: float,
  virtualItems: array<HighchartsSharedSharedTypes.virtualItemShape>,
  totalSize: float,
  measureElement: Nullable.t<Dom.element> => unit,
  loadingComponent?: React.element,
  hasMore?: bool,
  virtualScrollRef: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SingleSelectV2VirtualList"
