@module("@juspay/blend-design-system") @react.component
external make: (
  ~allowChartUpdate: bool=?,
  ~constructorType: ChartsTypes.chartsConstructorType=?,
  ~containerProps: Dict.t<'a>=?,
  ~highcharts: string=?, // ⚪ loose — was `typeof import("/Users/roshan.chourasiya/work/FE/opensource/blend-rescript/node_modules/highcharts/highcharts")`
  ~immutable: bool=?,
  ~options: HighchartsSharedTypes.options<'b>=?,
  ~updateArgs: string=?, // ⚪ loose — was `[boolean] | [boolean, boolean] | [boolean, boolean, boolean]`
  ~callback: HighchartsSharedTypes.chart => unit=?,
) => React.element = "BlendChart"
