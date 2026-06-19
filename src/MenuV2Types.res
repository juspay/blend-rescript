type menuV2ItemVariant =
  | @as("default") Default
  | @as("action") Action
type menuV2ItemActionType =
  | @as("primary") Primary
  | @as("danger") Danger
type menuV2Alignment =
  | @as("start") Start
  | @as("center") Center
  | @as("end") End
type menuV2Side =
  | @as("top") Top
  | @as("left") Left
  | @as("right") Right
  | @as("bottom") Bottom
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
  active: string,
  default: string,
  hover: string,
  disabled: string,
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
type menuV2ItemLabel = {
  text: string,
  leftSlot?: React.element,
}
type menuV2ItemTooltipProps = {
  side?: TooltipTypes.tooltipSide,
  align?: TooltipTypes.tooltipAlign,
  size?: TooltipTypes.tooltipSize,
  showArrow?: bool,
  delayDuration?: float,
  offset?: float,
}
type rec menuV2ItemType = {
  id?: string,
  label: menuV2ItemLabel,
  subLabel?: string,
  variant?: menuV2ItemVariant,
  actionType?: menuV2ItemActionType,
  disabled?: bool,
  onClick?: unit => unit,
  subMenu?: array<menuV2ItemType>,
  enableSubMenuSearch?: bool,
  subMenuSearchPlaceholder?: string,
  tooltip?: React.element,
  tooltipProps?: menuV2ItemTooltipProps,
}
type menuV2GroupType = {
  id?: string,
  label?: string,
  items: array<menuV2ItemType>,
  showSeparator?: bool,
}
type menuV2Dimensions = {
  minWidth?: string,
  maxWidth?: string,
  minHeight?: string,
  maxHeight?: string,
}
type menuV2VirtualScrollingConfig = {
  itemHeight?: float,
  overscan?: float,
  threshold?: float,
}
type menuV2ValueConfig = {
  @as("type") type_: string,
  id: string,
  label: string,
}
type menuV2ValueConfig2 = {
  @as("type") type_: string,
  id: string,
}
type menuV2ValueConfig3 = {
  @as("type") type_: string,
  id: string,
  item: menuV2ItemType,
  groupId: float,
  itemIndex: float,
}
module CollisionBoundaryRef = {
  type t
  external fromHTMLElement: Dom.element => t = "%identity"
  external fromHTMLElements: array<Dom.element> => t = "%identity"
}
module MenuV2FlatRow = {
  type t
  external fromMenuV2ValueConfig: menuV2ValueConfig => t = "%identity"
  external fromMenuV2ValueConfig2: menuV2ValueConfig2 => t = "%identity"
  external fromMenuV2ValueConfig3: menuV2ValueConfig3 => t = "%identity"
}
