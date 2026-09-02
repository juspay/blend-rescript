type props<'a> = {
  sidebarTopSlot?: React.element,
  merchantInfo?: HighchartsSharedSharedTypes.sidebarV2MerchantInfoConfig,
  isExpanded: bool,
  isScrolled: bool,
  sidebarCollapseKey: string,
  onToggle: unit => unit,
  sidebarNavId?: string,
  data: Nullable.t<array<HighchartsSharedSharedTypes.directoryData>>,
  idPrefix: string,
  activeItem?: Nullable.t<string>,
  onActiveItemChange?: Nullable.t<string> => unit,
  defaultActiveItem?: Nullable.t<string>,
  iconOnlyMode?: bool,
  hideToggleButton?: bool,
  footer?: React.element,
  setIsHovering?: bool => unit,
  sidebarState?: HighchartsSharedSharedTypes.sidebarV2SidebarV2PropsOnSidebarStateChange,
  tokens: HighchartsSharedSharedTypes.sidebarV2TokensType,
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
external make: React.component<props<'a>> = "SidebarV2Panel"
