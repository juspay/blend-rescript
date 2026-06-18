type tooltipV2Side =
  | @as("top") Top
  | @as("right") Right
  | @as("left") Left
  | @as("bottom") Bottom
type tooltipV2Align =
  | @as("start") Start
  | @as("end") End
  | @as("center") Center
type tooltipV2Size =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tooltipV2SlotDirection =
  | @as("left") Left
  | @as("right") Right
type tooltipV2BorderRadiusConfig = {
  sm: string,
  md: string,
  lg: string,
}
type tooltipV2TextConfig = {
  color: string,
  fontWeight: tooltipV2BorderRadiusConfig,
  fontSize: tooltipV2BorderRadiusConfig,
  lineHeight: tooltipV2BorderRadiusConfig,
}
type tooltipV2TokensType = {
  background: string,
  borderRadius: tooltipV2BorderRadiusConfig,
  maxWidth: tooltipV2BorderRadiusConfig,
  padding: tooltipV2BorderRadiusConfig,
  gap: tooltipV2BorderRadiusConfig,
  text: tooltipV2TextConfig,
  zIndex: string,
}
type responsiveTooltipV2Tokens = {
  sm: tooltipV2TokensType,
  lg: tooltipV2TokensType,
}
