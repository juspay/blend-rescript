type multiSelectV2SelectionTagType =
  | @as("count") Count
  | @as("text") Text
type rec multiSelectV2ItemType = {
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
  alwaysSelected?: bool,
  subMenu?: array<multiSelectV2ItemType>,
}
type multiSelectV2GroupType = {
  groupLabel?: string,
  items: array<multiSelectV2ItemType>,
  showSeparator?: bool,
}
type multiSelectV2PrimaryActionConfig = {
  text: string,
  onClick: array<string> => unit,
  disabled?: bool,
  loading?: bool,
}
type multiSelectV2SecondaryActionConfig = {
  text: string,
  onClick: unit => unit,
  disabled?: bool,
  loading?: bool,
}
type stateToken3 = {
  disabled: string,
  default: string,
  selected: string,
  hover: string,
  focus: string,
  active: string,
  focusVisible: string,
}
type multiSelectV2LabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: stateToken3,
}
type multiSelectV2ErrorMessageConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type multiSelectV2RequiredConfig = {
  color: string,
}
type variantToken4 = {
  container: string,
  @as("no-container") noContainer: string,
}
type sizeToken3 = {
  sm: variantToken4,
  md: variantToken4,
  lg: variantToken4,
}
type multiSelectV2ContainerConfig = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type variantToken5 = {
  container: multiSelectV2ContainerConfig,
  @as("no-container") noContainer: multiSelectV2ContainerConfig,
}
type sizeToken4 = {
  sm: variantToken5,
  md: variantToken5,
  lg: variantToken5,
}
type triggerStateToken2 = {
  hover: string,
  focus: string,
  @as("open") open_: string,
  error: string,
  closed: string,
}
type variantToken6 = {
  container: triggerStateToken2,
  @as("no-container") noContainer: triggerStateToken2,
}
type multiSelectV2SlotConfig = {
  gap: string,
  width: string,
}
type multiSelectV2CountConfig = {
  color: string,
  backgroundColor: string,
  fontWeight: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type selectionTagTypeToken = {
  count: multiSelectV2CountConfig,
  text: multiSelectV2CountConfig,
}
type multiSelectV2SelectionTagConfig = {
  container: selectionTagTypeToken,
  @as("no-container") noContainer: selectionTagTypeToken,
  marginLeft: string,
  borderRadius: string,
}
type multiSelectV2ChevronConfig = {
  gap: string,
  width: string,
  height: string,
  iconSize?: float,
}
type multiSelectV2ClearButtonConfig = {
  backgroundColor: triggerStateToken2,
  outline: triggerStateToken2,
  color: string,
  width?: string,
}
type multiSelectV2FloatingLabelConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type multiSelectV2PlaceholderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type multiSelectV2TriggerConfig = {
  height: sizeToken3,
  padding: sizeToken4,
  borderRadius: sizeToken3,
  boxShadow: variantToken4,
  backgroundColor: variantToken6,
  outline: variantToken6,
  slot: multiSelectV2SlotConfig,
  selectionTag: multiSelectV2SelectionTagConfig,
  chevron: multiSelectV2ChevronConfig,
  clearButton?: multiSelectV2ClearButtonConfig,
  floatingLabel: multiSelectV2FloatingLabelConfig,
  placeholder: multiSelectV2PlaceholderConfig,
  selectedValue: multiSelectV2PlaceholderConfig,
}
type multiSelectV2ScrollConfig = {
  height: string,
  maxHeight: string,
}
type multiSelectV2HeaderConfig = {
  backgroundColor: string,
  borderBottom: string,
  selectAllRowPaddingLeft: string,
  selectAllRowPaddingRight: string,
}
type multiSelectV2SelectAllConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderRadius: string,
}
type multiSelectV2ActionsConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  gap: string,
  backgroundColor: string,
  borderTop: string,
}
type multiSelectV2OptionsLabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: stateToken3,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type multiSelectV2SeperatorConfig = {
  color: string,
  height: string,
  margin: string,
}
type multiSelectV2ItemConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
  gap: string,
  backgroundColor: stateToken3,
  optionsLabel: multiSelectV2OptionsLabelConfig,
  option: multiSelectV2LabelConfig,
  description: multiSelectV2LabelConfig,
  seperator: multiSelectV2SeperatorConfig,
}
type multiSelectV2MenuConfig = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  padding: sizeToken4,
  minWidth: string,
  scroll: multiSelectV2ScrollConfig,
  header: multiSelectV2HeaderConfig,
  selectAll: multiSelectV2SelectAllConfig,
  list: multiSelectV2FloatingLabelConfig,
  actions: multiSelectV2ActionsConfig,
  item: multiSelectV2ItemConfig,
}
type multiSelectV2TriggerConfig2 = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
}
type multiSelectV2ContentConfig = {
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type multiSelectV2SubMenuConfig = {
  trigger: multiSelectV2TriggerConfig2,
  content: multiSelectV2ContentConfig,
}
type multiSelectV2HeaderConfig2 = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderBottom: string,
}
type multiSelectV2SearchConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  marginTop: string,
  marginBottom: string,
}
type multiSelectV2ContentConfig2 = {
  gap: string,
}
type multiSelectV2DrawerConfig = {
  header: multiSelectV2HeaderConfig2,
  search: multiSelectV2SearchConfig,
  content: multiSelectV2ContentConfig2,
}
type multiSelectV2TokensType = {
  gap: string,
  label: multiSelectV2LabelConfig,
  subLabel: multiSelectV2LabelConfig,
  hintText: multiSelectV2LabelConfig,
  errorMessage: multiSelectV2ErrorMessageConfig,
  required: multiSelectV2RequiredConfig,
  trigger: multiSelectV2TriggerConfig,
  menu: multiSelectV2MenuConfig,
  subMenu: multiSelectV2SubMenuConfig,
  drawer: multiSelectV2DrawerConfig,
}
type flattenedMultiSelectV2Item = {
  id: string,
  @as("type") type_: SingleSelectV2Types.type_3,
  item?: multiSelectV2ItemType,
  label?: string,
  groupId?: float,
}
type responsiveMultiSelectV2Tokens = {
  sm: multiSelectV2TokensType,
  lg: multiSelectV2TokensType,
}
