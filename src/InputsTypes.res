type textInputSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type cursor =
  | @as("text") Text
  | @as("default") Default
  | @as("not-allowed") NotAllowed
  | @as("pointer") Pointer
type textInputGroupPosition =
  | @as("center") Center
  | @as("left") Left
  | @as("right") Right
type numberInputSize =
  | @as("md") Md
  | @as("lg") Lg
type dropdownPosition =
  | @as("left") Left
  | @as("right") Right
type unitInputSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type unitPosition =
  | @as("left") Left
  | @as("right") Right
type resize =
  | @as("none") None
  | @as("block") Block
  | @as("inline") Inline
  | @as("vertical") Vertical
  | @as("horizontal") Horizontal
  | @as("both") Both
type inputsColorConfig = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type inputsLabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: inputsColorConfig,
}
type inputsErrorMessageConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type inputsRequiredConfig = {
  color: string,
}
type inputsPaddingConfig = {
  x: string,
  y: string,
}
type inputsInputContainerConfig = {
  padding: inputsPaddingConfig,
  borderRadius: string,
  borderBottom: inputsColorConfig,
  outline: string,
  boxShadow: string,
  color: inputsColorConfig,
  fontSize: string,
  fontWeight: string,
}
type inputsIconConfig = {
  color: inputsColorConfig,
  width: string,
}
type searchInputTokensType = {
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  hintText: inputsLabelConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig,
  icon: inputsIconConfig,
}
type responsiveSearchInputTokens = {
  sm: searchInputTokensType,
  lg: searchInputTokensType,
}
type inputsPlaceholderConfig = {
  color?: string,
  fontWeight?: string,
}
type inputsHelpIconConfig = {
  width: string,
  color: inputsColorConfig,
}
type inputsInputContainerConfig2 = {
  fontSize: string,
  fontWeight: string,
  padding: inputsPaddingConfig,
  borderRadius: string,
  boxShadow: string,
  border: inputsColorConfig,
  color: inputsColorConfig,
  backgroundColor: inputsColorConfig,
}
type textAreaTokensType = {
  gap: string,
  placeholder?: inputsPlaceholderConfig,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  helpIcon: inputsHelpIconConfig,
  hintText: inputsLabelConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig2,
}
type responsiveTextAreaTokens = {
  sm: textAreaTokensType,
  lg: textAreaTokensType,
}
type inputsPlaceholderConfig2 = {
  color: string,
  fontWeight: string,
}
type inputsFontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type inputsPaddingConfig2 = {
  x: inputsFontSizeConfig,
  y: inputsFontSizeConfig,
}
type inputsInputContainerConfig3 = {
  fontSize: inputsFontSizeConfig,
  fontWeight: inputsFontSizeConfig,
  color: inputsColorConfig,
  borderRadius: inputsFontSizeConfig,
  boxShadow: string,
  padding: inputsPaddingConfig2,
  border: inputsColorConfig,
  backgroundColor: inputsColorConfig,
}
type textInputTokensType = {
  placeholder: inputsPlaceholderConfig2,
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  hintText: inputsLabelConfig,
  helpIcon: inputsHelpIconConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig3,
}
type responsiveTextInputTokens = {
  sm: textInputTokensType,
  lg: textInputTokensType,
}
type inputsColorConfig2 = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type inputsWidthConfig = {
  sm: string,
  md: string,
  lg: string,
}
type inputsIconConfig2 = {
  color: inputsColorConfig2,
  width: inputsWidthConfig,
}
type inputsStepperButtonConfig = {
  width: inputsFontSizeConfig,
  backgroundColor: inputsColorConfig,
  icon: inputsIconConfig2,
}
type inputsInputContainerConfig4 = {
  fontSize: inputsFontSizeConfig,
  fontWeight: inputsFontSizeConfig,
  color: inputsColorConfig,
  borderRadius: inputsFontSizeConfig,
  boxShadow: string,
  padding: inputsPaddingConfig2,
  border: inputsColorConfig,
  backgroundColor: inputsColorConfig,
  stepperButton: inputsStepperButtonConfig,
}
type numberInputTokensType = {
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  hintText: inputsLabelConfig,
  helpIcon: inputsHelpIconConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig4,
}
type responsiveNumberInputTokens = {
  sm: numberInputTokensType,
  lg: numberInputTokensType,
}
type inputsInputConfig = {
  height: string,
  width: string,
  fontSize: string,
  fontWeight: string,
  color: inputsColorConfig,
  borderRadius: string,
  boxShadow: string,
  border: inputsColorConfig,
  backgroundColor: inputsColorConfig,
}
type inputsInputContainerConfig5 = {
  gap: string,
  input: inputsInputConfig,
}
type otpInputTokensType = {
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  helpIcon: inputsHelpIconConfig,
  hintText: inputsLabelConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig5,
}
type responsiveOTPInputTokens = {
  sm: otpInputTokensType,
  lg: otpInputTokensType,
}
type inputsUnitConfig = {
  fontSize: inputsFontSizeConfig,
  fontWeight: inputsFontSizeConfig,
  color: inputsColorConfig,
  padding: inputsFontSizeConfig,
  backgroundColor: inputsColorConfig,
}
type inputsInputContainerConfig6 = {
  fontSize: inputsFontSizeConfig,
  fontWeight: inputsFontSizeConfig,
  color: inputsColorConfig,
  borderRadius: inputsFontSizeConfig,
  boxShadow: string,
  padding: inputsPaddingConfig2,
  border: inputsColorConfig,
  backgroundColor: inputsColorConfig,
  unit: inputsUnitConfig,
}
type unitInputTokensType = {
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  helpIcon: inputsHelpIconConfig,
  hintText: inputsLabelConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig6,
}
type responsiveUnitInputTokens = {
  sm: unitInputTokensType,
  lg: unitInputTokensType,
}
type inputsInputContainerConfig7 = {
  fontSize: inputsFontSizeConfig,
  fontWeight: inputsFontSizeConfig,
  gap: string,
  borderRadius?: string,
  boxShadow: inputsColorConfig,
  padding: inputsPaddingConfig2,
  border: inputsColorConfig,
  color: inputsColorConfig,
  backgroundColor: inputsColorConfig,
}
type multiValueInputTokensType = {
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  hintText: inputsLabelConfig,
  helpIcon: inputsHelpIconConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  inputContainer: inputsInputContainerConfig7,
}
type responsiveMultiValueInputTokens = {
  sm: multiValueInputTokensType,
  lg: multiValueInputTokensType,
}
type inputsInputContainerConfig8 = {
  gap: string,
  fontSize: inputsFontSizeConfig,
  fontWeight: inputsFontSizeConfig,
  color: inputsColorConfig,
  borderRadius?: inputsFontSizeConfig,
  boxShadow: string,
  padding: inputsPaddingConfig2,
  border: inputsColorConfig,
  backgroundColor: inputsColorConfig,
}
type dropdownInputTokensType = {
  gap: string,
  label: inputsLabelConfig,
  subLabel: inputsLabelConfig,
  hintText: inputsLabelConfig,
  errorMessage: inputsErrorMessageConfig,
  required: inputsRequiredConfig,
  helpIcon: inputsHelpIconConfig,
  inputContainer: inputsInputContainerConfig8,
}
type responsiveDropdownInputTokens = {
  sm: dropdownInputTokensType,
  lg: dropdownInputTokensType,
}
