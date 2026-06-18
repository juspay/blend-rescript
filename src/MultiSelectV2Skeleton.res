@module("@juspay/blend-design-system") @react.component
external make: (
  ~multiSelectTokens: EditorSharedTypes.multiSelectV2TokensType,
  ~skeleton: SelectV2Types.selectV2SkeletonProps,
) => React.element = "MultiSelectV2Skeleton"
