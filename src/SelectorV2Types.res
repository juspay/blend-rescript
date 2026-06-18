type selectorV2Size =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type selectorV2SlotConfig = {
  slot: React.element,
  maxHeight?: string,
}
type selectorV2MaxLengthConfig = {
  label?: float,
  subLabel?: float,
}
type selectorV2HeightConfig = {
  sm: string,
  md: string,
  lg: string,
}
type selectorV2CheckedConfig = {
  default?: string,
  hover?: string,
  focus?: string,
  error?: string,
  disabled?: string,
}
type selectorV2BackgroundColorConfig = {
  checked?: selectorV2CheckedConfig,
  unchecked?: selectorV2CheckedConfig,
  indeterminate?: selectorV2CheckedConfig,
}
type selectorV2CheckedConfig2 = {
  default?: string,
  disabled?: string,
}
type selectorV2ColorConfig = {
  checked?: selectorV2CheckedConfig2,
  unchecked?: selectorV2CheckedConfig2,
  indeterminate?: selectorV2CheckedConfig2,
}
type selectorV2IconConfig = {
  color: selectorV2ColorConfig,
  width: selectorV2HeightConfig,
  height: selectorV2HeightConfig,
  strokeWidth: selectorV2HeightConfig,
}
type selectorV2CheckboxConfig = {
  height: selectorV2HeightConfig,
  width: selectorV2HeightConfig,
  opacity: string,
  backgroundColor: selectorV2BackgroundColorConfig,
  borderRadius: selectorV2HeightConfig,
  border: selectorV2BackgroundColorConfig,
  outline: string,
  outlineOffset: string,
  boxShadow: string,
  icon: selectorV2IconConfig,
}
type selectorV2ColorConfig2 = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type selectorV2MaxHeightConfig = {
  sm: string,
  md: string,
  lg: string,
}
type selectorV2SlotConfig2 = {
  maxHeight: selectorV2MaxHeightConfig,
}
type selectorV2LabelConfig = {
  gap: string,
  color: selectorV2ColorConfig2,
  fontSize: selectorV2HeightConfig,
  fontWeight: selectorV2HeightConfig,
  lineHeight: selectorV2HeightConfig,
  slot: selectorV2SlotConfig2,
}
type selectorV2SubLabelConfig = {
  color: selectorV2ColorConfig2,
  fontSize: selectorV2HeightConfig,
  fontWeight: selectorV2HeightConfig,
  lineHeight: selectorV2HeightConfig,
}
type selectorV2RequiredConfig = {
  color: string,
}
type selectorV2ContentConfig = {
  gap: string,
  label: selectorV2LabelConfig,
  subLabel: selectorV2SubLabelConfig,
  required: selectorV2RequiredConfig,
}
type checkboxV2TokensType = {
  gap: string,
  checkbox: selectorV2CheckboxConfig,
  content: selectorV2ContentConfig,
}
type responsiveCheckboxV2Tokens = {
  sm: checkboxV2TokensType,
  lg: checkboxV2TokensType,
}
type selectorV2GroupConfig = {
  gap: string,
}
type selectorV2BackgroundColorConfig2 = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type selectorV2InactiveConfig = {
  backgroundColor: selectorV2BackgroundColorConfig2,
  borderColor: selectorV2BackgroundColorConfig2,
}
type selectorV2IndicatorConfig = {
  inactive: selectorV2InactiveConfig,
  active: selectorV2InactiveConfig,
}
type selectorV2BackgroundColorConfig3 = {
  default: string,
  focus: string,
  disabled: string,
}
type selectorV2ActiveConfig = {
  backgroundColor: selectorV2BackgroundColorConfig3,
}
type selectorV2ActiveIndicatorConfig = {
  active: selectorV2ActiveConfig,
}
type selectorV2InactiveConfig2 = {
  default: float,
  hover: float,
  focus: float,
  error: float,
  disabled: float,
}
type selectorV2BorderWidthConfig = {
  inactive: selectorV2InactiveConfig2,
  active: selectorV2InactiveConfig2,
}
type selectorV2RadioConfig = {
  indicator: selectorV2IndicatorConfig,
  activeIndicator: selectorV2ActiveIndicatorConfig,
  height: selectorV2HeightConfig,
  borderWidth: selectorV2BorderWidthConfig,
}
type radioV2TokensType = {
  gap: string,
  group: selectorV2GroupConfig,
  radio: selectorV2RadioConfig,
  content: selectorV2ContentConfig,
}
type responsiveRadioV2Tokens = {
  sm: radioV2TokensType,
  lg: radioV2TokensType,
}
type selectorV2BackgroundColorConfig4 = {
  checked: selectorV2ColorConfig2,
  unchecked: selectorV2ColorConfig2,
}
type selectorV2ThumbConfig = {
  backgroundColor: string,
  border: string,
  width: selectorV2HeightConfig,
  height: selectorV2HeightConfig,
  outline: string,
}
type selectorV2SwitchConfig = {
  height: selectorV2HeightConfig,
  width: selectorV2HeightConfig,
  backgroundColor: selectorV2BackgroundColorConfig4,
  thumb: selectorV2ThumbConfig,
}
type switchV2TokensType = {
  gap: string,
  @as("switch") switch_: selectorV2SwitchConfig,
  content: selectorV2ContentConfig,
}
type responsiveSwitchV2Tokens = {
  sm: switchV2TokensType,
  lg: switchV2TokensType,
}
