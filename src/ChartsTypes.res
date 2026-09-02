type chartsDay =
  | @as("numeric") Numeric
  | @as("2-digit") V2Digit
type chartsEra =
  | @as("long") Long
  | @as("short") Short
  | @as("narrow") Narrow
type chartsMonth =
  | @as("long") Long
  | @as("short") Short
  | @as("narrow") Narrow
  | @as("numeric") Numeric
  | @as("2-digit") V2Digit
type chartsTimeZoneName =
  | @as("long") Long
  | @as("short") Short
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
