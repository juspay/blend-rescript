type onSidebarStateChange =
  | @as("expanded") Expanded
  | @as("collapsed") Collapsed
  | @as("intermediate") Intermediate
type sidebarV2ContainerConfig = {
  zIndex: string,
  backgroundColor: string,
  background?: string,
  border: string,
  borderWidth: string,
  borderRadius: string,
  backdropFilter: string,
  transition: string,
}
type sidebarV2LayoutConfig = {
  safeAreaOffset: string,
  floatingPadding: string,
  primaryActionMarginX: string,
  itemLabelMarginTop: string,
  itemLabelLineHeight: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  gap: string,
  rowPaddingTop: string,
  rowPaddingBottom: string,
  rowPaddingLeft: string,
  rowPaddingRight: string,
  rowGap: string,
}
type sidebarV2BackgroundColorConfig = {
  active: string,
  default: string,
}
type sidebarV2IconConfig = {
  width: string,
  height: string,
  borderRadius: string,
  transition: string,
  strokeWidth: float,
}
type sidebarV2TextConfig = {
  fontSize: string,
  fontWeight: string,
  textAlign: string,
}
type sidebarV2ItemConfig = {
  width: string,
  height: string,
  borderRadius: string,
  gap: string,
  backgroundColor: sidebarV2BackgroundColorConfig,
  color: sidebarV2BackgroundColorConfig,
  fontWeight: string,
  icon: sidebarV2IconConfig,
  text: sidebarV2TextConfig,
}
type sidebarV2IconConfig2 = {
  width: string,
  height: string,
  strokeWidth: float,
}
type sidebarV2PrimaryActionConfig = {
  width: string,
  height: string,
  borderRadius: string,
  background: string,
  boxShadow: string,
  color: string,
  icon: sidebarV2IconConfig2,
}
type mobileNavigationV2TokenType = {
  container: sidebarV2ContainerConfig,
  layout: sidebarV2LayoutConfig,
  item: sidebarV2ItemConfig,
  primaryAction: sidebarV2PrimaryActionConfig,
}
type responsiveMobileNavigationV2Tokens = {
  sm: mobileNavigationV2TokenType,
  lg: mobileNavigationV2TokenType,
}
type sidebarV2HoverPreviewConfig = {
  boxShadow: string,
}
type sidebarV2MaxWidthConfig = {
  withLeftPanel: string,
  withoutLeftPanel: string,
  iconOnly: string,
}
type sidebarV2ContainerConfig2 = {
  zIndex: string,
  backgroundColor: string,
  borderRight: string,
  hoverPreview: sidebarV2HoverPreviewConfig,
  maxWidth: sidebarV2MaxWidthConfig,
}
type sidebarV2BorderConfig = {
  active: string,
  default: string,
  hover: string,
}
type sidebarV2ItemConfig2 = {
  width: string,
  borderRadius: string,
  border: sidebarV2BorderConfig,
  backgroundColor: sidebarV2BorderConfig,
}
type sidebarV2LeftPanelConfig = {
  width: string,
  backgroundColor: string,
  borderRight: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  gap: string,
  item: sidebarV2ItemConfig2,
}
type sidebarV2ToggleButtonConfig = {
  borderRadius: string,
  padding: string,
  backgroundColor: sidebarV2BorderConfig,
  width: string,
  iconColor: string,
}
type sidebarV2HeaderConfig = {
  zIndex: string,
  backgroundColor: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  gap: string,
  borderBottom: string,
  borderBottomWidth: string,
  scrolledBorderColor: string,
  toggleButton: sidebarV2ToggleButtonConfig,
}
type sidebarV2DirectoryConfig = {
  gap: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
}
type sidebarV2FooterConfig = {
  zIndex: string,
  backgroundColor: string,
  gap: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  borderTop: string,
}
type sidebarV2PrimarySidebarConfig = {
  width: string,
}
type sidebarV2ItemConfig3 = {
  width: string,
  height: string,
  borderRadius: string,
  border: sidebarV2BorderConfig,
  backgroundColor: sidebarV2BorderConfig,
}
type sidebarV2SecondarySidebarConfig = {
  width: string,
  borderRight: string,
  backgroundColor: string,
  gap: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  item: sidebarV2ItemConfig3,
}
type sidebarV2TokensType = {
  container: sidebarV2ContainerConfig2,
  leftPanel: sidebarV2LeftPanelConfig,
  header: sidebarV2HeaderConfig,
  directory: sidebarV2DirectoryConfig,
  footer: sidebarV2FooterConfig,
  primarySidebar: sidebarV2PrimarySidebarConfig,
  secondarySidebar: sidebarV2SecondarySidebarConfig,
}
type responsiveSidebarV2Tokens = {
  sm: sidebarV2TokensType,
  lg: sidebarV2TokensType,
}
type secondarySidebarItem = {
  label: string,
  value: string,
  icon: React.element,
  badge?: SidebarTypes.tenantBadge,
}
type secondarySidebarInfo = {
  items: array<secondarySidebarItem>,
  selected: string,
  onSelect: string => unit,
  buttonProps?: ReactTypes.reactPrimaryActionButtonPropsConfig,
  footerSlot?: React.element,
}
type sidebarV2ItemsConfig = {
  label: string,
  value: string,
  icon?: React.element,
}
type sidebarV2MerchantInfoConfig = {
  items: array<sidebarV2ItemsConfig>,
  selected: string,
  onSelect: string => unit,
}
type sidebarV2MobileNavigationItem = {
  label: string,
  items?: array<DirectoryTypes.navbarItem>,
  leftSlot?: React.element,
  rightSlot?: React.element,
  onClick?: unit => unit,
  href?: string,
  isSelected?: bool,
  showOnMobile?: bool,
  sectionLabel?: string,
}
