@module("@juspay/blend-design-system") @react.component
external make: (
  ~selected: string,
  ~onSelect: string => unit,
  ~singleSelectTokens: SingleSelectV2Types.singleSelectV2TokensType,
  ~size: SelectV2Types.selectV2Size,
  ~variant: SelectV2Types.selectV2Variant,
  ~flattenedItems: array<SingleSelectV2Types.flattenedItem>,
  ~virtualViewportHeight: float,
  ~virtualItems: array<SingleSelectV2Types.virtualItemShape>,
  ~totalSize: float,
  ~measureElement: Nullable.t<Dom.element> => unit,
  ~loadingComponent: React.element=?,
  ~hasMore: bool=?,
  ~virtualScrollRef: React.ref<Nullable.t<Dom.htmlDivElement>>,
) => React.element = "SingleSelectV2VirtualList"
