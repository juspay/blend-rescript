type props<'a> = {
  items: array<'a>,
  renderItem: VirtualListTypes.virtualListRenderParams<'a> => React.element,
  height?: CommonTypes.stringOrNumber2,
  itemHeight?: float,
  overscan?: float,
  onScroll?: float => unit,
  onEndReached?: unit => unit,
  endReachedThreshold?: float,
  isLoading?: bool,
  hasMore?: bool,
  paginationKey?: CommonTypes.stringOrNumber2,
  className?: string,
  style?: JsxDOM.style,
  ref?: React.ref<Nullable.t<VirtualListTypes.virtualListRef>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a>> = "VirtualList"
