// CoreChart component binding for granular charts
open Chart

type dimension =
  | @as("String") String(string)
  | @as("Number") Number(int)

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

module CoreChart = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~chartType: chartType=?,
    ~data: array<newNestedDataPoint>,
    ~colors: array<colorObj>=?,
    ~barsize: int=?,
    ~xAxis: xAxisConfig=?,
    ~yAxis: yAxisConfig=?,
    ~height: [#Number(int) | #String(string)]=?,
    ~width: [#Number(int) | #String(string)]=?,
    ~isSmallScreen: bool=?,
    ~hoveredKey: string=?,
    ~onHoveredKeyChange: option<string> => unit=?,
    ~selectedKeys: array<string>=?,
    ~enableHover: bool=?,
    ~tooltip: tooltipConfig=?,
  ) => React.element = "CoreChart"
}
