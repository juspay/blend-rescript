type chartsBlendChartPropsConstructorType =
  | @as("width") Width
  | @as("height") Height
  | @as("color") Color
  | @as("x") X
  | @as("y") Y
  | @as("error") Error
  | @as("offset") Offset
  | @as("open") Open
  | @as("end") End
  | @as("start") Start
  | @as("backgroundSize") BackgroundSize
  | @as("r") R
  | @as("find") Find
  | @as("wrap") Wrap
  | @as("circle") Circle
  | @as("triangle") Triangle
  | @as("chart") Chart
  | @as("theme") Theme
  | @as("Time") Time
  | @as("format") Format
  | @as("animate") Animate
  | @as("arc") Arc
  | @as("callout") Callout
  | @as("diamond") Diamond
  | @as("rect") Rect
  | @as("addEvent") AddEvent
  | @as("animObject") AnimObject
  | @as("arrayMax") ArrayMax
  | @as("arrayMin") ArrayMin
  | @as("attr") Attr
  | @as("correctFloat") CorrectFloat
  | @as("createElement") CreateElement
  | @as("css") Css
  | @as("dateFormat") DateFormat
  | @as("defined") Defined
  | @as("destroyObjectProperties") DestroyObjectProperties
  | @as("discardElement") DiscardElement
  | @as("erase") Erase
  | @as("extend") Extend
  | @as("extendClass") ExtendClass
  | @as("fireEvent") FireEvent
  | @as("getDeferredAnimation") GetDeferredAnimation
  | @as("getMagnitude") GetMagnitude
  | @as("getOptions") GetOptions
  | @as("getStyle") GetStyle
  | @as("isArray") IsArray
  | @as("isClass") IsClass
  | @as("isDOMElement") IsDOMElement
  | @as("isFunction") IsFunction
  | @as("isNumber") IsNumber
  | @as("isObject") IsObject
  | @as("isString") IsString
  | @as("merge") Merge
  | @as("normalizeTickInterval") NormalizeTickInterval
  | @as("numberFormat") NumberFormat
  | @as("objectEach") ObjectEach
  | @as("pad") Pad
  | @as("pick") Pick
  | @as("relativeLength") RelativeLength
  | @as("removeEvent") RemoveEvent
  | @as("seriesType") SeriesType
  | @as("setAnimation") SetAnimation
  | @as("setOptions") SetOptions
  | @as("splat") Splat
  | @as("stableSort") StableSort
  | @as("stop") Stop
  | @as("syncTimeout") SyncTimeout
  | @as("uniqueKey") UniqueKey
  | @as("useSerialIds") UseSerialIds
  | @as("centerImage") CenterImage
  | @as("dateTimeFormat") DateTimeFormat
  | @as("deleteRows") DeleteRows
  | @as("getColumn") GetColumn
  | @as("getColumns") GetColumns
  | @as("getLogTickPositions") GetLogTickPositions
  | @as("getModified") GetModified
  | @as("getRendererType") GetRendererType
  | @as("getRow") GetRow
  | @as("modifyTree") ModifyTree
  | @as("registerRendererType") RegisterRendererType
  | @as("registerSeriesType") RegisterSeriesType
  | @as("roundedRect") RoundedRect
  | @as("setColumn") SetColumn
  | @as("setColumns") SetColumns
  | @as("setRow") SetRow
  | @as("str2dtf") Str2dtf
  | @as("triangleDown") TriangleDown
  | @as("unescapeEntities") UnescapeEntities
  | @as("Annotation") Annotation
  | @as("AnnotationControlPoint") AnnotationControlPoint
  | @as("AST") AST
  | @as("Axis") Axis
  | @as("Chart") Chart2
  | @as("Color") Color2
  | @as("DataTable") DataTable
  | @as("DataTableCore") DataTableCore
  | @as("Legend") Legend
  | @as("PlotLineOrBand") PlotLineOrBand
  | @as("Point") Point
  | @as("Pointer") Pointer
  | @as("Series") Series
  | @as("StackItem") StackItem
  | @as("SVGElement") SVGElement
  | @as("SVGLabel") SVGLabel
  | @as("SVGRenderer") SVGRenderer
  | @as("Tick") Tick
  | @as("Tooltip") Tooltip
  | @as("charts") Charts
  | @as("dateFormats") DateFormats
  | @as("defaultOptions") DefaultOptions
  | @as("anchorX") AnchorX
  | @as("anchorY") AnchorY
  | @as("clockwise") Clockwise
  | @as("context") Context
  | @as("innerR") InnerR
  | @as("longArc") LongArc
type chartsDay =
  | @as("numeric") Numeric
  | @as("2-digit") V2Digit
type chartsMonth =
  | @as("long") Long
  | @as("short") Short
  | @as("narrow") Narrow
  | @as("numeric") Numeric
  | @as("2-digit") V2Digit
type chartsAxisPointBreakEventObjectType =
  | @as("pointBreak") PointBreak
  | @as("pointInBreak") PointInBreak
type chartsChartTokensTypeAxisConfig = {
  lineColor: string,
  gridLineColor: string,
  labelColor: string,
}
type chartsChartTokensTypeHeaderPaddingConfig2 = {
  x: string,
  y: string,
}
type chartsChartTokensTypeHeaderSlotsConfig2 = {
  gap: string,
}
type chartsChartTokensTypeHeaderConfig2 = {
  padding: chartsChartTokensTypeHeaderPaddingConfig2,
  backgroundColor: string,
  borderBottom: string,
  borderRadius: string,
  slots: chartsChartTokensTypeHeaderSlotsConfig2,
}
type __typeSfat4 = {
  maxHeight: string,
}
type chartsUseThemeItemColorConfig = {
  active: string,
  default: string,
  hover: string,
  total: string,
}
type chartsUseThemeItemConfig = {
  gap: string,
  color: chartsUseThemeItemColorConfig,
  fontSize: string,
  fontWeight: string,
}
type chartsChartTokensTypeContentLegendConfig2 = {
  gap: string,
  dropdown: __typeSfat4,
  item: chartsUseThemeItemConfig,
}
type chartsChartTokensTypeContentPaddingConfig2 = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type chartsChartTokensTypeContentConfig2 = {
  legend: chartsChartTokensTypeContentLegendConfig2,
  padding: chartsChartTokensTypeContentPaddingConfig2,
  gap: string,
  backgroundColor: string,
}
