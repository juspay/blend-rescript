type statCardV2Variant =
  | @as("chart") Chart
  | @as("progress") Progress
  | @as("number") Number
type statCardV2ChangeType =
  | @as("increase") Increase
  | @as("decrease") Decrease
type statCardV2ArrowDirection =
  | @as("up") Up
  | @as("down") Down
type setState =
  | @as("") Value
  | @as("normal") Normal
  | @as("inactive") Inactive
  | @as("hover") Hover
  | @as("select") Select
type position3d =
  | @as("offset") Offset
  | @as("chart") Chart
  | @as("flap") Flap
  | @as("ortho") Ortho
type linkColorMode =
  | @as("from") From
  | @as("gradient") Gradient
  | @as("to") To
type scope =
  | @as("point") Point
  | @as("stack") Stack
type where =
  | @as("all") All
  | @as("end") End
type type_3 =
  | @as("straight") Straight
  | @as("curved") Curved
  | @as("orthogonal") Orthogonal
type nodeAlignment =
  | @as("top") Top
  | @as("bottom") Bottom
  | @as("center") Center
type statCardV2TitleConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
  lineHeight: string,
}
type statCardV2HelpIconConfig = {
  width: string,
  height: string,
  color: string,
}
type statCardV2TitleContainerConfig = {
  gap: string,
  title: statCardV2TitleConfig,
  helpIcon: statCardV2HelpIconConfig,
}
type statCardV2SubtitleConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
  lineHeight: string,
}
type statCardV2ValueConfig = {
  chart: statCardV2SubtitleConfig,
  progress: statCardV2SubtitleConfig,
  number: statCardV2SubtitleConfig,
}
type statCardV2ChangeContainerConfig = {
  gap: string,
  change: string,
  arrow: string,
}
type statCardV2StatsContainerConfig = {
  gap: string,
  value: statCardV2ValueConfig,
  changeContainer: statCardV2ChangeContainerConfig,
}
type statCardV2DataContainerConfig = {
  gap: string,
  titleContainer: statCardV2TitleContainerConfig,
  statsContainer: statCardV2StatsContainerConfig,
  subtitle: statCardV2SubtitleConfig,
}
type statCardV2TopContainerConfig = {
  gap: string,
  dataContainer: statCardV2DataContainerConfig,
}
type statCardV2TokensType = {
  height: string,
  width: string,
  maxWidth: string,
  minWidth: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  border: string,
  borderRadius: string,
  backgroundColor: string,
  boxShadow: string,
  topContainer: statCardV2TopContainerConfig,
}
type responsiveStatCardV2Tokens = {
  sm: statCardV2TokensType,
  lg: statCardV2TokensType,
}
type statCardV2Change = {
  value: string,
  changeType: statCardV2ChangeType,
  leftSymbol?: string,
  rightSymbol?: string,
  arrowDirection?: statCardV2ArrowDirection,
  tooltip?: React.element,
}
type statCardV2SkeletonProps = {
  variant: SkeletonTypes.skeletonVariant,
  show: bool,
  height?: string,
  maxWidth?: string,
  minWidth?: string,
}
type statCardV2ParamsConfig = {
  title?: string,
  value?: string,
  subtitle?: string,
  change?: statCardV2Change,
}
