type props = {
  footer?: React.element,
  sidebarState: HighchartsSharedSharedTypes.sidebarV2SidebarV2PropsOnSidebarStateChange,
  tokens: HighchartsSharedSharedTypes.sidebarV2TokensType,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SidebarV2Footer"
