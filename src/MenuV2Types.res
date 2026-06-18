type menuV2SearchIconConfig = {
  width: string,
}
type menuV2LabelConfig = {
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
  color: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  marginTop: string,
  marginRight: string,
  marginBottom: string,
  marginLeft: string,
}
type stateToken = {
  disabled: string,
  default: string,
  hover: string,
  active: string,
  focus: string,
  focusVisible: string,
  selected: string,
}
type menuV2ActionConfig = {
  primary: stateToken,
  danger: stateToken,
}
type menuV2VariantToken = {
  default: stateToken,
  action: menuV2ActionConfig,
}
type menuV2VariantToken2 = {
  default: stateToken,
  action: menuV2ActionConfig,
}
type menuV2SubTextConfig = {
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
  color: menuV2VariantToken2,
}
type menuV2LeftSlotConfig = {
  maxWidth: string,
  maxHeight: string,
}
type menuV2RightChevronConfig = {
  color: string,
  width: string,
}
type menuV2TextConfig = {
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
  color: menuV2VariantToken2,
  subText: menuV2SubTextConfig,
  leftSlot: menuV2LeftSlotConfig,
  rightChevron: menuV2RightChevronConfig,
}
type menuV2ItemConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  marginTop: string,
  marginRight: string,
  marginBottom: string,
  marginLeft: string,
  gap: string,
  borderRadius: string,
  backgroundColor: menuV2VariantToken,
  text: menuV2TextConfig,
}
type menuV2GroupConfig = {
  label: menuV2LabelConfig,
  item: menuV2ItemConfig,
}
type menuV2SeparatorConfig = {
  color: string,
  height: string,
  marginTop: string,
  marginRight: string,
  marginBottom: string,
  marginLeft: string,
}
type menuV2TokensType = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  boxShadow: string,
  zIndex: string,
  minWidth: string,
  maxWidth: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  searchIcon: menuV2SearchIconConfig,
  group: menuV2GroupConfig,
  separator: menuV2SeparatorConfig,
}
type responsiveMenuV2TokensType = {
  sm: menuV2TokensType,
  lg: menuV2TokensType,
}
