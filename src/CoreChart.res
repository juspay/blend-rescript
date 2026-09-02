type props = {
  chartType?: ChartsSharedTypes.chartType,
  data?: Nullable.t<array<ChartsSharedTypes.newNestedDataPoint>>,
  colors?: array<ChartsSharedTypes.chartsColorsConfig>,
  barsize?: float,
  xAxis?: ChartsSharedTypes.axisConfig,
  yAxis?: ChartsSharedTypes.axisConfig,
  tooltip?: ChartsSharedTypes.tooltipConfig,
  funnelConfig?: ChartsSharedTypes.funnelConfig,
  height?: CommonTypes.stringOrNumber2,
  width?: CommonTypes.stringOrNumber2,
  isSmallScreen?: bool,
  hoveredKey?: Nullable.t<string>,
  onHoveredKeyChange?: Nullable.t<string> => unit,
  selectedKeys?: array<string>,
  lineSeriesKeys?: array<string>,
  enableHover?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "CoreChart"
