type topbarBackgroundColorConfig = {
  active: string,
  default: string,
  hover: string,
}
type topbarIconConfig = {
  size: string,
  color: string,
}
type topbarToggleButtonConfig = {
  borderRadius: string,
  padding: string,
  backgroundColor: topbarBackgroundColorConfig,
  transition: string,
  icon: topbarIconConfig,
}
type topbarActionButtonConfig = {
  borderRadius: string,
  padding: string,
  minWidth: string,
  height: string,
  backgroundColor: topbarBackgroundColorConfig,
  transition: string,
  icon: topbarIconConfig,
}
type topbarTenantIconButtonConfig = {
  borderRadius: string,
  minHeight: string,
  backgroundColor: topbarBackgroundColorConfig,
  transition: string,
}
type topbarTextConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type topbarMerchantSelectTriggerConfig = {
  gap: string,
  icon: topbarIconConfig,
  text: topbarTextConfig,
}
type topbarLeftSectionConfig = {
  gap: string,
  maxHeight: string,
  divider: topbarTextConfig,
}
type topbarRightSectionConfig = {
  gap: string,
}
type topbarTokenType = {
  zIndex: string,
  borderBottom: string,
  backgroundColor: string,
  backdropFilter: string,
  padding: string,
  gap: string,
  toggleButton: topbarToggleButtonConfig,
  actionButton: topbarActionButtonConfig,
  tenantIconButton: topbarTenantIconButtonConfig,
  merchantSelectTrigger: topbarMerchantSelectTriggerConfig,
  leftSection: topbarLeftSectionConfig,
  rightSection: topbarRightSectionConfig,
  sidebarSection: topbarRightSectionConfig,
}
type responsiveTopbarTokens = {
  sm: topbarTokenType,
  lg: topbarTokenType,
}
