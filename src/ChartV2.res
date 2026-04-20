@module("@juspay/blend-design-system") @react.component
external make: (
  ~highcharts: HighchartTypes.highcharts,
  ~options: HighchartTypes.options<JSON.t>=?,
  ~callback: (JSON.t, HighchartTypes.chartCallback) => unit=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "ChartV2"
