type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitSlot,
  trigger: React.element,
  items?: array<HighchartsSharedSharedTypes.menuGroupType>,
  maxHeight?: float,
  minHeight?: float,
  maxWidth?: float,
  minWidth?: float,
  enableSearch?: bool,
  searchPlaceholder?: string,
  searchSortFn?: (
    array<HighchartsSharedSharedTypes.menuItemType>,
    string,
  ) => array<HighchartsSharedSharedTypes.menuItemType>,
  onEnter?: (string, array<HighchartsSharedSharedTypes.menuGroupType>) => unit,
  enableVirtualScrolling?: bool,
  virtualItemHeight?: HighchartsSharedSharedTypes.menuItemTypeVirtualItemHeight,
  virtualOverscan?: float,
  virtualScrollThreshold?: float,
  @as("open") open_?: bool,
  onOpenChange?: bool => unit,
  asModal?: bool,
  selectionStyle?: HighchartsSharedSharedTypes.menuSelectionStyle,
  selectionMode?: HighchartsSharedSharedTypes.menuSelectionMode,
  closeOnSelect?: bool,
  alignment?: HighchartsSharedSharedTypes.menuAlignment,
  side?: HighchartsSharedSharedTypes.menuSide,
  sideOffset?: float,
  alignOffset?: float,
  collisonBoundaryRef?: ChatInputTypes.ChatInputOverflowMenuPropsCollisonBoundaryRef.t, // ⓘ was `Element | Element[]` — opaque; build with ChatInputOverflowMenuPropsCollisonBoundaryRef.fromElement / ChatInputOverflowMenuPropsCollisonBoundaryRef.fromElements
  skeleton?: HighchartsSharedSharedTypes.menuSkeletonProps,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "Menu"
