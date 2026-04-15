open ChartBindings

module RenderChart = {
  @module("@juspay/blend-design-system/dist/components/Charts/renderChart") @react.component
  external make: (
    ~flattenedData: array<flattenedDataPoint>,
    ~chartType: chartType,
    ~hoveredKey: string=?,
    ~lineKeys: array<string>,
    ~colors: array<string>,
    ~setHoveredKey: option<string> => unit,
    ~data: array<newNestedDataPoint>,
    ~selectedKeys: array<string>,
    ~isSmallScreen: bool=?,
    ~barsize: int=?,
    ~xAxis: xAxisConfig=?,
    ~yAxis: yAxisConfig=?,
  ) => React.element = "renderChart"
}
