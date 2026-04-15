type seriesEvents = {
  mouseOver?: HighchartTypes.XRangeChart.thisObj => unit,
  mouseOut?: unit => unit,
}

type fillColorSeries = {
  linearGradient?: (int, int, int, int),
  color?: string,
  stops: array<(float, string)>,
}

type tooltipPointer = {followPointer: bool}

type dataLabels = {
  enabled: bool,
  formatter?: option<JSON.t => string>,
  useHTML?: bool,
}

type formatterThis = {value: string}

type markerForSeriesLine = {enabled: bool, radius?: int, symbol?: string}

type credits = {"enabled": bool}

type xRangeDataType = {
  x: JSON.t,
  x2: JSON.t,
  y: option<float>,
  color?: string,
  name: string,
  downTime?: string,
  fluctuation?: string,
}

type point = {point: xRangeDataType}

type seriesLine = {
  @as("type") type_: string,
  name: string,
  data: array<xRangeDataType>,
  pointWidth?: int,
  point?: {"events": seriesEvents},
  dataLabels?: dataLabels,
}

type options<'a> = {
  chart?: option<JSON.t>,
  title?: JSON.t,
  series: array<seriesLine>,
  plotOptions?: option<JSON.t>,
  accessibility?: JSON.t,
  xAxis?: JSON.t,
  yAxis?: JSON.t,
  credits?: credits,
  legend?: JSON.t,
  tooltip?: JSON.t,
  noData?: JSON.t,
  zoneAxis?: string,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~options: options<'a>,
  ~ref: ReactDOM.Ref.currentDomRef=?,
  ~callback: (JSON.t, HighchartTypes.chartCallback) => unit=?,
) => React.element = "BlendChart"
