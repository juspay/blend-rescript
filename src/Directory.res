type props<'a> = {
  directoryData: Nullable.t<array<HighchartsSharedSharedTypes.directoryData>>,
  idPrefix?: string,
  activeItem?: Nullable.t<string>,
  onActiveItemChange?: Nullable.t<string> => unit,
  defaultActiveItem?: Nullable.t<string>,
  iconOnlyMode?: bool,
  showHierarchyLines?: bool,
  hierarchyLineBorderRadius?: string,
  expandedItems?: HighchartsSharedSharedTypes.DirectoryExpandedItems.t, // ⓘ was `DirectoryExpandedItems` — opaque; build with DirectoryExpandedItems.fromArray / DirectoryExpandedItems.fromSet
  defaultExpandedItems?: HighchartsSharedSharedTypes.DirectoryExpandedItems.t, // ⓘ was `DirectoryExpandedItems` — opaque; build with DirectoryExpandedItems.fromArray / DirectoryExpandedItems.fromSet
  onExpandedItemsChange?: array<string> => unit,
  onItemExpand?: (HighchartsSharedSharedTypes.navbarItem, string) => 'a,
  onEndReached?: unit => 'a,
  endReachedThreshold?: float,
  enableParentSelection?: bool,
  highlightActivePath?: bool,
  enableVirtualization?: bool,
  virtualization?: HighchartsSharedSharedTypes.directoryVirtualizationConfig,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a>> = "Directory"
