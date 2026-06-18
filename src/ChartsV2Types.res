type chartsV2PaddingConfig = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type chartsV2HeaderConfig = {
  padding: chartsV2PaddingConfig,
  backgroundColor: string,
  borderBottom: string,
}
type chartsV2ShapeConfig = {
  width: string,
  height: string,
  borderRadius: string,
}
type chartsV2NameConfig = {
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
  color: string,
}
type chartsV2SeparatorConfig = {
  color: string,
  width: string,
  height: string,
}
type chartsV2TextConfig = {
  gap: string,
  name: chartsV2NameConfig,
  value: chartsV2NameConfig,
  separator: chartsV2SeparatorConfig,
}
type chartsV2LegendItemConfig = {
  gap: string,
  shape: chartsV2ShapeConfig,
  text: chartsV2TextConfig,
}
type chartsV2LegendsConfig = {
  gap: string,
  legendItem: chartsV2LegendItemConfig,
}
type chartsV2TitleConfig = {
  fontSize: string,
  color: string,
  fontWeight: string,
  lineHeight: string,
}
type chartsV2LineConfig = {
  width: string,
  color: string,
}
type chartsV2XAxisConfig = {
  title: chartsV2TitleConfig,
  labels: chartsV2TitleConfig,
  line: chartsV2LineConfig,
  gridLine: chartsV2LineConfig,
}
type chartsV2ChartConfig = {
  backgroundColor: string,
  xAxis: chartsV2XAxisConfig,
  yAxis: chartsV2XAxisConfig,
}
type chartV2TokensType = {
  border: string,
  borderRadius: string,
  boxShadow: string,
  backgroundColor: string,
  header: chartsV2HeaderConfig,
  legends: chartsV2LegendsConfig,
  chart: chartsV2ChartConfig,
}
type responsiveChartV2Tokens = {
  sm: chartV2TokensType,
  lg: chartV2TokensType,
}
