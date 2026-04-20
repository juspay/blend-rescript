type title = {"text": string, "style": JSON.t}
type subtitle = {"text": string}
type data_obj = {"name": string, "value": int, "color": string, "id": string}
type new_series = {"type": string, "layoutAlgorithm": string, "data": array<data_obj>}
type series = {"type": string, "name": string, "data": array<(float, float)>}

type marker = {
  enabled?: bool,
  radius?: int,
  symbol?: string,
  fillColor?: JSON.t,
  lineWidth?: int,
  lineColor?: JSON.t,
}

type seriesHighChartObjDataOptions
type rec seriesHighChartObjData = {
  x: JSON.t,
  update: seriesHighChartObjData => unit,
  marker?: marker,
  options: seriesHighChartObjData,
}

type seriesHighChartObj = {
  update: (JSON.t, bool) => unit,
  setExtremes: (JSON.t, JSON.t) => unit,
  setVisible: (bool, bool) => unit,
  visible: bool,
  name: JSON.t,
  options: JSON.t,
  labelOffset: float,
  data?: array<seriesHighChartObjData>,
  setData: (array<seriesHighChartObjData>, bool) => unit,
}

type rec highchartRefT = {
  redraw: unit => unit,
  reflow: unit => unit,
  series?: array<seriesHighChartObj>,
  xAxis?: array<seriesHighChartObj>,
  yAxis?: array<seriesHighChartObj>,
  chart: highchartRefT,
  update: (JSON.t, bool) => unit,
  options: JSON.t,
  plotLeft?: float,
  plotWidth?: float,
  plotTop?: float,
  plotHeight?: float,
}

type fillColorSeries = {
  linearGradient?: (int, int, int, int),
  color?: string,
  stops: array<(float, string)>,
}
type tooltipPointer = {followPointer: bool}
type dataLableStyle = {
  color: option<string>,
  fontSize: option<string>,
}
type pointEvents = {events: {"click": unit => unit}}

type yAxisRecord = {value: float, name: string}
type dataLabels = {
  enabled: bool,
  formatter: option<JSON.t => string>,
  useHTML: bool,
}

type markerForSeriesLine = {enabled: bool, radius?: int, symbol?: string}

type zones = {
  value?: JSON.t,
  color?: string,
  className?: string,
  dashStyle?: string,
  fillColor?: string,
}

type seriesDataStatesHoverHalo = {size?: int}
type seriesDataStatesHover = {
  enabled?: bool,
  halo?: seriesDataStatesHoverHalo,
}
type seriesDataStates = {hover?: seriesDataStatesHover}
type seriesData<'a> = {
  x: 'a,
  y: Nullable.t<float>,
  marker?: marker,
  events?: JSON.t,
  states?: seriesDataStates,
  color?: string,
}

type seriesEvents = {
  mouseOver?: Js_OO.Callback.arity1<seriesHighChartObj => unit>,
  mouseOut?: unit => unit,
}
type seriesLine<'a> = {
  name: string,
  data: array<JSON.t>,
  events?: seriesEvents,
  color: option<string>,
  pointPlacement?: string,
  legendIndex?: int,
  fillColor?: fillColorSeries,
  fillOpacity?: float,
  lineWidth?: int,
  zoneAxis?: string,
  zones?: array<zones>,
  opacity?: float,
  stroke?: string,
  tooltip?: tooltipPointer,
  fill?: string,
  connectNulls?: bool,
  dataLabels?: dataLabels,
  showInLegend?: bool,
  marker?: markerForSeriesLine,
  dashStyle?: string,
  clip?: bool,
  tooltipdata?: array<string>,
  outages?: array<Dict.t<JSON.t>>,
  filteredOutages?: array<Dict.t<JSON.t>>,
}

type seriesLineObj<'a> = {
  name: string,
  data: array<'a>,
  color: option<string>,
  pointPlacement?: string,
  legendIndex: int,
  fillColor?: fillColorSeries,
  fillOpacity?: float,
  lineWidth?: int,
  zoneAxis?: string,
  zones?: array<zones>,
  opacity?: float,
  stroke?: string,
  tooltip?: tooltipPointer,
  fill?: string,
  connectNulls?: bool,
  dataLabels?: dataLabels,
  showInLegend?: bool,
  marker?: markerForSeriesLine,
  dashStyle?: string,
  clip?: bool,
}

type series2<'t> = {"type": string, "name": string, "data": array<'t>}

type series5

type gridLine = {attr: JSON.t => unit}
type pos
type tick = {
  gridLine: gridLine,
  pos: float,
}
type eventYaxis = {ticks: Dict.t<gridLine>}
type chartEventOnload = {yAxis: array<eventYaxis>, reflow: unit => unit}
type chartEvent = {render: unit => unit, load?: unit => unit}
type chart = {
  "type": string,
  "zoomType": string,
  "margin": option<array<int>>,
  "backgroundColor": Nullable.t<string>,
  "height": option<int>,
  "width": option<int>,
  "events": option<chartEvent>,
}
type linearGradient = {"x1": int, "y1": int, "x2": int, "y2": int}
type stop = (int, string)
type fillColor = {"linearGradient": linearGradient, "stops": array<stop>}
type hover = {"lineWidth": float}
type states = {"hover": hover}

