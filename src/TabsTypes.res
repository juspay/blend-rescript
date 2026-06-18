type tabsVariant =
  | @as("boxed") Boxed
  | @as("floating") Floating
  | @as("underline") Underline
  | @as("pills") Pills
type tabsSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tabItem = {
  value: string,
  label: string,
  content: React.element,
  disable?: bool,
  showSkeleton?: bool,
  skeletonVariant?: SkeletonTypes.skeletonVariant,
  leftSlot?: React.element,
  rightSlot?: React.element,
  newItem?: bool,
}
type tabsBoxedConfig = {
  disabled: string,
  default: string,
  hover: string,
  active: string,
}
type tabsBackgroundColorConfig = {
  boxed: tabsBoxedConfig,
  floating: tabsBoxedConfig,
  underline: tabsBoxedConfig,
  pills: tabsBoxedConfig,
}
type tabsSmConfig = {
  boxed: string,
  floating: string,
  underline: string,
  pills: string,
}
type tabsBorderRadiusConfig = {
  sm: tabsSmConfig,
  md: tabsSmConfig,
  lg: tabsSmConfig,
}
type tabsBoxedConfig2 = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type tabsSmConfig2 = {
  boxed: tabsBoxedConfig2,
  floating: tabsBoxedConfig2,
  underline: tabsBoxedConfig2,
  pills: tabsBoxedConfig2,
}
type tabsPaddingConfig = {
  sm: tabsSmConfig2,
  md: tabsSmConfig2,
  lg: tabsSmConfig2,
}
type tabsBoxedConfig3 = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type tabsSmConfig3 = {
  boxed: tabsBoxedConfig3,
  floating: tabsBoxedConfig3,
  underline: tabsBoxedConfig3,
  pills: tabsBoxedConfig3,
}
type tabsPaddingConfig2 = {
  sm: tabsSmConfig3,
  md: tabsSmConfig3,
  lg: tabsSmConfig3,
}
type tabsContainerConfig = {
  backgroundColor: tabsSmConfig,
  borderRadius: tabsBorderRadiusConfig,
  padding: tabsPaddingConfig2,
}
type tabsActiveIndicatorConfig = {
  height: string,
  color: string,
}
type tabsBoxedConfig4 = {
  disabled: string,
  default: string,
  hover: string,
  active: string,
}
type tabsColorConfig = {
  boxed: tabsBoxedConfig4,
  floating: tabsBoxedConfig4,
  underline: tabsBoxedConfig4,
  pills: tabsBoxedConfig4,
}
type tabsFontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type tabsTextConfig = {
  color: tabsColorConfig,
  fontSize: tabsFontSizeConfig,
  fontWeight: tabsFontSizeConfig,
}
type tabsTriggerConfig = {
  gap: string,
  activeIndicator: tabsActiveIndicatorConfig,
  text: tabsTextConfig,
}
type tabsTokensType = {
  gap: string,
  backgroundColor: tabsBackgroundColorConfig,
  borderRadius: tabsBorderRadiusConfig,
  padding: tabsPaddingConfig,
  border: tabsSmConfig,
  borderBottom: tabsSmConfig,
  container: tabsContainerConfig,
  trigger: tabsTriggerConfig,
}
type responsiveTabsTokens = {
  sm: tabsTokensType,
  lg: tabsTokensType,
}
