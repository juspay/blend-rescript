type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitSlot,
  trigger: React.element,
  items?: array<EditorSharedTypes.menuGroupType>,
  maxHeight?: float,
  minHeight?: float,
  maxWidth?: float,
  minWidth?: float,
  enableSearch?: bool,
  searchPlaceholder?: string,
  searchSortFn?: (
    array<EditorSharedTypes.menuItemType>,
    string,
  ) => array<EditorSharedTypes.menuItemType>,
  onEnter?: (string, array<EditorSharedTypes.menuGroupType>) => unit,
  enableVirtualScrolling?: bool,
  virtualItemHeight?: EditorSharedTypes.menuItemTypeVirtualItemHeight,
  virtualOverscan?: float,
  virtualScrollThreshold?: float,
  @as("open") open_?: bool,
  onOpenChange?: bool => unit,
  asModal?: bool,
  selectionStyle?: EditorSharedTypes.menuSelectionStyle,
  selectionMode?: EditorSharedTypes.menuSelectionMode,
  closeOnSelect?: bool,
  alignment?: EditorSharedTypes.menuAlignment,
  side?: EditorSharedTypes.menuSide,
  sideOffset?: float,
  alignOffset?: float,
  collisonBoundaryRef?: ChatInputTypes.ChatInputOverflowMenuPropsCollisonBoundaryRef.t, // ⓘ was `Element | Element[]` — opaque; build with ChatInputOverflowMenuPropsCollisonBoundaryRef.fromElement / ChatInputOverflowMenuPropsCollisonBoundaryRef.fromElements
  skeleton?: EditorSharedTypes.menuSkeletonProps,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "Menu"
