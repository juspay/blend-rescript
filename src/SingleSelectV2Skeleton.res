@module("@juspay/blend-design-system") @react.component
external make: (
  ~singleSelectTokens: SingleSelectV2Types.singleSelectV2TokensType,
  ~skeleton: SelectV2Types.selectV2SkeletonProps,
) => React.element = "SingleSelectV2Skeleton"
