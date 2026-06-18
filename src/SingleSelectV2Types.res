type type_3 =
  | @as("item") Item
  | @as("label") Label
  | @as("separator") Separator
type rec singleSelectV2ItemType = {
  label: string,
  value: string,
  checked?: bool,
  subLabel?: string,
  slot1?: React.element,
  slot2?: React.element,
  slot3?: React.element,
  slot4?: React.element,
  disabled?: bool,
  onClick?: unit => unit,
  tooltip?: React.element,
  tooltipProps?: SelectV2Types.selectV2TooltipProps,
  disableTruncation?: bool,
  subMenu?: array<singleSelectV2ItemType>,
}
type singleSelectV2GroupType = {
  groupLabel?: string,
  items: array<singleSelectV2ItemType>,
  showSeparator?: bool,
}
type selectV2SearchConfig = {
  show?: bool,
  placeholder?: string,
}
type selectV2MenuPosition = {
  alignment?: SelectV2Types.selectV2Alignment,
  side?: SelectV2Types.selectV2Side,
  sideOffset?: float,
  alignOffset?: float,
}
type selectV2MenuDimensions = {
  minWidth?: string,
  maxWidth?: string,
  maxHeight?: string,
}
type selectV2TriggerDimensions = {
  minWidth?: string,
  maxWidth?: string,
  width?: string,
}
type selectV2ErrorState = {
  show?: bool,
  message?: string,
}
type stateToken2 = {
  disabled: string,
  default: string,
  selected: string,
  hover: string,
  focus: string,
  active: string,
  focusVisible: string,
}
type singleSelectV2LabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: stateToken2,
}
type singleSelectV2ErrorMessageConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type singleSelectV2RequiredConfig = {
  color: string,
}
type variantToken = {
  container: string,
  @as("no-container") noContainer: string,
}
type sizeToken = {
  sm: variantToken,
  md: variantToken,
  lg: variantToken,
}
type singleSelectV2ContainerConfig = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type variantToken2 = {
  container: singleSelectV2ContainerConfig,
  @as("no-container") noContainer: singleSelectV2ContainerConfig,
}
type sizeToken2 = {
  sm: variantToken2,
  md: variantToken2,
  lg: variantToken2,
}
type triggerStateToken = {
  hover: string,
  focus: string,
  @as("open") open_: string,
  error: string,
  closed: string,
}
type variantToken3 = {
  container: triggerStateToken,
  @as("no-container") noContainer: triggerStateToken,
}
type singleSelectV2SlotConfig = {
  gap: string,
  width: string,
}
type singleSelectV2PlaceholderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type singleSelectV2TriggerConfig = {
  height: sizeToken,
  padding: sizeToken2,
  borderRadius: sizeToken,
  boxShadow: variantToken,
  backgroundColor: variantToken3,
  outline: variantToken3,
  slot: singleSelectV2SlotConfig,
  placeholder: singleSelectV2PlaceholderConfig,
  selectedValue: singleSelectV2PlaceholderConfig,
}
type singleSelectV2ContentConfig = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  boxShadow: string,
}
type singleSelectV2GroupLabelConfig = {
  margin: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  fontSize: string,
  fontWeight: string,
  color: stateToken2,
}
type singleSelectV2SeparatorConfig = {
  color: string,
  height: string,
  margin: string,
}
type singleSelectV2ItemConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
  gap: string,
  backgroundColor: stateToken2,
  groupLabelText: singleSelectV2LabelConfig,
  option: singleSelectV2LabelConfig,
  description: singleSelectV2LabelConfig,
  separator: singleSelectV2SeparatorConfig,
}
type submenuTriggerStateToken = {
  default: string,
  hover: string,
  focus: string,
}
type singleSelectV2TriggerConfig2 = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
  backgroundColor: submenuTriggerStateToken,
}
type singleSelectV2ContentConfig2 = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  boxShadow: string,
}
type singleSelectV2SubmenuConfig = {
  trigger: singleSelectV2TriggerConfig2,
  content: singleSelectV2ContentConfig2,
  optionText: singleSelectV2ErrorMessageConfig,
  iconColor: string,
}
type singleSelectV2MenuConfig = {
  content: singleSelectV2ContentConfig,
  padding: sizeToken2,
  groupLabel: singleSelectV2GroupLabelConfig,
  item: singleSelectV2ItemConfig,
  submenu: singleSelectV2SubmenuConfig,
}
type singleSelectV2HeaderConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderBottom: string,
}
type singleSelectV2MobilePanelConfig = {
  header: singleSelectV2HeaderConfig,
}
type singleSelectV2TokensType = {
  gap: string,
  label: singleSelectV2LabelConfig,
  subLabel: singleSelectV2LabelConfig,
  hintText: singleSelectV2LabelConfig,
  errorMessage: singleSelectV2ErrorMessageConfig,
  required: singleSelectV2RequiredConfig,
  trigger: singleSelectV2TriggerConfig,
  menu: singleSelectV2MenuConfig,
  mobilePanel: singleSelectV2MobilePanelConfig,
}
type flattenedItem = {
  id: string,
  @as("type") type_: type_3,
  item?: singleSelectV2ItemType,
  label?: string,
  groupId?: float,
}
type virtualItemShape = {
  key: string,
  index: int,
  start: float,
}
type responsiveSingleSelectV2Tokens = {
  sm: singleSelectV2TokensType,
  lg: singleSelectV2TokensType,
}
module CollisionBoundary = {
  type t
  external fromElement: Dom.element => t = "%identity"
  external fromElements: array<Dom.element> => t = "%identity"
}
