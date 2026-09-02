type props = {
  @as("open") open_?: bool,
  onOpenChange?: bool => unit,
  direction?: DrawerTypes.drawerDirection,
  modal?: bool,
  dismissible?: bool,
  showHandle?: bool,
  handle?: React.element,
  nested?: bool,
  snapPoints?: array<CommonTypes.stringOrNumber2>,
  activeSnapPoint?: Nullable.t<CommonTypes.stringOrNumber2>,
  onSnapPointChange?: Nullable.t<CommonTypes.stringOrNumber2> => unit,
  fadeFromIndex?: float,
  snapToSequentialPoint?: bool,
  disableDrag?: bool,
  mobileOffset?: DrawerTypes.drawerMobileOffsetConfig,
  children: React.element,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "Drawer"
