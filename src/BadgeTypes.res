type badgeWidthConfig = {
  sm: string,
  md: string,
  lg: string,
}
type badgeDotConfig = {
  width: badgeWidthConfig,
  height: badgeWidthConfig,
  borderRadius: string,
}
type badgePillConfig = {
  minWidth: badgeWidthConfig,
  height: badgeWidthConfig,
  paddingLeft: badgeWidthConfig,
  paddingRight: badgeWidthConfig,
  borderRadius: badgeWidthConfig,
}
type badgeBackgroundColorConfig = {
  alert: string,
  neutral: string,
  warning: string,
  primary: string,
  success: string,
}
type badgeTextConfig = {
  color: string,
  fontSize: badgeWidthConfig,
  fontWeight: string,
  lineHeight: badgeWidthConfig,
}
type badgePositionConfig = {
  offset: badgeWidthConfig,
}
type badgeSmConfig = {
  dot: badgeDotConfig,
  pill: badgePillConfig,
  backgroundColor: badgeBackgroundColorConfig,
  text: badgeTextConfig,
  position: badgePositionConfig,
}
type responsiveBadgeTokens = {
  sm: badgeSmConfig,
  lg: badgeSmConfig,
}
