type timePickerSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type timePickerTimePickerTokensTypeDropdownColumnHeaderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
  paddingY: string,
}
type timePickerTimePickerTokensTypeDropdownColumnConfig = {
  width: string,
  gap: string,
  separator: string,
  header: timePickerTimePickerTokensTypeDropdownColumnHeaderConfig,
}
type timePickerTimePickerTokensTypeDropdownOptionFontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type timePickerTimePickerTokensTypeDropdownOptionColorConfig = {
  default: string,
  selected: string,
  disabled: string,
}
type timePickerTimePickerTokensTypeDropdownOptionBackgroundColorConfig = {
  default: string,
  hover: string,
  selected: string,
  disabled: string,
}
type timePickerTimePickerTokensTypeDropdownOptionConfig = {
  height: string,
  paddingX: string,
  borderRadius: string,
  fontSize: timePickerTimePickerTokensTypeDropdownOptionFontSizeConfig,
  fontWeight: string,
  color: timePickerTimePickerTokensTypeDropdownOptionColorConfig,
  backgroundColor: timePickerTimePickerTokensTypeDropdownOptionBackgroundColorConfig,
  focusOutline: string,
}
type timePickerTimePickerTokensTypeDropdownConfig = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  boxShadow: string,
  padding: string,
  gap: string,
  maxHeight: string,
  column: timePickerTimePickerTokensTypeDropdownColumnConfig,
  option: timePickerTimePickerTokensTypeDropdownOptionConfig,
}
type timePickerTimePickerTokensTypeErrorMessageConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
  marginTop: string,
}
type timePickerTokensType = {
  dropdown: timePickerTimePickerTokensTypeDropdownConfig,
  errorMessage: timePickerTimePickerTokensTypeErrorMessageConfig,
}
type responsiveTimePickerTokens = {
  sm: timePickerTokensType,
  lg: timePickerTokensType,
}
type timePickerProps = {
  value?: SharedTypes.timeValue,
  onChange?: SharedTypes.timeValue => unit,
  format?: SharedTypes.timeFormat,
  showSeconds?: bool,
  minuteStep?: float,
  minTime?: SharedTypes.timeValue,
  maxTime?: SharedTypes.timeValue,
  disabled?: bool,
  error?: bool,
  errorMessage?: string,
  size?: timePickerSize,
  placeholder?: string,
  name?: string,
  @as("aria-label") ariaLabel?: string,
}
