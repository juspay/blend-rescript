type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitSlot,
  trigger: React.element,
  items?: array<MenuTypes.menuGroupType>,
  maxHeight?: float,
  minHeight?: float,
  maxWidth?: float,
  minWidth?: float,
  enableSearch?: bool,
  searchPlaceholder?: string,
  enableVirtualScrolling?: bool,
  virtualItemHeight?: MenuTypes.menuItemTypeVirtualItemHeight,
  virtualOverscan?: float,
  virtualScrollThreshold?: float,
  @as("open") open_?: bool,
  onOpenChange?: bool => unit,
  asModal?: bool,
  alignment?: MenuTypes.menuAlignment,
  side?: MenuTypes.menuSide,
  sideOffset?: float,
  alignOffset?: float,
  collisonBoundaryRef?: ChatInputTypes.CollisonBoundaryRef.t, // ⓘ was `Element | Element[]` — opaque; build with CollisonBoundaryRef.fromElement / CollisonBoundaryRef.fromElements
  skeleton?: MenuTypes.menuSkeletonProps,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "Menu"
