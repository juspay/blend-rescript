type props = {
  tokens: HighchartsSharedSharedTypes.multiSelectV2TokensType,
  primaryAction?: HighchartsSharedSharedTypes.multiSelectV2PrimaryActionConfig,
  secondaryAction?: HighchartsSharedSharedTypes.multiSelectV2SecondaryActionConfig,
  selected: array<string>,
  onClose: unit => unit,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectV2MenuActions"
