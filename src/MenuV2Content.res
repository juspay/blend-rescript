@module("@juspay/blend-design-system") @react.component
external make: (
  ~filteredItems: array<MenuV2Types.menuV2GroupType>,
  ~menuTokens: MenuV2Types.menuV2TokensType,
  ~enableSearch: bool,
  ~searchPlaceholder: string,
  ~searchText: string,
  ~onSearchTextChange: string => unit,
  ~maxHeight: string=?,
  ~minHeight: string=?,
  ~minWidth: string=?,
  ~maxWidth: string=?,
  ~enableVirtualScrolling: bool=?,
  ~virtualScrolling: MenuV2Types.menuV2VirtualScrollingConfig=?,
  ~alignment: DateRangePickerTypes.align=?,
  ~side: DateRangePickerTypes.side=?,
  ~sideOffset: float=?,
  ~alignOffset: float=?,
  ~collisionBoundaryRef: MenuV2Types.CollisionBoundaryRef.t=?, // ⓘ was `HTMLElement | HTMLElement[]` — opaque; build with CollisionBoundaryRef.fromHTMLElement / CollisionBoundaryRef.fromHTMLElements
  ~onInteractOutside: JSON.t => unit=?,
  ~onPointerDownOutside: JSON.t => unit=?,
  ~onFocusCapture: ReactEvent.Focus.t => unit=?,
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?,
) => React.element = "MenuV2Content"
