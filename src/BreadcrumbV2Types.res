type breadcrumbV2ItemType = {
  id?: CommonTypes.stringOrNumber,
  leftSlot?: React.element,
  rightSlot?: React.element,
  label: string,
  href: string,
  onClick?: ReactEvent.Mouse.t => unit,
}
type breadcrumbV2ColorConfig = {
  default: string,
  hover: string,
  active: string,
}
type breadcrumbV2TextConfig = {
  fontSize: string,
  fontWeight: string,
  color: breadcrumbV2ColorConfig,
}
type breadcrumbV2ItemConfig = {
  padding: string,
  gap: string,
  text: breadcrumbV2TextConfig,
}
type breadcrumbV2EllipsisConfig = {
  color: string,
  borderRadius: string,
  size: float,
}
type breadcrumbV2SeparatorConfig = {
  color: string,
}
type breadcrumbV2TokensType = {
  gap: string,
  item: breadcrumbV2ItemConfig,
  ellipsis: breadcrumbV2EllipsisConfig,
  separator: breadcrumbV2SeparatorConfig,
}
type responsiveBreadcrumbV2Tokens = {
  sm: breadcrumbV2TokensType,
  lg: breadcrumbV2TokensType,
}
