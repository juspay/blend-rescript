type props<'a, 'b, 'c> = {
  allowChartUpdate?: bool,
  constructorType?: ChartsSharedTypes.chartsBlendChartPropsConstructorType,
  containerProps?: Dict.t<'a>,
  highcharts?: InstanceTypes.highchartsModule,
  immutable?: bool,
  options?: HighchartsSharedSharedTypes.options<'a, 'b, 'c>,
  updateArgs?: array<bool>,
  callback?: HighchartsSharedSharedTypes.chart<'a, 'b, 'c> => unit,
  skeleton?: HighchartsSharedSharedTypes.chartV2SkeletonProps,
  noData?: HighchartsSharedSharedTypes.chartV2NoDataProps,
  ref?: React.ref<Nullable.t<DistTypes.highchartsReactRefObject<'a, 'b, 'c>>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a, 'b, 'c>> = "ChartV2"
