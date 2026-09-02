type props = {
  skeleton: StatCardV2Types.statCardV2SkeletonProps,
  maxWidth: CommonTypes.stringOrNumber2,
  minWidth: CommonTypes.stringOrNumber2,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "StatCardV2Skeleton"
