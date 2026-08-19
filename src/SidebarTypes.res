type sidebarStateChangeType =
  | @as("expanded") Expanded
  | @as("collapsed") Collapsed
  | @as("intermediate") Intermediate
type sidebarSidebarTokenTypeMaxWidthConfig = {
  withLeftPanel: string,
  withoutLeftPanel: string,
  iconOnly?: string,
}
type sidebarSidebarTokenTypeLeftPanelPaddingConfig = {
  x: string,
  y: string,
}
type sidebarSidebarTokenTypeLeftPanelItemConfig = {
  width: string,
  borderRadius: string,
  border: string, // ⚪ loose — was `{ active: Border<number | (string & {})>; default: Border<number | (string & {})>; hover: Border<number | (str`
  backgroundColor: string, // ⚪ loose — was `{ active: BackgroundColor; default: BackgroundColor; hover: BackgroundColor; }`
}
type sidebarSidebarTokenTypeLeftPanelConfig = {
  width: string,
  backgroundColor: string,
  borderRight: string,
  padding: sidebarSidebarTokenTypeLeftPanelPaddingConfig,
  gap: string,
  item: sidebarSidebarTokenTypeLeftPanelItemConfig,
}
type sidebarSidebarTokenTypeHeaderToggleButtonConfig = {
  backgroundColor: string, // ⚪ loose — was `{ active: BackgroundColor; default: BackgroundColor; hover: BackgroundColor; }`
  width: string,
}
type sidebarSidebarTokenTypeHeaderConfig = {
  backgroundColor: string,
  padding: sidebarSidebarTokenTypeLeftPanelPaddingConfig,
  gap: string,
  borderBottom: string,
  toggleButton: sidebarSidebarTokenTypeHeaderToggleButtonConfig,
}
type sidebarSidebarTokenTypeDirectoryConfig = {
  gap: string,
  paddingX: string,
  paddingY: string,
}
type sidebarSidebarTokenTypeFooterConfig = {
  backgroundColor: string,
  padding: sidebarSidebarTokenTypeLeftPanelPaddingConfig,
  borderTop: string,
}
type sidebarTokenType = {
  maxWidth: sidebarSidebarTokenTypeMaxWidthConfig,
  backgroundColor: string,
  borderRight: string,
  leftPanel: sidebarSidebarTokenTypeLeftPanelConfig,
  header: sidebarSidebarTokenTypeHeaderConfig,
  directory: sidebarSidebarTokenTypeDirectoryConfig,
  footer: sidebarSidebarTokenTypeFooterConfig,
}
type responsiveSidebarTokens = {
  sm: sidebarTokenType,
  lg: sidebarTokenType,
}
type sidebarMobileNavigationTokenTypeContainerConfig = {
  backgroundColor: string,
  background?: string,
  border: string,
  borderRadius: string,
  backdropFilter: string,
  zIndex?: string,
  transition?: string,
}
type sidebarMobileNavigationTokenTypeDrawerConfig = {
  borderRadius: string,
  borderTop: string,
}
type sidebarMobileNavigationTokenTypeRowItemConfig = {
  width: string,
  height: string,
  borderRadius: string,
  gap: string,
  backgroundColor: string, // ⚪ loose — was `{ active: BackgroundColor; default: BackgroundColor; }`
  color: string, // ⚪ loose — was `{ active: Color; default: Color; }`
  fontWeight: string,
  icon: string, // ⚪ loose — was `{ width: Width<number | (string & {})>; height: Height<number | (string & {})>; borderRadius: BorderRadius<num`
  text: string, // ⚪ loose — was `{ fontSize: FontSize<number | (string & {})>; fontWeight: FontWeight; textAlign: TextAlign; }`
}
type sidebarMobileNavigationTokenTypeRowPrimaryActionConfig = {
  width: string,
  height: string,
  borderRadius: string,
  background: string,
  boxShadow: string,
  color: string,
  icon: string, // ⚪ loose — was `{ width: Width<number | (string & {})>; height: Height<number | (string & {})>; }`
}
type sidebarMobileNavigationTokenTypeRowConfig = {
  padding: sidebarSidebarTokenTypeLeftPanelPaddingConfig,
  gap: string,
  item: sidebarMobileNavigationTokenTypeRowItemConfig,
  primaryAction: sidebarMobileNavigationTokenTypeRowPrimaryActionConfig,
}
type mobileNavigationTokenType = {
  container: sidebarMobileNavigationTokenTypeContainerConfig,
  backgroundColor: string,
  drawer: sidebarMobileNavigationTokenTypeDrawerConfig,
  padding: sidebarSidebarTokenTypeLeftPanelPaddingConfig,
  gap: string,
  row: sidebarMobileNavigationTokenTypeRowConfig,
}
type responsiveMobileNavigationTokens = {
  sm: mobileNavigationTokenType,
  lg: mobileNavigationTokenType,
}
type sidebarProps<'a> = {
  showLeftPanel?: bool,
  children: React.element,
  data: Nullable.t<array<DirectoryTypes.directoryData>>,
  leftPanel?: SharedTypes.leftPanelInfo,
  topbar: React.element,
  footer?: React.element,
  sidebarTopSlot?: React.element,
  sidebarCollapseKey?: string,
  merchantInfo?: SharedTypes.merchantInfo,
  rightActions?: React.element,
  enableTopbarAutoHide?: bool,
  isTopbarVisible?: bool,
  onTopbarVisibilityChange?: bool => unit,
  defaultIsTopbarVisible?: bool,
  isExpanded?: bool,
  onExpandedChange?: bool => unit,
  onSidebarStateChange?: sidebarStateChangeType => unit,
  defaultIsExpanded?: bool,
  panelOnlyMode?: bool,
  disableIntermediateState?: bool,
  iconOnlyMode?: bool,
  hideOnIconOnlyToggle?: bool,
  showPrimaryActionButton?: bool,
  primaryActionButtonProps?: ReactTypes.reactSidebarPropsPrimaryActionButtonPropsConfig,
  activeItem?: Nullable.t<string>,
  onActiveItemChange?: Nullable.t<string> => unit,
  defaultActiveItem?: Nullable.t<string>,
  onHoveringChange?: bool => unit,
  showHierarchyLines?: bool,
  hierarchyLineBorderRadius?: string,
  expandedItems?: DirectoryTypes.DirectoryExpandedItems.t,
  defaultExpandedItems?: DirectoryTypes.DirectoryExpandedItems.t,
  onExpandedItemsChange?: array<string> => unit,
  onItemExpand?: (DirectoryTypes.navbarItem, string) => 'a,
  enableVirtualization?: bool,
  virtualization?: DirectoryTypes.directoryVirtualizationConfig,
}
