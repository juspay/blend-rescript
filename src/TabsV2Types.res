type orientation =
  | @as("horizontal") Horizontal
  | @as("vertical") Vertical
type activationMode =
  | @as("manual") Manual
  | @as("automatic") Automatic
type tabsV2Variant =
  | @as("boxed") Boxed
  | @as("floating") Floating
  | @as("underline") Underline
  | @as("pills") Pills
type tabsV2Size =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tabsV2BackgroundColorConfig = {
  boxed: string,
  floating: string,
  underline: string,
  pills: string,
}
type tabsV2BorderRadiusConfig = {
  sm: tabsV2BackgroundColorConfig,
  md: tabsV2BackgroundColorConfig,
  lg: tabsV2BackgroundColorConfig,
}
type tabsV2BoxedConfig = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type tabsV2SmConfig = {
  boxed: tabsV2BoxedConfig,
  floating: tabsV2BoxedConfig,
  underline: tabsV2BoxedConfig,
  pills: tabsV2BoxedConfig,
}
type tabsV2PaddingConfig = {
  sm: tabsV2SmConfig,
  md: tabsV2SmConfig,
  lg: tabsV2SmConfig,
}
type tabsV2PositionConfig = {
  bottom: string,
}
type tabsV2ActiveIndicatorConfig = {
  height: string,
  color: string,
  position: tabsV2PositionConfig,
  transition: string,
  zIndex: string,
}
type tabsV2StickyHeaderConfig = {
  boxShadow: string,
  zIndex: string,
}
type tabsV2IconConfig = {
  maxWidth: string,
}
type tabsV2BoxedConfig2 = {
  disabled: string,
  default: string,
  hover: string,
  active: string,
}
type tabsV2BackgroundColorConfig2 = {
  boxed: tabsV2BoxedConfig2,
  floating: tabsV2BoxedConfig2,
  underline: tabsV2BoxedConfig2,
  pills: tabsV2BoxedConfig2,
}
type tabsV2SmConfig2 = {
  boxed: string,
  floating: string,
  underline: string,
  pills: string,
}
type tabsV2BorderRadiusConfig2 = {
  sm: tabsV2SmConfig2,
  md: tabsV2SmConfig2,
  lg: tabsV2SmConfig2,
}
type tabsV2FontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type tabsV2TextConfig = {
  color: tabsV2SmConfig2,
  fontSize: tabsV2FontSizeConfig,
  fontWeight: tabsV2FontSizeConfig,
}
type tabsV2CloseButtonConfig = {
  width: string,
  borderRadius: string,
  backgroundColor: tabsV2BoxedConfig2,
}
type tabsV2TriggerConfig = {
  gap: string,
  icon: tabsV2IconConfig,
  backgroundColor: tabsV2BackgroundColorConfig2,
  borderRadius: tabsV2BorderRadiusConfig2,
  border: tabsV2BackgroundColorConfig,
  padding: tabsV2BorderRadiusConfig2,
  text: tabsV2TextConfig,
  closeButton: tabsV2CloseButtonConfig,
  transition: string,
}
type tabsV2TabListConfig = {
  gap: string,
  backgroundColor: tabsV2BackgroundColorConfig,
  borderRadius: tabsV2BorderRadiusConfig,
  padding: tabsV2PaddingConfig,
  activeIndicator: tabsV2ActiveIndicatorConfig,
  stickyHeader: tabsV2StickyHeaderConfig,
  trigger: tabsV2TriggerConfig,
}
type tabsV2TokensType = {
  width: string,
  outline: string,
  tabList: tabsV2TabListConfig,
}
type responsiveTabsV2Tokens = {
  sm: tabsV2TokensType,
  lg: tabsV2TokensType,
}
