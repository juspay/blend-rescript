@module("@juspay/blend-design-system") @react.component
external make: (
  ~tokens: MultiSelectV2Types.multiSelectV2TokensType,
  ~primaryAction: MultiSelectV2Types.multiSelectV2PrimaryActionConfig=?,
  ~secondaryAction: MultiSelectV2Types.multiSelectV2SecondaryActionConfig=?,
  ~selected: array<string>,
  ~onClose: unit => unit,
) => React.element = "MultiSelectV2MenuActions"
