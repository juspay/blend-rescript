type radioSize =
  | @as("sm") Sm
  | @as("md") Md
type radioMaxLengthConfig = {
  label?: float,
  subtext?: float,
}
type radioGroupConfig = {
  gap: string,
}
type radioBackgroundColorConfig = {
  disabled: string,
  default: string,
  hover: string,
  error: string,
}
type radioInactiveConfig = {
  backgroundColor: radioBackgroundColorConfig,
  borderColor: radioBackgroundColorConfig,
}
type radioIndicatorConfig = {
  inactive: radioInactiveConfig,
  active: radioInactiveConfig,
}
type radioBackgroundColorConfig2 = {
  disabled: string,
  default: string,
}
type radioActiveConfig = {
  backgroundColor: radioBackgroundColorConfig2,
}
type radioActiveIndicatorConfig = {
  active: radioActiveConfig,
}
type radioFontSizeConfig = {
  sm: string,
  md: string,
}
type radioLabelConfig = {
  gap: string,
  color: radioBackgroundColorConfig,
  fontSize: radioFontSizeConfig,
  fontWeight: radioFontSizeConfig,
}
type radioSublabelConfig = {
  color: radioBackgroundColorConfig,
  fontSize: radioFontSizeConfig,
  fontWeight: radioFontSizeConfig,
}
type radioContentConfig = {
  label: radioLabelConfig,
  sublabel: radioSublabelConfig,
}
type radioInactiveConfig2 = {
  disabled: float,
  default: float,
  hover: float,
  error: float,
}
type radioBorderWidthConfig = {
  inactive: radioInactiveConfig2,
  active: radioInactiveConfig2,
}
type radioRequiredConfig = {
  color: string,
}
type radioSmConfig = {
  gap: string,
  group: radioGroupConfig,
  indicator: radioIndicatorConfig,
  activeIndicator: radioActiveIndicatorConfig,
  content: radioContentConfig,
  height: radioFontSizeConfig,
  borderWidth: radioBorderWidthConfig,
  slot: radioFontSizeConfig,
  required: radioRequiredConfig,
}
type responsiveRadioTokens = {
  sm: radioSmConfig,
  lg: radioSmConfig,
}
