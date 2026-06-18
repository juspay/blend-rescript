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
