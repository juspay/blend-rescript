// Import necessary types from ChartBindings
open Chart

// Use modules for separate components
module ChartLegends = {
  @module("@juspay/blend-design-system/dist/components/Charts/ChartLegend") @react.component
  external make: (
    ~chartContainerRef: React.ref<Nullable.t<Dom.element>>,
    ~keys: array<string>,
    ~colors: array<string>,
    ~handleLegendClick: string => unit,
    ~handleLegendEnter: string => unit,
    ~handleLegendLeave: unit => unit,
    ~selectedKeys: array<string>,
    ~setSelectedKeys: array<string> => unit,
    ~hoveredKey: string=?,
    ~activeKeys: array<string>=?,
    ~stacked: bool=?,
    ~isSmallScreen: bool=?,
    ~stackedLegendsData: array<stackedLegendsDataPoint>=?,
  ) => React.element = "ChartLegends"
}

module CustomTooltip = {
  @module("@juspay/blend-design-system/dist/components/Charts/CustomTooltip") @react.component
  external make: (
    ~active: bool=?,
    ~payload: array<'a>=?,
    ~label: string=?,
    ~hoveredKey: string=?,
    ~originalData: array<newNestedDataPoint>,
    ~setHoveredKey: string => unit,
    ~chartType: chartType,
    ~selectedKeys: array<string>,
    ~xAxis: xAxisConfig=?,
    ~yAxis: yAxisConfig=?,
  ) => React.element = "CustomTooltip"
}

module ChartHeader = {
  @module("@juspay/blend-design-system/dist/components/Charts/ChartHeader") @react.component
  external make: (
    ~slot1: React.element,
    ~slot2: React.element,
    ~slot3: React.element,
    ~chartHeaderSlot: React.element,
    ~onFullscreen: unit => unit=?,
    ~onExitFullscreen: unit => unit=?,
    ~isFullscreen: bool=?,
    ~isSmallScreen: bool=?,
    ~isExpanded: bool,
    ~setIsExpanded: bool => unit,
  ) => React.element = "ChartHeader"
}
