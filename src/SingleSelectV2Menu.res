type props = {
  items: array<SingleSelectV2Types.singleSelectV2GroupType2>,
  selected: string,
  onSelect: string => unit,
  trigger: React.element,
  menuDimensions?: HighchartsSharedSharedTypes.selectV2MenuDimensions,
  search?: HighchartsSharedSharedTypes.selectV2SearchConfig,
  disabled?: bool,
  menuPosition?: HighchartsSharedSharedTypes.selectV2MenuPosition,
  collisionBoundary?: ChatInputTypes.ChatInputOverflowMenuPropsCollisonBoundaryRef.t, // ⓘ was `Element | Element[]` — opaque; build with ChatInputOverflowMenuPropsCollisonBoundaryRef.fromElement / ChatInputOverflowMenuPropsCollisonBoundaryRef.fromElements
  @as("open") open_: bool,
  onOpenChange: bool => unit,
  size?: SelectV2Types.selectV2Size2,
  variant?: SelectV2Types.selectV2Variant2,
  enableVirtualization?: bool,
  virtualListItemHeight?: float,
  virtualListOverscan?: float,
  onEndReached?: unit => unit,
  endReachedThreshold?: float,
  hasMore?: bool,
  loadingComponent?: React.element,
  skeleton?: SelectV2Types.selectV2SkeletonProps,
  allowCustomValue?: bool,
  customValueLabel?: string,
  menuId?: string,
  menuFooter?: React.element,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SingleSelectV2Menu"
