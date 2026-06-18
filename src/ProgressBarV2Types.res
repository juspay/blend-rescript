type progressBarV2Size =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type progressBarV2Variant =
  | @as("linear") Linear
  | @as("circular") Circular
type progressBarV2Appearance =
  | @as("solid") Solid
  | @as("segmented") Segmented
type progressBarV2HeightConfig = {
  sm: string,
  md: string,
  lg: string,
}
type progressBarV2BackgroundColorConfig = {
  solid: string,
  segmented: string,
}
type progressBarV2FillConfig = {
  backgroundColor: progressBarV2BackgroundColorConfig,
  borderRadius: progressBarV2BackgroundColorConfig,
}
type progressBarV2EmptyConfig = {
  backgroundColor: progressBarV2BackgroundColorConfig,
  backgroundImage: progressBarV2BackgroundColorConfig,
  backgroundSize: progressBarV2BackgroundColorConfig,
}
type progressBarV2LinearConfig = {
  height: progressBarV2HeightConfig,
  fill: progressBarV2FillConfig,
  empty: progressBarV2EmptyConfig,
  borderRadius: progressBarV2BackgroundColorConfig,
  gap: string,
}
type progressBarV2StrokeWidthConfig = {
  sm: float,
  md: float,
  lg: float,
}
type progressBarV2CircularConfig = {
  size: progressBarV2HeightConfig,
  strokeWidth: progressBarV2StrokeWidthConfig,
  stroke: progressBarV2BackgroundColorConfig,
  background: progressBarV2BackgroundColorConfig,
  dashArray: progressBarV2BackgroundColorConfig,
  motion: string,
}
type progressBarV2LabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type progressBarV2TokenType = {
  linear: progressBarV2LinearConfig,
  circular: progressBarV2CircularConfig,
  label: progressBarV2LabelConfig,
  transition: string,
}
type responsiveProgressBarV2Tokens = {
  sm: progressBarV2TokenType,
  lg: progressBarV2TokenType,
}
