type drawerDirection =
  | @as("top") Top
  | @as("left") Left
  | @as("bottom") Bottom
  | @as("right") Right
type overflowY =
  | @as("auto") Auto
  | @as("hidden") Hidden
  | @as("scroll") Scroll
  | @as("visible") Visible
type drawerBorderRadiusConfig = {
  topLeft: string,
  topRight: string,
  bottomLeft: string,
  bottomRight: string,
}
type drawerOverlayConfig = {
  backgroundColor: string,
}
type drawerOffsetConfig = {
  top: string,
  bottom: string,
  left: string,
  right: string,
}
type drawerPaddingConfig = {
  x: string,
  y: string,
}
type drawerHandleConfig = {
  backgroundColor: string,
  borderRadius: string,
  width: string,
  height: string,
}
type drawerContentConfig = {
  backgroundColor: string,
  padding: drawerPaddingConfig,
  handle: drawerHandleConfig,
}
type drawerTokensType = {
  borderRadius: drawerBorderRadiusConfig,
  overlay: drawerOverlayConfig,
  offset: drawerOffsetConfig,
  content: drawerContentConfig,
}
type responsiveDrawerTokens = {
  sm: drawerTokensType,
  lg: drawerTokensType,
}
type drawerMobileOffsetConfig = {
  top?: string,
  bottom?: string,
  left?: string,
  right?: string,
}
type selectDrawerItem = {
  value: string,
  label: string,
  subLabel?: string,
  slot1?: React.element,
  disabled?: bool,
}
type selectDrawerGroup = {
  groupLabel?: string,
  items: array<selectDrawerItem>,
  showSeparator?: bool,
}
type drawerItemsConfig2 = {
  value: string,
  label: string,
  subLabel?: string,
  slot1?: React.element,
  disabled?: bool,
  nestedItems?: array<selectDrawerGroup>,
}
type drawerItemsConfig = {
  groupLabel?: string,
  items: array<drawerItemsConfig2>,
  showSeparator?: bool,
}
