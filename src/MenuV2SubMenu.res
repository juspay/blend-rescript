type props = {
  item: EditorSharedTypes.menuV2ItemType,
  index: int,
  maxHeight?: string,
  selectionStyle?: EditorSharedTypes.menuSelectionStyle,
  selectionMode?: EditorSharedTypes.menuSelectionMode,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MenuV2SubMenu"