type area = {
  "fillColor": option<fillColor>,
  "threshold": Nullable.t<string>,
  "lineWidth": float,
  "states": states,
  "pointStart": option<int>,
  "fillOpacity": float,
}

type boxplot = {"visible": bool}

type plotOptionshalo = {"size": option<int>}
type plotOptionsHover = {"enabled": option<bool>, "halo": option<plotOptionshalo>}
type plotOptionsStates = {"hover": option<plotOptionsHover>}
type plotOptionsStateConfig = {"states": plotOptionsStates}

type element = {visible: bool, name: string, setVisible: bool => unit}
type chartLegend = {series: array<element>}
type legendItem = {chart: chartLegend}

type eventClick = {
  "legendItemClick": option<(legendItem, ReactEvent.Keyboard.t) => unit>,
  "mouseOver": option<string>,
}

type plotOptionSeries = {
  "marker": marker,
  "states": option<plotOptionsStates>,
  "point": option<pointEvents>,
}

type plotOptions = {"series": {"cursor": string, "point": pointEvents}}

type xAxis = {"type": string}
type plotLinesLablesStyle = {
  color: option<string>,
  fontWeight: option<string>,
  background: option<string>,
}
type plotLineLable = {
  align: option<string>,
  style: option<plotLinesLablesStyle>,
  text: option<string>,
  useHTML: bool,
}
type plotLines = {
  label: option<plotLineLable>,
  dashStyle: option<string>,
  value: option<float>,
  width: option<int>,
  color: option<string>,
}
type chartCssObject = {
  color: string,
  backgroundColor: string,
}

type tickPositionerYaxis = {dataMin: float, dataMax: float}
type yAxis = {
  "tickPositioner": option<tickPositionerYaxis => array<float>>,
  "visible": bool,
  "title": JSON.t,
  "labels": option<{
    "formatter": option<yAxisRecord => string>,
    "enabled": bool,
    "useHTML": bool,
  }>,
  "plotLines": option<array<plotLines>>,
}
type seriesTooltip = {
  color: string,
  name: string,
}

type pointToolTip = {percentage: float, total: float}

type legendItemClickEvent = {
  name: string,
  preventDefault: unit => unit,
  chart: chartLegend,
}

type pieToolTipChart = {
  point: pointToolTip,
  key: string,
  y: float,
}

type tooltipchart = {
  series: seriesTooltip,
  x: string,
  y: float,
  key: float,
}
type legendchart = {name: string}
type credits = {"enabled": bool}
type legendStyle = {"color": string, "cursor": string, "fontSize": string, "fontWeight": string}

type tooltipPosition = {
  x: int,
  y: int,
}

type tooltipPoint = {
  plotX: int,
  plotY: int,
}

type plotPostion = {plotLeft: int, plotSizeX: int, plotSizeY: int, plotWidth: int, plotTop: int}
type toltipPositioner = {chart: plotPostion}

type tooltip = {
  "shared": bool,
  "enabled": bool,
  "useHTML": bool,
  "pointFormat": option<string>,
  "pointFormatter": option<tooltipchart => string>,
  "headerFormat": option<string>,
  "hideDelay": int,
  "outside": bool,
  "positioner": option<(toltipPositioner, int, int, tooltipPoint) => tooltipPoint>,
}

type thisObjectFormatter = {
  series?: {name?: string},
  y?: int,
}
type optionsJson<'a> = {
  chart: option<JSON.t>,
  title: JSON.t,
  series: array<'a>,
  plotOptions: option<JSON.t>,
  xAxis?: JSON.t,
  yAxis?: JSON.t,
  credits: credits,
  legend: JSON.t,
  tooltip?: JSON.t,
}

type options<'a> = {
  chart?: option<JSON.t>,
  title?: JSON.t,
  series: array<seriesLine<'a>>,
  plotOptions?: option<JSON.t>,
  accessibility?: JSON.t,
  xAxis?: JSON.t,
  yAxis?: JSON.t,
  credits?: credits,
  legend?: JSON.t,
  tooltip?: JSON.t,
  noData?: JSON.t,
}

type optionsObj<'a> = {
  chart: option<JSON.t>,
  title: JSON.t,
  series: array<seriesLineObj<'a>>,
  plotOptions: option<JSON.t>,
  accessibility?: JSON.t,
  xAxis: JSON.t,
  yAxis: JSON.t,
  credits: credits,
  legend: JSON.t,
  tooltip?: JSON.t,
}

type chartType = {
  chartType: string,
  backgroundColor: Nullable.t<string>,
}

type barChart = {"type": string, "backgroundColor": Nullable.t<string>}
type barSeries = {data: array<JSON.t>}
type xAxis1 = {"type": string}

