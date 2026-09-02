type props = {
  sidebarTopSlot?: React.element,
  merchantInfo?: HighchartsSharedSharedTypes.sidebarV2MerchantInfoConfig,
  isExpanded: bool,
  isScrolled: bool,
  sidebarCollapseKey: string,
  onToggle: unit => unit,
  sidebarNavId?: string,
  hideToggleButton?: bool,
  iconOnlyMode?: bool,
  tokens: HighchartsSharedSharedTypes.sidebarV2TokensType,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SidebarV2Header"
