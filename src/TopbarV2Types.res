type topbarV2SeparatorConfig = {
  width: string,
  color: string,
}
type topbarV2BackgroundColorConfig = {
  default: string,
  hover: string,
  active: string,
}
type topbarV2IconConfig = {
  size: string,
  color: string,
}
type topbarV2ToggleButtonConfig = {
  borderRadius: string,
  padding: string,
  backgroundColor: topbarV2BackgroundColorConfig,
  transition: string,
  icon: topbarV2IconConfig,
}
type topbarV2ActionButtonConfig = {
  borderRadius: string,
  padding: string,
  minWidth: string,
  height: string,
  backgroundColor: topbarV2BackgroundColorConfig,
  transition: string,
  icon: topbarV2IconConfig,
}
type topbarV2TenantIconButtonConfig = {
  borderRadius: string,
  minHeight: string,
  backgroundColor: topbarV2BackgroundColorConfig,
  transition: string,
}
type topbarV2TextConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type topbarV2MerchantSelectTriggerConfig = {
  gap: string,
  icon: topbarV2IconConfig,
  text: topbarV2TextConfig,
}
type topbarV2LeftSectionConfig = {
  gap: string,
  maxHeight: string,
  divider: topbarV2TextConfig,
}
type topbarV2RightSectionConfig = {
  gap: string,
}
type topbarV2TokenType = {
  zIndex: string,
  height: string,
  borderBottom: string,
  backgroundColor: string,
  backdropFilter: string,
  padding: string,
  gap: string,
  separator: topbarV2SeparatorConfig,
  toggleButton: topbarV2ToggleButtonConfig,
  actionButton: topbarV2ActionButtonConfig,
  tenantIconButton: topbarV2TenantIconButtonConfig,
  merchantSelectTrigger: topbarV2MerchantSelectTriggerConfig,
  leftSection: topbarV2LeftSectionConfig,
  rightSection: topbarV2RightSectionConfig,
  sidebarSection: topbarV2RightSectionConfig,
}
type responsiveTopbarV2Tokens = {
  sm: topbarV2TokenType,
  lg: topbarV2TokenType,
}
type topbarV2ItemsConfig = {
  label: string,
  value: string,
  icon?: React.element,
}
type merchantInfoV2 = {
  items: array<topbarV2ItemsConfig>,
  selected: string,
  onSelect: string => unit,
}
