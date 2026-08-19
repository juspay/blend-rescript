type props = {
  footer?: React.element,
  sidebarState: EditorSharedTypes.sidebarV2SidebarV2PropsOnSidebarStateChange,
  tokens: EditorSharedTypes.sidebarV2TokensType,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SidebarV2Footer"
