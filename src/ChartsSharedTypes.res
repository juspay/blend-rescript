type chartType =
  | @as("line") Line
  | @as("bar") Bar
  | @as("lineBar") LineBar
  | @as("pie") Pie
  | @as("scatter") Scatter
  | @as("area") Area
  | @as("sankey") Sankey
  | @as("funnel") Funnel
type axisType =
  | @as("dateTime") DateTime
  | @as("currency") Currency
  | @as("percentage") Percentage
  | @as("number") Number
type chartLegendPosition =
  | @as("top") Top
  | @as("right") Right
type legendsChangeType =
  | @as("increase") Increase
  | @as("decrease") Decrease
type chartsTooltipPropsTrigger =
  | @as("hover") Hover
  | @as("click") Click
type chartsFunnelConfigPercentageBase =
  | @as("first") First
  | @as("previous") Previous
type chartsXAxisTitleOptionsPosition3d =
  | @as("offset") Offset
  | @as("chart") Chart
  | @as("flap") Flap
  | @as("ortho") Ortho
type chartsSeriesSetState =
  | @as("") Value
  | @as("normal") Normal
  | @as("inactive") Inactive
  | @as("hover") Hover
  | @as("select") Select
type chartsPointSetState =
  | @as("") Value
  | @as("normal") Normal
  | @as("inactive") Inactive
  | @as("hover") Hover
  | @as("select") Select
type chartsSeriesArcdiagramOptionsLinkColorMode =
  | @as("gradient") Gradient
  | @as("from") From
  | @as("to") To
type chartsBorderRadiusOptionsObjectScope =
  | @as("point") Point
  | @as("stack") Stack
type chartsBorderRadiusOptionsObjectWhere =
  | @as("all") All
  | @as("end") End
type chartsSeriesOrganizationOptionsHangingSide =
  | @as("right") Right
  | @as("left") Left
type chartsPlotOrganizationLinkOptionsType =
  | @as("straight") Straight
  | @as("curved") Curved
  | @as("orthogonal") Orthogonal
type chartsSeriesOrganizationOptionsNodeAlignment =
  | @as("top") Top
  | @as("bottom") Bottom
  | @as("center") Center
