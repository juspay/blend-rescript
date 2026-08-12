type props = {
  id: string,
  secondarySidebar?: EditorSharedTypes.secondarySidebarInfo,
  tokens: EditorSharedTypes.sidebarV2TokensType,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SecondarySidebar"
