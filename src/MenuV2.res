type props = {
  ...HighchartsSharedSharedTypes.menuBaseProps,
  trigger: React.element,
  dimensions?: HighchartsSharedSharedTypes.menuV2Dimensions,
  enableVirtualScrolling?: bool,
  virtualScrolling?: HighchartsSharedSharedTypes.menuV2VirtualScrollingConfig,
  asModal?: bool,
  collisionBoundaryRef?: HighchartsSharedSharedTypes.MenuV2CollisionBoundaryRef.t, // ⓘ was `HTMLElement | HTMLElement[]` — opaque; build with MenuV2CollisionBoundaryRef.fromHTMLElement / MenuV2CollisionBoundaryRef.fromHTMLElements
  triggerProps?: ReactTypes.reactSidebarPropsPrimaryActionButtonPropsConfig,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MenuV2"
