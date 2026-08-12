type props<'a> = {
  directoryData: Nullable.t<array<EditorSharedTypes.directoryData>>,
  idPrefix?: string,
  activeItem?: Nullable.t<string>,
  onActiveItemChange?: Nullable.t<string> => unit,
  defaultActiveItem?: Nullable.t<string>,
  iconOnlyMode?: bool,
  showHierarchyLines?: bool,
  hierarchyLineBorderRadius?: string,
  expandedItems?: EditorSharedTypes.DirectoryExpandedItems.t,
  defaultExpandedItems?: EditorSharedTypes.DirectoryExpandedItems.t,
  onExpandedItemsChange?: array<string> => unit,
  onItemExpand?: (EditorSharedTypes.navbarItem, string) => 'a,
  onEndReached?: unit => 'a,
  endReachedThreshold?: float,
  enableParentSelection?: bool,
  highlightActivePath?: bool,
  enableVirtualization?: bool,
  virtualization?: EditorSharedTypes.directoryVirtualizationConfig,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a>> = "Directory"
