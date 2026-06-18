type snackbarV2Position =
  | @as("top-left") TopLeft
  | @as("top-right") TopRight
  | @as("bottom-left") BottomLeft
  | @as("bottom-right") BottomRight
  | @as("top-center") TopCenter
  | @as("bottom-center") BottomCenter
type snackbarV2Variant =
  | @as("info") Info
  | @as("success") Success
  | @as("warning") Warning
  | @as("error") Error
type snackbarV2Action = {
  label: string,
  onClick: unit => unit,
  autoDismiss?: bool,
}
type snackbarV2ToastOptions = {
  header: string,
  description?: string,
  variant?: snackbarV2Variant,
  slot?: React.element,
  onClose?: unit => unit,
  actionButton?: snackbarV2Action,
  duration?: float,
  position?: snackbarV2Position,
  maxWidth?: CommonTypes.stringOrNumber,
  width?: CommonTypes.stringOrNumber,
  minWidth?: CommonTypes.stringOrNumber,
}
type snackbarV2ColorConfig = {
  info: string,
  success: string,
  warning: string,
  error: string,
}
type snackbarV2SlotConfig = {
  height: string,
  width: string,
  color: snackbarV2ColorConfig,
}
type snackbarV2HeaderConfig = {
  color: snackbarV2ColorConfig,
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
}
type snackbarV2TextContainerConfig = {
  gap: string,
  header: snackbarV2HeaderConfig,
  description: snackbarV2HeaderConfig,
}
type snackbarV2ActionContainerConfig = {
  primaryAction: snackbarV2HeaderConfig,
}
type snackbarV2ContentConfig = {
  gap: string,
  textContainer: snackbarV2TextContainerConfig,
  actionContainer: snackbarV2ActionContainerConfig,
}
type snackbarV2CloseButtonConfig = {
  height: string,
  color: snackbarV2ColorConfig,
}
type snackbarV2MainContainerConfig = {
  gap: string,
  content: snackbarV2ContentConfig,
  closeButton: snackbarV2CloseButtonConfig,
}
type snackbarV2TokensType = {
  width: string,
  maxWidth: string,
  minWidth: string,
  backgroundColor: string,
  borderRadius: string,
  padding: string,
  boxShadow: string,
  gap: string,
  slot: snackbarV2SlotConfig,
  mainContainer: snackbarV2MainContainerConfig,
}
type responsiveSnackbarV2Tokens = {
  sm: snackbarV2TokensType,
  lg: snackbarV2TokensType,
}
