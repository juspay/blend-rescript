@module("@juspay/blend-design-system") @react.component
external make: (
  ~trigger: React.element,
  ~items: array<MenuV2Types.menuV2GroupType>=?,
  ~dimensions: MenuV2Types.menuV2Dimensions=?,
  ~enableSearch: bool=?,
  ~searchPlaceholder: string=?,
  ~enableVirtualScrolling: bool=?,
  ~virtualScrolling: MenuV2Types.menuV2VirtualScrollingConfig=?,
  @as("open") ~open_: bool=?,
  ~onOpenChange: bool => unit=?,
  ~asModal: bool=?,
  ~alignment: MenuV2Types.menuV2Alignment=?,
  ~side: MenuV2Types.menuV2Side=?,
  ~sideOffset: float=?,
  ~alignOffset: float=?,
  ~collisionBoundaryRef: MenuV2Types.CollisionBoundaryRef.t=?, // ⓘ was `HTMLElement | HTMLElement[]` — opaque; build with CollisionBoundaryRef.fromHTMLElement / CollisionBoundaryRef.fromHTMLElements
  ~triggerProps: ReactTypes.reactPrimaryActionButtonPropsConfig=?,
) => React.element = "MenuV2"
