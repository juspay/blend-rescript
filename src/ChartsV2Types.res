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
type chartV2CustomLegendItem = {
  key: string,
  name: string,
  color?: string,
  value?: CommonTypes.stringOrNumber,
}
type chartsV2RenderItemConfig = {
  item: HighchartsSharedTypes.ChartV2LegendItem.t,
  name: string,
  visible: bool,
  color: string,
  value?: CommonTypes.stringOrNumber,
  onClick: unit => unit,
}
type chartV2FullscreenControls = {
  isFullscreen: bool,
  enterFullscreen: unit => unit,
  exitFullscreen: unit => unit,
}
type chartsV2ValueConfig = {
  hoveredItem: HighchartsSharedTypes.ChartV2LegendItem.t,
  setHoveredItem: HighchartsSharedTypes.SetStateAction.t => unit,
  allItems: array<HighchartsSharedTypes.ChartV2LegendItem.t>,
  handleClick: (HighchartsSharedTypes.ChartV2LegendItem.t, float) => unit,
  chart: HighchartsSharedTypes.chart,
  charts: array<HighchartsSharedTypes.chart>,
}
type chartsV2ValueConfig2 = {
  hoveredItem: HighchartsSharedTypes.ChartV2LegendItem.t,
  setHoveredItem: HighchartsSharedTypes.SetStateAction.t => unit,
  allItems: array<HighchartsSharedTypes.ChartV2LegendItem.t>,
  handleClick: (HighchartsSharedTypes.ChartV2LegendItem.t, float) => unit,
}
