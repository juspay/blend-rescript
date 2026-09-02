type props<'a> = {
  ref?: React.ref<Nullable.t<Dom.element>>,
  height?: string,
  children?: React.element,
  data?: array<HighchartsSharedSharedTypes.directoryData>,
  secondarySidebar?: HighchartsSharedSharedTypes.secondarySidebarInfo,
  topbar?: React.element,
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
  onSidebarStateChange?: HighchartsSharedSharedTypes.sidebarV2SidebarV2PropsOnSidebarStateChange => unit,
  enableIntermediateState?: bool,
  defaultIsExpanded?: bool,
  showMobilePrimaryActionButton?: bool,
  mobilePrimaryActionButtonProps?: ReactTypes.reactSidebarPropsPrimaryActionButtonPropsConfig,
  activeItem?: string,
  onActiveItemChange?: Nullable.t<string> => unit,
  defaultActiveItem?: string,
  showHierarchyLines?: bool,
  hierarchyLineBorderRadius?: string,
  expandedItems?: HighchartsSharedSharedTypes.DirectoryExpandedItems.t, // ⓘ was `DirectoryExpandedItems` — opaque; build with DirectoryExpandedItems.fromArray / DirectoryExpandedItems.fromSet
  defaultExpandedItems?: HighchartsSharedSharedTypes.DirectoryExpandedItems.t, // ⓘ was `DirectoryExpandedItems` — opaque; build with DirectoryExpandedItems.fromArray / DirectoryExpandedItems.fromSet
  onExpandedItemsChange?: array<string> => unit,
  onItemExpand?: (HighchartsSharedSharedTypes.navbarItem, string) => 'a,
  enableVirtualization?: bool,
  virtualization?: HighchartsSharedSharedTypes.directoryVirtualizationConfig,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a>> = "SidebarV2"
