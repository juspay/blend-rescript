type popoverSize =
  | @as("small") Small
  | @as("medium") Medium
type shadow =
  | @as("sm") Sm
  | @as("lg") Lg
  | @as("xs") Xs
  | @as("md") Md
  | @as("xl") Xl
  | @as("2xl") V2xl
  | @as("full") Full
type popoverGapConfig = {
  small: string,
  medium: string,
}
type popoverPaddingConfig = {
  left: popoverGapConfig,
  right: popoverGapConfig,
  top: popoverGapConfig,
  bottom: popoverGapConfig,
}
type popoverHeadingConfig = {
  color: string,
  fontSize: popoverGapConfig,
  fontWeight: popoverGapConfig,
  lineHeight: popoverGapConfig,
}
type popoverHeaderContainerConfig = {
  heading: popoverHeadingConfig,
  description: popoverHeadingConfig,
}
type popoverFooterConfig = {
  gap: popoverGapConfig,
}
type popoverTokenType = {
  background: string,
  border: string,
  shadow: TokensTypes.tokensShadowConfig,
  gap: popoverGapConfig,
  zIndex: string,
  borderRadius: popoverGapConfig,
  padding: popoverPaddingConfig,
  headerContainer: popoverHeaderContainerConfig,
  footer: popoverFooterConfig,
}
type responsivePopoverTokens = {
  sm: popoverTokenType,
  lg: popoverTokenType,
}
type popoverActionType = {
  width?: CommonTypes.stringOrNumber,
  text?: string,
  disabled?: bool,
  justifyContent?: string,
  size?: ButtonTypes.buttonSize,
  onClick?: option<ReactEvent.Mouse.t> => unit,
  buttonType?: ButtonTypes.buttonType,
  leadingIcon?: React.element,
  trailingIcon?: React.element,
  loading?: bool,
  showSkeleton?: bool,
  skeletonVariant?: SkeletonTypes.skeletonVariant,
  fullWidth?: bool,
  state?: ButtonTypes.buttonState,
}
type bodySkeletonProps2 = {
  show?: bool,
  width?: string,
  height?: CommonTypes.stringOrNumber,
}
type popoverSkeletonProps = {
  show?: bool,
  variant?: SkeletonTypes.skeletonVariant,
  bodySkeletonProps?: bodySkeletonProps2,
}
