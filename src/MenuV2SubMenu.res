type props = {
  item: HighchartsSharedSharedTypes.menuV2ItemType,
  index: int,
  maxHeight?: string,
  selectionStyle?: HighchartsSharedSharedTypes.menuSelectionStyle,
  selectionMode?: HighchartsSharedSharedTypes.menuSelectionMode,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MenuV2SubMenu"
