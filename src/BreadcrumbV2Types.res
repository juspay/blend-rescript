type breadcrumbV2ColorConfig = {
  active: string,
  default: string,
  hover: string,
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
type breadcrumbV2ItemType = {
  id?: CommonTypes.stringOrNumber,
  leftSlot?: React.element,
  rightSlot?: React.element,
  label: string,
  href: string,
  onClick?: ReactEvent.Mouse.t => unit,
}
type indexedBreadcrumbChild = {
  el: React.element,
  idx: float,
}
type breadcrumbCompoundItemProps = {
  href?: string,
  onClick?: ReactEvent.Mouse.t => unit,
  isActive?: bool,
  children: React.element,
}
type breadcrumbV2ValueConfig = {
  shouldShowMenu: bool,
  base?: indexedBreadcrumbChild,
  rest: array<indexedBreadcrumbChild>,
  menuItems: array<indexedBreadcrumbChild>,
}