type barChartSeries = {
  color?: string,
  data: array<float>,
  name?: string,
}
type barChartTitle = {text: string}
type barChartLabels = {formatter: option<yAxisRecord => string>}
type barLegend = {enabled: bool}
type barChartXAxis = {categories: array<string>}
type barChartYaxis = {
  gridLineColor: string,
  labels: option<barChartLabels>,
  title: barChartTitle,
}

type scriptType = Highchart | StockChart
type scriptFunctionType =
  | Highcharts_Modules_Sankey
  | Highcharts_Modules_Treemap
  | Highcharts_Highcharts_More
  | Highcharts_Modules_Sunburst
  | Highcharts_Modules_Treegraph
  | Highcharts_Modules_Heatmap
  | Highcharts_Modules_Xrange
  | Highcharts_Modules_Gantt
  | Highcharts_Modules_No_Data_To_Display

type highcharts = {objectEach: (Dict.t<gridLine>, tick => unit) => unit}

type highchartsResponse = {default: highcharts}

type highchartsFuncResponse = {default: highcharts => unit}

type afterChartCreated

type ticks
type callBackYaxis
type chartCallback = {yAxis: array<JSON.t>}

module MainDataJsonChart = {
  type t = {
    highcharts: highcharts,
    options: optionsJson<JSON.t>,
    callback?: (JSON.t, chartCallback) => unit,
    ref?: ReactDOM.domRef,
  }
}

module XRangeChart = {
  type point = {actualDiff?: float, actualX?: float, actualX2?: float}
  type thisObj = {
    x: float,
    x2: float,
    y: float,
    yCategory: string,
    color?: string,
    key?: string,
    point: point,
  }

  type chart = {\"type"?: string, height?: float, borderRadius?: int, backgroundColor?: string}
  type titleType = {text?: JSON.t}
  type seriesData = {
    name?: string,
    description?: string,
    x: JSON.t,
    label?: string,
    x2: JSON.t,
    y?: float,
    partialFill?: float,
    color?: string,
    actualDiff?: float,
    actualX?: float,
    actualX2?: float,
  }
  type tooltipFormatter = {point: seriesData}

  type dataLabels = {enabled: bool}
  type highChartStyle = {
    border?: string,
    padding?: string,
    borderRadius?: string,
    fontFamily?: string,
    fontSize?: string,
    fontStyle?: string,
    fontWeight?: int,
    lineHeight?: string,
    color?: string,
    letterSpacing?: string,
  }
  type axisLableFormatterThis = {value: float}

  type axisLabel = {
    useHTML?: bool,
    enabled?: bool,
    style?: highChartStyle,
    formatter?: Js_OO.Callback.arity1<axisLableFormatterThis => string>, //
    align?: string,
    x?: float,
    y?: float,
  }
  type axisType = {
    min?: float,
    max?: float,
    offset?: float,
    visible?: bool,
    \"type"?: string,
    title?: titleType,
    reversed?: bool,
    categories?: array<string>,
    labels?: axisLabel,
    gridLineWidth?: int,
    lineWidth?: int,
    lineColor?: string,
    gridLineDashStyle?: string,
    gridLineColor?: string,
    tickWidth?: int,
    tickInterval?: int,
  }
  type series = {
    name?: string,
    data?: array<seriesData>,
    borderColor?: string,
    pointWidth?: int,
    dataLabels?: dataLabels,
  }
  type legend = {enabled?: bool}
  type credits = {enabled?: bool} // Disable the "highcharts.com" watermark

  type plotOptionsSeriesPoint = {events?: JSON.t}
  type plotOptionsSeries = {
    point?: plotOptionsSeriesPoint,
    boostThreshold?: int,
    borderRadius?: int,
    groupPadding?: int,
    pointPadding?: int,
    events?: JSON.t,
    cursor?: string,
    borderWidth?: int,
    borderColor?: Nullable.t<string>,
  }
  type plotOptions = {series?: plotOptionsSeries, xrange?: plotOptionsSeries}
  type tooltipPoint = {
    plotX: Nullable.t<option<float>>,
    plotY: Nullable.t<option<float>>,
  }
  type tooltip = {
    formatter?: Js_OO.Callback.arity1<tooltipFormatter => string>, //unit => string,
    useHTML?: bool,
    outside?: bool,
    borderColor?: string,
    padding?: int,
    backgroundColor?: string,
    borderWidth?: int, // s border
    shadow?: bool,
    positioner?: (float, float, tooltipPoint) => JSON.t,
    hideDelay?: int,
  }
  type t = {
    chart?: chart,
    xAxis?: axisType,
    yAxis?: axisType,
    title?: titleType,
    subtitle?: titleType,
    colors?: array<string>,
    series?: array<series>,
    plotOptions?: plotOptions,
    tooltip?: tooltip,
    legend?: legend,
    credits?: credits,
  }
  type xRangeProps = {
    highcharts: highcharts,
    options: t,
    callback?: (JSON.t, chartCallback) => unit,
    ref?: ReactDOM.domRef,
  }
}

module Main = {
  type t = {
    highcharts: highcharts,
    options?: JSON.t,
    constructorType?: string,
  }
}
