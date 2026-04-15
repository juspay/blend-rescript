// Chart type enumeration
type chartType =
  | @as("line") Line
  | @as("bar") Bar
  | @as("pie") Pie
  | @as("scatter") Scatter

// Chart legend position
type chartLegendPosition =
  | @as("top") Top
  | @as("right") Right

// Legends change type
type legendsChangeType =
  | @as("increase") Increase
  | @as("decrease") Decrease

// Axis interval type
type axisIntervalType =
  | @as("preserveStart") PreserveStart
  | @as("preserveEnd") PreserveEnd
  | @as("preserveStartEnd") PreserveStartEnd

// Axis type
type axisType =
  | @as("dateTime") DateTime
  | @as("currency") Currency
  | @as("percentage") Percentage
  | @as("number") Number

// Primary and auxiliary data structures
type primaryData = {
  label: string,
  val: float,
}

type auxData = {
  label: string,
  val: float,
  @as("type") type_?: axisType,
}

type errorData = {
  label: string,
  value: string,
}

type errorObj = {
  title: string,
  errorData?: array<errorData>,
}

// Basic data point structure
type dataPoint = {
  primary: primaryData,
  aux?: array<auxData>,
  error?: errorObj,
}

type dotItemDotProps = {
  cx?: float,
  cy?: float,
  value?: float,
  payload?: Dict.t<JSON.t>,
}

// Payload type for tick props
type tickPayload = {"value": string, "index": option<int>, "coordinate": option<float>}

type outageDotObj = {x: JSON.t, y: float, color: string, seriesName: string}

// Tick props for custom axis ticks
type tickProps = {
  x?: float,
  y?: float,
  payload?: tickPayload,
  attributes?: Dict.t<string>,
}

// Axis configuration
type axisConfig = {
  label?: string,
  showLabel?: bool,
  interval?: JSON.t,
  show?: bool,
  @as("type") type_?: axisType,
  tickFormatter?: string => string,
  customTick?: React.component<tickProps>,
  dateOnly?: bool,
  useUTC?: bool,
  formatString?: string,
  timeOnly?: bool,
  showYear?: bool,
  ticks?: array<JSON.t>,
  autoConsistentTicks?: bool,
  maxTicks?: int,
  smartDateTimeFormat?: bool,
  smart?: bool,
  timeZone?: string,
  hour12?: bool,
}

type xAxisConfig = axisConfig
type yAxisConfig = axisConfig

// Stacked legends data point
type stackedLegendsDataPoint = {
  value: float,
  delta: float,
  changeType: legendsChangeType,
}

// Nested data point structure (now called NewNestedDataPoint in new version)
type newNestedDataPoint = {
  name: string,
  data: Dict.t<dataPoint>,
}

// Keep old name for backward compatibility
type nestedDataPoint = newNestedDataPoint

// Flattened data point (for rendering)
type flattenedDataPoint = {
  name: string,
  // Additional fields are dynamically added with keys as string and values as string or number
}

// Props for render chart component
type renderChartProps = {
  flattenedData: array<flattenedDataPoint>,
  chartType: chartType,
  hoveredKey?: string,
  lineKeys: array<string>,
  colors: array<string>,
  setHoveredKey?: (string => unit) => unit,
  data: array<newNestedDataPoint>,
  selectedKeys: array<string>,
  isSmallScreen?: bool,
  barsize?: int,
  xAxis?: xAxisConfig,
  yAxis?: yAxisConfig,
}

// No data props
type noDataProps = {
  title?: string,
  subtitle?: string,
  slot?: React.element,
  // button?: buttonProps, // Commented out since ButtonV2Props not available
}

// Main chart component props
type chartsProps = {
  chartType?: chartType,
  data: array<newNestedDataPoint>,
  colors?: array<string>,
  slot1?: React.element,
  slot2?: React.element,
  slot3?: React.element,
  legendPosition?: chartLegendPosition,
  chartHeaderSlot: React.element,
  stackedLegends?: bool,
  stackedLegendsData?: array<stackedLegendsDataPoint>,
  barsize?: int,
  xAxis?: xAxisConfig,
  yAxis?: yAxisConfig,
  noData?: noDataProps,
  height?: int,
}

// Chart header component props
type chartHeaderProps = {
  slot1: React.element,
  slot2: React.element,
  slot3: React.element,
  chartHeaderSlot: React.element,
  onFullscreen?: unit => unit,
  onExitFullscreen?: unit => unit,
  isFullscreen?: bool,
  isSmallScreen?: bool,
  isExpanded: bool,
  setIsExpanded: bool => unit,
}

// Chart legends component props
type chartLegendsProps = {
  chartContainerRef: React.ref<Nullable.t<Dom.element>>,
  keys: array<string>,
  colors: array<string>,
  handleLegendClick: string => unit,
  handleLegendEnter: string => unit,
  handleLegendLeave: unit => unit,
  selectedKeys: array<string>,
  setSelectedKeys: array<string> => unit,
  hoveredKey?: string,
  activeKeys?: array<string>,
  stacked?: bool,
  isSmallScreen?: bool,
  stackedLegendsData?: array<stackedLegendsDataPoint>,
}

// Custom tooltip props
type customTooltipProps = {
  hoveredKey?: string,
  originalData: array<newNestedDataPoint>,
  setHoveredKey: string => unit,
  chartType: chartType,
  selectedKeys: array<string>,
  xAxis?: xAxisConfig,
  yAxis?: yAxisConfig,
  // Additional recharts tooltip props would be here
}

type legends = {
  title: string,
  total?: string,
}

type colorObj = {
  key: string,
  color: string,
}

type tooltipConfigPosition = {
  x?: float,
  y?: float,
}
type tooltipConfigAllowEscapeViewBox = {
  x?: bool,
  y?: bool,
}

type tooltipConfig = {
  position?: tooltipConfigPosition,
  allowEscapeViewBox?: tooltipConfigAllowEscapeViewBox,
}

// Chart component binding
@module("@juspay/blend-design-system") @react.component
external make: (
  ~chartType: chartType=?,
  ~data: array<newNestedDataPoint>,
  ~colors: array<colorObj>=?,
  ~slot1: React.element=?,
  ~slot2: React.element=?,
  ~slot3: React.element=?,
  ~legendPosition: chartLegendPosition=?,
  ~chartHeaderSlot: React.element,
  ~stackedLegends: bool=?,
  ~stackedLegendsData: array<stackedLegendsDataPoint>=?,
  ~barsize: int=?,
  ~xAxis: xAxisConfig=?,
  ~yAxis: yAxisConfig=?,
  ~tooltip: tooltipConfig=?,
  ~noData: noDataProps=?,
  ~height: int=?,
  ~showHeader: bool=?,
  ~showCollapseIcon: bool=?,
  ~isExpanded: bool=?,
  ~onExpandedChange: bool => unit=?,
  ~chartName: string=?,
  ~legends: array<legends>=?,
  @as("CustomizedDot") ~customizedDot: dotItemDotProps => React.element=?,
) => React.element = "Charts"
