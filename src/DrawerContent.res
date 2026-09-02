type props = {
  ...DrawerTypes.drawerContentProps,
  direction?: HighchartsSharedSharedTypes.dateRangePickerDateRangePickerPopoverConfigSide,
  showHandle?: bool,
  handle?: React.element,
  hasSnapPoints?: bool,
  contentDriven?: bool,
  width?: CommonTypes.stringOrNumber2,
  maxWidth?: CommonTypes.stringOrNumber2,
  offSet?: CommonTypes.stringOrNumber2,
  mobileOffset?: DrawerTypes.drawerMobileOffsetConfig,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "DrawerContent"
