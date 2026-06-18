type tagV2Size =
  | @as("xs") Xs
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tagV2Type =
  | @as("noFill") NoFill
  | @as("attentive") Attentive
  | @as("subtle") Subtle
type tagV2SubType =
  | @as("rounded") Rounded
  | @as("squarical") Squarical
type color =
  | @as("neutral") Neutral
  | @as("primary") Primary
  | @as("success") Success
  | @as("error") Error
  | @as("warning") Warning
  | @as("purple") Purple
type tagV2LeftSlotConfig = {
  slot: React.element,
  maxHeight?: string,
}
type tagV2SkeletonConfig = {
  showSkeleton?: bool,
  skeletonVariant?: SkeletonTypes.skeletonVariant,
}
type tagV2NoFillConfig = {
  neutral: string,
  primary: string,
  success: string,
  error: string,
  warning: string,
  purple: string,
}
type tagV2BorderConfig = {
  noFill: tagV2NoFillConfig,
  attentive: tagV2NoFillConfig,
  subtle: tagV2NoFillConfig,
}
type tagV2XsConfig = {
  rounded: string,
  squarical: string,
}
type tagV2BorderRadiusConfig = {
  xs: tagV2XsConfig,
  sm: tagV2XsConfig,
  md: tagV2XsConfig,
  lg: tagV2XsConfig,
}
type tagV2HeightConfig = {
  xs: string,
  sm: string,
  md: string,
  lg: string,
}
type tagV2PaddingConfig = {
  top: tagV2HeightConfig,
  bottom: tagV2HeightConfig,
  left: tagV2HeightConfig,
  right: tagV2HeightConfig,
}
type tagV2LeftSlotConfig2 = {
  maxHeight: tagV2HeightConfig,
}
type tagV2TextConfig = {
  color: tagV2BorderConfig,
  fontSize: tagV2HeightConfig,
  fontWeight: tagV2HeightConfig,
  lineHeight: tagV2HeightConfig,
}
type tagV2SmConfig = {
  border: tagV2BorderConfig,
  borderRadius: tagV2BorderRadiusConfig,
  backgroundColor: tagV2BorderConfig,
  height: tagV2HeightConfig,
  padding: tagV2PaddingConfig,
  gap: string,
  leftSlot: tagV2LeftSlotConfig2,
  rightSlot: tagV2LeftSlotConfig2,
  text: tagV2TextConfig,
}
type responsiveTagV2Tokens = {
  sm: tagV2SmConfig,
  lg: tagV2SmConfig,
}
