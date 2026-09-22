type props = {
  item: SingleSelectV2Types.singleSelectV2ItemType2,
  selected: string,
  onSelect: string => unit,
  singleSelectTokens: HighchartsSharedSharedTypes.singleSelectV2TokensType,
  focusIdentityEnabled?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SubMenu"