type chartTokensType = {
  border: string,
  borderRadius: string,
  axis: ChartsTypes.chartsChartTokensTypeAxisConfig,
  header: ChartsTypes.chartsChartTokensTypeHeaderConfig2,
  content: ChartsTypes.chartsChartTokensTypeContentConfig2,
}
type responsiveChartTokens = {
  sm: chartTokensType,
  lg: chartTokensType,
}
type chartsDataPointPrimaryConfig = {
  label: string,
  val: float,
}
type chartsDataPointAuxConfig = {
  label: string,
  val: float,
  @as("type") type_?: axisType,
  dateOnly?: bool,
  smart?: bool,
  timeZone?: string,
  hour12?: bool,
}
type chartsDataPointErrorErrorDataConfig = {
  label: string,
  value: string,
}
type chartsDataPointErrorConfig = {
  title: string,
  errorData?: array<chartsDataPointErrorErrorDataConfig>,
}
type dataPoint = {
  primary: chartsDataPointPrimaryConfig,
  aux?: array<chartsDataPointAuxConfig>,
  error?: chartsDataPointErrorConfig,
}
type newNestedDataPoint = {
  name: string,
  data: Dict.t<dataPoint>,
}
type chartsColorsConfig = {
  key: string,
  color: string,
}
type stackedLegendsDataPoint = {
  value: float,
  delta: float,
  changeType: legendsChangeType,
}
type chartsTickPropsPayloadConfig = {
  value: CommonTypes.stringOrNumber,
  index?: int,
  coordinate?: float,
}
type tickProps = {
  x?: float,
  y?: float,
  payload?: chartsTickPropsPayloadConfig,
}
@set_index external tickPropsSet: (tickProps, string, JSON.t) => unit = ""
type axisConfig = {
  label?: string,
  showLabel?: bool,
  interval?: CommonTypes.preserveStartOrPreserveEndOrPreserveStartEndOrNumber,
  show?: bool,
  @as("type") type_?: axisType,
  tickFormatter?: CommonTypes.stringOrNumber => string,
  customTick?: React.component<tickProps>,
  dateOnly?: bool,
  useUTC?: bool,
  formatString?: string,
  timeOnly?: bool,
  showYear?: bool,
  ticks?: array<CommonTypes.stringOrNumber>,
  autoConsistentTicks?: bool,
  maxTicks?: float,
  smartDateTimeFormat?: bool,
}
type chartsTooltipConfigPositionConfig = {
  x?: float,
  y?: float,
}
type chartsTooltipConfigAllowEscapeViewBoxConfig = {
  x?: bool,
  y?: bool,
}
type rec payload = {
  @as("type") type_?: [#none],
  color?: string,
  formatter?: (
    CommonTypes.stringOrNumberOrStringOrNumberArray,
    CommonTypes.stringOrNumber,
    payload,
    float,
    array<payload>,
  ) => React.element,
  name?: CommonTypes.stringOrNumber,
  value?: CommonTypes.stringOrNumberOrStringOrNumberArray,
  unit?: React.element,
  dataKey?: CommonTypes.stringOrNumber,
  payload?: string, // 🛑 BROKEN — contains `any`
  chartType?: string,
  stroke?: string,
  strokeDasharray?: CommonTypes.stringOrNumber,
  strokeWidth?: CommonTypes.stringOrNumber,
  className?: string,
  hide?: bool,
}
@unboxed type payloadPayloadUniqBy = Bool(bool) | Fn(payload => JSON.t)
type tooltipContentProps = {
  separator?: string,
  wrapperClassName?: string,
  labelClassName?: string,
  formatter?: (
    CommonTypes.stringOrNumberOrStringOrNumberArray,
    CommonTypes.stringOrNumber,
    payload,
    float,
    array<payload>,
  ) => React.element,
  contentStyle?: JsxDOM.style,
  itemStyle?: JsxDOM.style,
  labelStyle?: JsxDOM.style,
  labelFormatter?: (string, array<payload>) => React.element, // 🛑 BROKEN — contains `any`
  label?: string, // 🛑 BROKEN — contains `any`
  payload?: array<payload>,
  itemSorter?: payload => CommonTypes.stringOrNumber,
  accessibilityLayer?: bool,
  active?: bool,
  includeHidden?: bool,
  allowEscapeViewBox?: UtilTypes.allowInDimension,
  animationDuration?: float,
  animationEasing?: UtilTypes.animationTiming,
  content?: React.element,
  coordinate?: UtilTypes.utilTooltipPropsCoordinateConfig,
  cursor?: React.element,
  filterNull?: bool,
  defaultIndex?: float,
  isAnimationActive?: bool,
  offset?: float,
  payloadUniqBy?: payloadPayloadUniqBy,
  position?: UtilTypes.utilTooltipPropsCoordinateConfig,
  reverseDirection?: UtilTypes.allowInDimension,
  shared?: bool,
  trigger?: chartsTooltipPropsTrigger,
  useTranslate3d?: bool,
  viewBox?: UtilTypes.cartesianViewBox,
  wrapperStyle?: JsxDOM.style,
  originalData: array<newNestedDataPoint>,
  chartType: chartType,
  selectedKeys: array<string>,
  xAxis?: axisConfig,
  yAxis?: axisConfig,
}
type tooltipFormatterParams = {
  seriesName: CommonTypes.stringOrNumber,
  value: CommonTypes.stringOrNumberOrStringOrNumberArray,
  dataIndex: float,
  color: string,
  payload: JSON.t,
}
type tooltipConfig = {
  position?: chartsTooltipConfigPositionConfig,
  allowEscapeViewBox?: chartsTooltipConfigAllowEscapeViewBoxConfig,
  content?: tooltipContentProps => React.element,
  formatter?: tooltipFormatterParams => React.element,
  labelFormatter?: CommonTypes.stringOrNumber => React.element,
}
type tooltipProps = {
  separator?: string,
  wrapperClassName?: string,
  labelClassName?: string,
  formatter?: (
    CommonTypes.stringOrNumberOrStringOrNumberArray,
    CommonTypes.stringOrNumber,
    payload,
    float,
    array<payload>,
  ) => React.element,
  contentStyle?: JsxDOM.style,
  itemStyle?: JsxDOM.style,
  labelStyle?: JsxDOM.style,
  labelFormatter?: (string, array<payload>) => React.element, // 🛑 BROKEN — contains `any`
  label?: string, // 🛑 BROKEN — contains `any`
  payload?: array<payload>,
  itemSorter?: payload => CommonTypes.stringOrNumber,
  accessibilityLayer?: bool,
  active?: bool,
  includeHidden?: bool,
  allowEscapeViewBox?: UtilTypes.allowInDimension,
  animationDuration?: float,
  animationEasing?: UtilTypes.animationTiming,
  content?: JSON.t,
  coordinate?: UtilTypes.utilTooltipPropsCoordinateConfig,
  cursor?: React.element,
  filterNull?: bool,
  defaultIndex?: float,
  isAnimationActive?: bool,
  offset?: float,
  payloadUniqBy?: payloadPayloadUniqBy,
  position?: UtilTypes.utilTooltipPropsCoordinateConfig,
  reverseDirection?: UtilTypes.allowInDimension,
  shared?: bool,
  trigger?: chartsTooltipPropsTrigger,
  useTranslate3d?: bool,
  viewBox?: UtilTypes.cartesianViewBox,
  wrapperStyle?: JsxDOM.style,
}
type funnelConfig = {
  percentageBase?: chartsFunnelConfigPercentageBase,
  showLabels?: bool,
}
type noDataProps = {
  title?: string,
  subtitle?: string,
  slot?: React.element,
  button?: ButtonTypes.buttonProps,
}
type chartsSkeletonProps = {
  show: bool,
  variant: SkeletonTypes.skeletonVariant,
}
type chartsLegendsConfig = {
  title: string,
  total?: string,
}
type chartsDotItemDotPropsPayloadConfig = {
  name?: string,
}
type dotItemDotProps = {
  cx?: float,
  cy?: float,
  value?: float,
  payload?: chartsDotItemDotPropsPayloadConfig,
}
type chartsPayloadConfig = {
  name: string,
  id?: string,
  color?: string,
  value?: float,
}
type chartsSankeyTooltipDataPayloadConfig = {
  name?: string,
  value?: float,
  source?: CommonTypes.stringOrNumber,
  target?: CommonTypes.stringOrNumber,
  sourceName?: string,
  targetName?: string,
  color?: string,
  hoverColor?: string,
}
type sankeyTooltipData = {
  payload: chartsSankeyTooltipDataPayloadConfig,
}
type sankeyLink = {
  source: CommonTypes.stringOrNumber,
  target: CommonTypes.stringOrNumber,
  value: float,
  color?: string,
  hoverColor?: string,
}
@unboxed type stringOrChartsColorsConfig = Str(string) | ChartsColorsConfig(chartsColorsConfig)
