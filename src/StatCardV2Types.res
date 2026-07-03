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
type statCardV2StatCardV2TokensTypeTopContainerDataContainerTitleContainerTitleConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
  lineHeight: string,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerTitleContainerHelpIconConfig = {
  width: string,
  height: string,
  color: string,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerTitleContainerConfig = {
  gap: string,
  title: statCardV2StatCardV2TokensTypeTopContainerDataContainerTitleContainerTitleConfig,
  helpIcon: statCardV2StatCardV2TokensTypeTopContainerDataContainerTitleContainerHelpIconConfig,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerSubtitleConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
  lineHeight: string,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerStatsContainerValueConfig = {
  chart: statCardV2StatCardV2TokensTypeTopContainerDataContainerSubtitleConfig,
  progress: statCardV2StatCardV2TokensTypeTopContainerDataContainerSubtitleConfig,
  number: statCardV2StatCardV2TokensTypeTopContainerDataContainerSubtitleConfig,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerStatsContainerChangeContainerConfig = {
  gap: string,
  change: string,
  arrow: string,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerStatsContainerConfig = {
  gap: string,
  value: statCardV2StatCardV2TokensTypeTopContainerDataContainerStatsContainerValueConfig,
  changeContainer: statCardV2StatCardV2TokensTypeTopContainerDataContainerStatsContainerChangeContainerConfig,
}
type statCardV2StatCardV2TokensTypeTopContainerDataContainerConfig = {
  gap: string,
  titleContainer: statCardV2StatCardV2TokensTypeTopContainerDataContainerTitleContainerConfig,
  statsContainer: statCardV2StatCardV2TokensTypeTopContainerDataContainerStatsContainerConfig,
  subtitle: statCardV2StatCardV2TokensTypeTopContainerDataContainerSubtitleConfig,
}
type statCardV2StatCardV2TokensTypeTopContainerConfig = {
  gap: string,
  dataContainer: statCardV2StatCardV2TokensTypeTopContainerDataContainerConfig,
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
  topContainer: statCardV2StatCardV2TokensTypeTopContainerConfig,
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
type statCardV2BuildStatCardV2AriaLabelParamsConfig = {
  title?: string,
  value?: string,
  subtitle?: string,
  change?: statCardV2Change,
}
