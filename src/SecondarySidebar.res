type props = {
  id: string,
  secondarySidebar?: HighchartsSharedSharedTypes.secondarySidebarInfo,
  isExpanded?: bool,
  tokens: HighchartsSharedSharedTypes.sidebarV2TokensType,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SecondarySidebar"
