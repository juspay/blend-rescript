// #190: compatibility re-exports — these identities moved to another module when a
// dependency cycle merged this home. Old `HighchartsSharedTypes.<name>` annotations keep resolving.
type chart<'a, 'b, 'c> = HighchartsSharedSharedTypes.chart<'a, 'b, 'c>
type axis<'a, 'b, 'c> = HighchartsSharedSharedTypes.axis<'a, 'b, 'c>
type tick<'a, 'b, 'c> = HighchartsSharedSharedTypes.tick<'a, 'b, 'c>
module AxisOptions = HighchartsSharedSharedTypes.AxisOptions
type xAxisOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.xAxisOptions<'a, 'b, 'c>
type axisAccessibilityOptionsObject = HighchartsSharedSharedTypes.axisAccessibilityOptionsObject
type xAxisBreaksOptions = HighchartsSharedSharedTypes.xAxisBreaksOptions
type currentDateIndicatorOptions = HighchartsSharedSharedTypes.currentDateIndicatorOptions
type dashStyleValue = HighchartsSharedSharedTypes.dashStyleValue
type navigatorXAxisCurrentDateIndicatorEventsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisCurrentDateIndicatorEventsOptions<'a, 'b, 'c>
module ChartsCurrentDateIndicatorOptionsEvents = HighchartsSharedSharedTypes.ChartsCurrentDateIndicatorOptionsEvents
type navigatorXAxisCurrentDateIndicatorLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisCurrentDateIndicatorLabelOptions<'a, 'b, 'c>
type alignValue = HighchartsSharedSharedTypes.alignValue
type verticalAlignValue = HighchartsSharedSharedTypes.verticalAlignValue
module ChartsCurrentDateIndicatorOptionsLabel = HighchartsSharedSharedTypes.ChartsCurrentDateIndicatorOptionsLabel
type navigatorXAxisCurrentDateIndicatorLabelsOptions = HighchartsSharedSharedTypes.navigatorXAxisCurrentDateIndicatorLabelsOptions
module ChartsCurrentDateIndicatorOptionsLabels = HighchartsSharedSharedTypes.ChartsCurrentDateIndicatorOptionsLabels
type boolOrCurrentDateIndicatorOptions = HighchartsSharedSharedTypes.boolOrCurrentDateIndicatorOptions
type axisDateTimeLabelFormatsOptions = HighchartsSharedSharedTypes.axisDateTimeLabelFormatsOptions
type axisDateTimeLabelFormatsOptionsObject = HighchartsSharedSharedTypes.axisDateTimeLabelFormatsOptionsObject
type dateTimeFormatOptionsHighcharts = HighchartsSharedSharedTypes.dateTimeFormatOptionsHighcharts
type stringOrDateTimeFormatOptions2 = HighchartsSharedSharedTypes.stringOrDateTimeFormatOptions2
type stringOrAxisDateTimeLabelFormatsOptionsObject = HighchartsSharedSharedTypes.stringOrAxisDateTimeLabelFormatsOptionsObject
type xAxisEventsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.xAxisEventsOptions<'a, 'b, 'c>
type xAxisGridOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.xAxisGridOptions<'a, 'b, 'c>
type optionsGridLineInterpolationValue = HighchartsSharedSharedTypes.optionsGridLineInterpolationValue
type xAxisLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.xAxisLabelsOptions<'a, 'b, 'c>
type axisLabelsFormatterContextObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.axisLabelsFormatterContextObject<'a, 'b, 'c>
type optionsOverflowValue = HighchartsSharedSharedTypes.optionsOverflowValue
type optionsPosition3dValue = HighchartsSharedSharedTypes.optionsPosition3dValue
type optionsMinorTickPositionValue = HighchartsSharedSharedTypes.optionsMinorTickPositionValue
type xAxisPlotLinesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.xAxisPlotLinesOptions<
  'a,
  'b,
  'c,
>
type xAxisPlotLinesLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.xAxisPlotLinesLabelOptions<'a, 'b, 'c>
type optionsTickmarkPlacementValue = HighchartsSharedSharedTypes.optionsTickmarkPlacementValue
type optionsTickPositionValue = HighchartsSharedSharedTypes.optionsTickPositionValue
type xAxisTitleOptions = HighchartsSharedSharedTypes.xAxisTitleOptions
type axisTitleAlignValue = HighchartsSharedSharedTypes.axisTitleAlignValue
type axisTypeValue = HighchartsSharedSharedTypes.axisTypeValue
type yAxisOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.yAxisOptions<'a, 'b, 'c>
type yAxisLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.yAxisLabelsOptions<'a, 'b, 'c>
type yAxisLabelsLevelsOptions = HighchartsSharedSharedTypes.yAxisLabelsLevelsOptions
type yAxisLabelsSymbolOptions = HighchartsSharedSharedTypes.yAxisLabelsSymbolOptions
type yAxisResizeOptions = HighchartsSharedSharedTypes.yAxisResizeOptions
type yAxisResizeControlledAxisOptions = HighchartsSharedSharedTypes.yAxisResizeControlledAxisOptions
type zAxisOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.zAxisOptions<'a, 'b, 'c>
type zAxisLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.zAxisLabelsOptions<'a, 'b, 'c>
type series<'a, 'b, 'c> = HighchartsSharedSharedTypes.series<'a, 'b, 'c>
type axisTickPositionsArray = HighchartsSharedSharedTypes.axisTickPositionsArray
type timeTicksInfoObject = HighchartsSharedSharedTypes.timeTicksInfoObject
type plotLineOrBand<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotLineOrBand<'a, 'b, 'c>
module AxisPlotLinesOptions = HighchartsSharedSharedTypes.AxisPlotLinesOptions
type pointerEventObject = HighchartsSharedSharedTypes.pointerEventObject
type point<'a, 'b, 'c> = HighchartsSharedSharedTypes.point<'a, 'b, 'c>
type svgPathCommand = HighchartsSharedSharedTypes.svgPathCommand
type extremesObject = HighchartsSharedSharedTypes.extremesObject
module GetLinePathTarget = HighchartsSharedSharedTypes.GetLinePathTarget
type axisPlotLinePathOptionsObject = HighchartsSharedSharedTypes.axisPlotLinePathOptionsObject
module AxisTitleOptions = HighchartsSharedSharedTypes.AxisTitleOptions
type legend<'a, 'b, 'c> = HighchartsSharedSharedTypes.legend<'a, 'b, 'c>
module ChartsLegendAllItems = HighchartsSharedSharedTypes.ChartsLegendAllItems
type legendOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.legendOptions<'a, 'b, 'c>
type legendAccessibilityOptions = HighchartsSharedSharedTypes.legendAccessibilityOptions
type legendAccessibilityKeyboardNavigationOptions = HighchartsSharedSharedTypes.legendAccessibilityKeyboardNavigationOptions
type gradientColorObject = HighchartsSharedSharedTypes.gradientColorObject
type linearGradientColorObject = HighchartsSharedSharedTypes.linearGradientColorObject
type radialGradientColorObject = HighchartsSharedSharedTypes.radialGradientColorObject
module ColorType = HighchartsSharedSharedTypes.ColorType
type patternObject = HighchartsSharedSharedTypes.patternObject
type patternOptionsObject = HighchartsSharedSharedTypes.patternOptionsObject
type legendBubbleLegendOptions = HighchartsSharedSharedTypes.legendBubbleLegendOptions
type legendBubbleLegendLabelsOptions = HighchartsSharedSharedTypes.legendBubbleLegendLabelsOptions
type bubbleLegendFormatterContextObject = HighchartsSharedSharedTypes.bubbleLegendFormatterContextObject
type legendBubbleLegendRangesOptions = HighchartsSharedSharedTypes.legendBubbleLegendRangesOptions
type bubbleSizeByValue = HighchartsSharedSharedTypes.bubbleSizeByValue
type legendEventsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.legendEventsOptions<'a, 'b, 'c>
type cssObjectHighcharts = HighchartsSharedSharedTypes.cssObjectHighcharts
type cursorValue = HighchartsSharedSharedTypes.cursorValue
type optionsLayoutValue = HighchartsSharedSharedTypes.optionsLayoutValue
type legendNavigationOptions = HighchartsSharedSharedTypes.legendNavigationOptions
type boolOrCssObject = HighchartsSharedSharedTypes.boolOrCssObject
type legendTitleOptions = HighchartsSharedSharedTypes.legendTitleOptions
type options<'a, 'b, 'c> = HighchartsSharedSharedTypes.options<'a, 'b, 'c>
type accessibilityOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.accessibilityOptions<'a, 'b, 'c>
type accessibilityAnnounceNewDataOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.accessibilityAnnounceNewDataOptionsObject<'a, 'b, 'c>
type keyboardNavigationOptionsObject = HighchartsSharedSharedTypes.keyboardNavigationOptionsObject
type keyboardNavigationFocusBorderOptionsObject = HighchartsSharedSharedTypes.keyboardNavigationFocusBorderOptionsObject
type keyboardNavigationSeriesNavigationOptionsObject = HighchartsSharedSharedTypes.keyboardNavigationSeriesNavigationOptionsObject
type optionsModeValue = HighchartsSharedSharedTypes.optionsModeValue
type optionsLandmarkVerbosityValue = HighchartsSharedSharedTypes.optionsLandmarkVerbosityValue
type accessibilityPointOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.accessibilityPointOptions<
  'a,
  'b,
  'c,
>
type accessibilityScreenReaderSectionOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.accessibilityScreenReaderSectionOptions<'a, 'b, 'c>
type accessibilitySeriesOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.accessibilitySeriesOptions<'a, 'b, 'c>
type annotationsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationsOptions<'a, 'b, 'c>
type animationOptionsObject = HighchartsSharedSharedTypes.animationOptionsObject
type partialRbka3 = HighchartsSharedSharedTypes.partialRbka3
type annotationControlPointOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationControlPointOptionsObject<'a, 'b, 'c>
type annotationControlPoint<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationControlPoint<
  'a,
  'b,
  'c,
>
type positionObject = HighchartsSharedSharedTypes.positionObject
type annotationDraggableValue = HighchartsSharedSharedTypes.annotationDraggableValue
type annotationsEventsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationsEventsOptions<
  'a,
  'b,
  'c,
>
type annotationsLabelOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationsLabelOptions<
  'a,
  'b,
  'c,
>
type annotationLabelAccessibilityOptionsObject = HighchartsSharedSharedTypes.annotationLabelAccessibilityOptionsObject
type shadowOptionsObject = HighchartsSharedSharedTypes.shadowOptionsObject
type boolOrShadowOptionsObject = HighchartsSharedSharedTypes.boolOrShadowOptionsObject
type annotationsLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationsLabelsOptions<
  'a,
  'b,
  'c,
>
type annotationControlPointOptionsObjectEtc150tj<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationControlPointOptionsObjectEtc150tj<'a, 'b, 'c>
type annotationMockPointOptionsObject = HighchartsSharedSharedTypes.annotationMockPointOptionsObject
module PointTarget = HighchartsSharedSharedTypes.PointTarget
type highchartsAnnotationsLabelsOptionsPoint<
  'a,
> = HighchartsSharedSharedTypes.highchartsAnnotationsLabelsOptionsPoint<'a>
type annotationsShapeOptions = HighchartsSharedSharedTypes.annotationsShapeOptions
type annotationsShapesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationsShapesOptions<
  'a,
  'b,
  'c,
>
type highchartsAnnotationsShapesOptionsPoint<
  'b,
> = HighchartsSharedSharedTypes.highchartsAnnotationsShapesOptionsPoint<'b>
type highchartsAnnotationsShapesOptionsPoints<
  'c,
> = HighchartsSharedSharedTypes.highchartsAnnotationsShapesOptionsPoints<'c>
type annotationsTypeOptions = HighchartsSharedSharedTypes.annotationsTypeOptions
type stringOrAnnotationMockPointOptionsObject = HighchartsSharedSharedTypes.stringOrAnnotationMockPointOptionsObject
type annotationsTypesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.annotationsTypesOptions<
  'a,
  'b,
  'c,
>
type annotationsTypesCrookedLineOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesCrookedLineOptions<'a, 'b, 'c>
type annotationsTypesCrookedLineTypeOptions = HighchartsSharedSharedTypes.annotationsTypesCrookedLineTypeOptions
type annotationsTypesCrookedLineTypeLineOptions = HighchartsSharedSharedTypes.annotationsTypesCrookedLineTypeLineOptions
type annotationsTypesCrookedLineTypePointsOptions = HighchartsSharedSharedTypes.annotationsTypesCrookedLineTypePointsOptions
type annotationsTypesElliottWaveOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesElliottWaveOptions<'a, 'b, 'c>
type annotationsTypesElliottWaveLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesElliottWaveLabelOptions<'a, 'b, 'c>
type annotationsTypesElliottWaveLabelStyleOptions = HighchartsSharedSharedTypes.annotationsTypesElliottWaveLabelStyleOptions
module ChartsAnnotationsTypesElliottWaveLabelOptionsStyle = HighchartsSharedSharedTypes.ChartsAnnotationsTypesElliottWaveLabelOptionsStyle
type annotationsTypesElliottWaveTypeOptions = HighchartsSharedSharedTypes.annotationsTypesElliottWaveTypeOptions
type annotationsTypesElliottWaveTypeLineOptions = HighchartsSharedSharedTypes.annotationsTypesElliottWaveTypeLineOptions
type annotationsTypesFibonacciOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesFibonacciOptions<'a, 'b, 'c>
type annotationsTypesFibonacciLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesFibonacciLabelOptions<'a, 'b, 'c>
module ChartsAnnotationsTypesFibonacciLabelOptionsStyle = HighchartsSharedSharedTypes.ChartsAnnotationsTypesFibonacciLabelOptionsStyle
type annotationsTypesFibonacciTypeOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesFibonacciTypeOptions<'a, 'b, 'c>
type annotationsTypesFibonacciTypeLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesFibonacciTypeLabelsOptions<'a, 'b, 'c>
type annotationsTypesFibonacciTimeZonesOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesFibonacciTimeZonesOptions<'a, 'b, 'c>
type annotationsTypesFibonacciTimeZonesTypeOptions = HighchartsSharedSharedTypes.annotationsTypesFibonacciTimeZonesTypeOptions
type annotationsTypesFibonacciTimeZonesTypeControlPointOptions = HighchartsSharedSharedTypes.annotationsTypesFibonacciTimeZonesTypeControlPointOptions
type annotationsTypesFibonacciTimeZonesTypeLineOptions = HighchartsSharedSharedTypes.annotationsTypesFibonacciTimeZonesTypeLineOptions
type annotationsTypesFibonacciTimeZonesTypePointsOptions = HighchartsSharedSharedTypes.annotationsTypesFibonacciTimeZonesTypePointsOptions
type annotationsTypesPitchforkOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesPitchforkOptions<'a, 'b, 'c>
type annotationsTypesPitchforkTypeOptions = HighchartsSharedSharedTypes.annotationsTypesPitchforkTypeOptions
type annotationsTypesPitchforkTypeInnerBackgroundOptions = HighchartsSharedSharedTypes.annotationsTypesPitchforkTypeInnerBackgroundOptions
type annotationsTypesTimeCyclesOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesTimeCyclesOptions<'a, 'b, 'c>
type annotationsTypesTimeCyclesTypeOptions = HighchartsSharedSharedTypes.annotationsTypesTimeCyclesTypeOptions
type annotationsTypesTunnelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesTunnelOptions<'a, 'b, 'c>
type annotationsTypesTunnelTypeOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesTunnelTypeOptions<'a, 'b, 'c>
module ChartsAnnotationsTypesTunnelTypeOptionsBackground = HighchartsSharedSharedTypes.ChartsAnnotationsTypesTunnelTypeOptionsBackground
type annotationsTypesVerticalLineOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesVerticalLineOptions<'a, 'b, 'c>
type annotationsTypesVerticalLineLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesVerticalLineLabelOptions<'a, 'b, 'c>
type annotationsTypesVerticalLineLabelStyleOptions = HighchartsSharedSharedTypes.annotationsTypesVerticalLineLabelStyleOptions
module ChartsAnnotationsTypesVerticalLineLabelOptionsStyle = HighchartsSharedSharedTypes.ChartsAnnotationsTypesVerticalLineLabelOptionsStyle
type annotationsTypesVerticalLineTypeOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesVerticalLineTypeOptions<'a, 'b, 'c>
type annotationsTypesVerticalLineTypeConnectorOptions = HighchartsSharedSharedTypes.annotationsTypesVerticalLineTypeConnectorOptions
type annotationsTypesVerticalLineTypeLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.annotationsTypesVerticalLineTypeLabelOptions<'a, 'b, 'c>
type boostOptions = HighchartsSharedSharedTypes.boostOptions
type boostDebugOptions = HighchartsSharedSharedTypes.boostDebugOptions
type captionOptions = HighchartsSharedSharedTypes.captionOptions
type captionStyleOptions = HighchartsSharedSharedTypes.captionStyleOptions
module ChartsCaptionOptionsStyle = HighchartsSharedSharedTypes.ChartsCaptionOptionsStyle
type chartOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.chartOptions<'a, 'b, 'c>
type chartEventsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.chartEventsOptions<'a, 'b, 'c>
type drillupAllEventObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.drillupAllEventObject<
  'a,
  'b,
  'c,
>
type exportDataEventObject = HighchartsSharedSharedTypes.exportDataEventObject
type selectEventObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.selectEventObject<'a, 'b, 'c>
type selectDataObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.selectDataObject<'a, 'b, 'c>
type geoJSON = HighchartsSharedSharedTypes.geoJSON
type geoJSONTranslation = HighchartsSharedSharedTypes.geoJSONTranslation
type chart3dOptions = HighchartsSharedSharedTypes.chart3dOptions
type chart3dFrameOptions = HighchartsSharedSharedTypes.chart3dFrameOptions
type chart3dFrameBackOptions = HighchartsSharedSharedTypes.chart3dFrameBackOptions
type optionsPanKeyValue = HighchartsSharedSharedTypes.optionsPanKeyValue
type chartPanningOptions = HighchartsSharedSharedTypes.chartPanningOptions
type optionsChartPanningTypeValue = HighchartsSharedSharedTypes.optionsChartPanningTypeValue
type chartParallelAxesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.chartParallelAxesOptions<
  'a,
  'b,
  'c,
>
type axisCrosshairOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.axisCrosshairOptions<'a, 'b, 'c>
type axisCrosshairLabelOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.axisCrosshairLabelOptions<
  'a,
  'b,
  'c,
>
type boolOrAxisCrosshairOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.boolOrAxisCrosshairOptions<'a, 'b, 'c>
type chartParallelAxesLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.chartParallelAxesLabelsOptions<'a, 'b, 'c>
type chartParallelAxesLabelsStyleOptions = HighchartsSharedSharedTypes.chartParallelAxesLabelsStyleOptions
module ChartsChartParallelAxesLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsChartParallelAxesLabelsOptionsStyle
type chartParallelAxesTitleOptions = HighchartsSharedSharedTypes.chartParallelAxesTitleOptions
module ChartsChartParallelAxesTitleOptionsStyle = HighchartsSharedSharedTypes.ChartsChartParallelAxesTitleOptionsStyle
type chartParallelAxesOptionsOrChartParallelAxesOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.chartParallelAxesOptionsOrChartParallelAxesOptionsArray<'a, 'b, 'c>
type chartResetZoomButtonOptions = HighchartsSharedSharedTypes.chartResetZoomButtonOptions
type alignObject = HighchartsSharedSharedTypes.alignObject
type chartResetZoomButtonPositionOptions = HighchartsSharedSharedTypes.chartResetZoomButtonPositionOptions
module ChartsChartResetZoomButtonOptionsPosition = HighchartsSharedSharedTypes.ChartsChartResetZoomButtonOptionsPosition
type buttonRelativeToValue = HighchartsSharedSharedTypes.buttonRelativeToValue
type chartScrollablePlotAreaOptions = HighchartsSharedSharedTypes.chartScrollablePlotAreaOptions
type chartZoomingOptions = HighchartsSharedSharedTypes.chartZoomingOptions
type optionsKeyValue = HighchartsSharedSharedTypes.optionsKeyValue
type chartZoomingMouseWheelOptions = HighchartsSharedSharedTypes.chartZoomingMouseWheelOptions
type optionsTypeValue = HighchartsSharedSharedTypes.optionsTypeValue
module ChartsChartZoomingOptionsMouseWheel = HighchartsSharedSharedTypes.ChartsChartZoomingOptionsMouseWheel
type optionsPinchTypeValue = HighchartsSharedSharedTypes.optionsPinchTypeValue
type chartZoomingResetButtonOptions = HighchartsSharedSharedTypes.chartZoomingResetButtonOptions
type chartZoomingResetButtonPositionOptions = HighchartsSharedSharedTypes.chartZoomingResetButtonPositionOptions
module ChartsChartZoomingResetButtonOptionsPosition = HighchartsSharedSharedTypes.ChartsChartZoomingResetButtonOptionsPosition
type optionsChartZoomingTypeValue = HighchartsSharedSharedTypes.optionsChartZoomingTypeValue
module ChartsOptionsColorAxis = HighchartsSharedSharedTypes.ChartsOptionsColorAxis
type colorAxisOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.colorAxisOptions<'a, 'b, 'c>
type optionsDataClassColorValue = HighchartsSharedSharedTypes.optionsDataClassColorValue
type colorAxisDataClassesOptions = HighchartsSharedSharedTypes.colorAxisDataClassesOptions
type colorAxisEventsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.colorAxisEventsOptions<
  'a,
  'b,
  'c,
>
type colorAxisLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.colorAxisLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsColorAxisLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsColorAxisLabelsOptionsStyle
type pointMarkerOptionsObject = HighchartsSharedSharedTypes.pointMarkerOptionsObject
type pointStatesOptionsObject = HighchartsSharedSharedTypes.pointStatesOptionsObject
type pointStatesHoverOptionsObject = HighchartsSharedSharedTypes.pointStatesHoverOptionsObject
type tooltipAnimationOptions = HighchartsSharedSharedTypes.tooltipAnimationOptions
type plotAbandsMarkerStatesHoverAnimationOptions = HighchartsSharedSharedTypes.plotAbandsMarkerStatesHoverAnimationOptions
type pointStatesInactiveOptionsObject = HighchartsSharedSharedTypes.pointStatesInactiveOptionsObject
type pointStatesNormalOptionsObject = HighchartsSharedSharedTypes.pointStatesNormalOptionsObject
type pointStatesSelectOptionsObject = HighchartsSharedSharedTypes.pointStatesSelectOptionsObject
type colorAxisTitleOptions = HighchartsSharedSharedTypes.colorAxisTitleOptions
module ChartsColorAxisTitleOptionsStyle = HighchartsSharedSharedTypes.ChartsColorAxisTitleOptionsStyle
module ChartsColorAxisOptionsTitle = HighchartsSharedSharedTypes.ChartsColorAxisOptionsTitle
type colorAxisTypeValue = HighchartsSharedSharedTypes.colorAxisTypeValue
type connectorsOptions = HighchartsSharedSharedTypes.connectorsOptions
type connectorsEndMarkerOptions = HighchartsSharedSharedTypes.connectorsEndMarkerOptions
type connectorsMarkerOptions = HighchartsSharedSharedTypes.connectorsMarkerOptions
type creditsOptions = HighchartsSharedSharedTypes.creditsOptions
module ChartsCreditsOptionsStyle = HighchartsSharedSharedTypes.ChartsCreditsOptionsStyle
type dataOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.dataOptions<'a, 'b, 'c>
type optionsColumnTypesValue = HighchartsSharedSharedTypes.optionsColumnTypesValue
type optionsDateFormatValue = HighchartsSharedSharedTypes.optionsDateFormatValue
type astNode = HighchartsSharedSharedTypes.astNode
type drilldownOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.drilldownOptions<'a, 'b, 'c>
type drilldownActiveDataLabelStyleOptions = HighchartsSharedSharedTypes.drilldownActiveDataLabelStyleOptions
module ChartsDrilldownOptionsActiveDataLabelStyle = HighchartsSharedSharedTypes.ChartsDrilldownOptionsActiveDataLabelStyle
type drilldownBreadcrumbsOptions = HighchartsSharedSharedTypes.drilldownBreadcrumbsOptions
type drilldownBreadcrumbsEventsOptions = HighchartsSharedSharedTypes.drilldownBreadcrumbsEventsOptions
type breadcrumbsAlignOptions = HighchartsSharedSharedTypes.breadcrumbsAlignOptions
type drilldownBreadcrumbsPositionOptions = HighchartsSharedSharedTypes.drilldownBreadcrumbsPositionOptions
module ChartsDrilldownBreadcrumbsOptionsPosition = HighchartsSharedSharedTypes.ChartsDrilldownBreadcrumbsOptionsPosition
type drilldownBreadcrumbsSeparatorOptions = HighchartsSharedSharedTypes.drilldownBreadcrumbsSeparatorOptions
module ChartsDrilldownBreadcrumbsSeparatorOptionsStyle = HighchartsSharedSharedTypes.ChartsDrilldownBreadcrumbsSeparatorOptionsStyle
type svgAttributes = HighchartsSharedSharedTypes.svgAttributes
type stringOrGetLinePathTargetTArray = HighchartsSharedSharedTypes.stringOrGetLinePathTargetTArray
type stringOrCssObject = HighchartsSharedSharedTypes.stringOrCssObject
type drilldownDrillUpButtonOptions = HighchartsSharedSharedTypes.drilldownDrillUpButtonOptions
module ChartsDrilldownDrillUpButtonOptionsPosition = HighchartsSharedSharedTypes.ChartsDrilldownDrillUpButtonOptionsPosition
module SeriesOptionsType = HighchartsSharedSharedTypes.SeriesOptionsType
type seriesAbandsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesAbandsOptions<'a, 'b, 'c>
type seriesAccessibilityOptionsObject = HighchartsSharedSharedTypes.seriesAccessibilityOptionsObject
type plotAbandsAccessibilityPointOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAbandsAccessibilityPointOptions<'a, 'b, 'c>
module ChartsSeriesAccessibilityOptionsObjectPoint = HighchartsSharedSharedTypes.ChartsSeriesAccessibilityOptionsObjectPoint
type optionsBoostBlendingValue = HighchartsSharedSharedTypes.optionsBoostBlendingValue
type plotAbandsBottomLineOptions = HighchartsSharedSharedTypes.plotAbandsBottomLineOptions
type plotAbandsBottomLineStylesOptions = HighchartsSharedSharedTypes.plotAbandsBottomLineStylesOptions
type dataGroupingOptionsObject = HighchartsSharedSharedTypes.dataGroupingOptionsObject
type plotAbandsDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAbandsDataLabelsOptions<'a, 'b, 'c>
type dataLabelsFilterOptionsObject = HighchartsSharedSharedTypes.dataLabelsFilterOptionsObject
type optionsOperatorValue = HighchartsSharedSharedTypes.optionsOperatorValue
type dataLabelsOverflowValue = HighchartsSharedSharedTypes.dataLabelsOverflowValue
type dataLabelsTextPathOptionsObject = HighchartsSharedSharedTypes.dataLabelsTextPathOptionsObject
type plotDependencywheelDataLabelsTextPathAttributesOptions = HighchartsSharedSharedTypes.plotDependencywheelDataLabelsTextPathAttributesOptions
type plotTreegraphDataLabelsLinkTextPathAttributesOptions = HighchartsSharedSharedTypes.plotTreegraphDataLabelsLinkTextPathAttributesOptions
type plotTreegraphLevelsDataLabelsLinkTextPathAttributesOptions = HighchartsSharedSharedTypes.plotTreegraphLevelsDataLabelsLinkTextPathAttributesOptions
module ChartsDataLabelsTextPathOptionsObjectAttributes = HighchartsSharedSharedTypes.ChartsDataLabelsTextPathOptionsObjectAttributes
type plotAbandsDataLabelsOptionsOrPlotAbandsDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAbandsDataLabelsOptionsOrPlotAbandsDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
type dataSortingOptionsObject = HighchartsSharedSharedTypes.dataSortingOptionsObject
module ChartsSeriesAbandsOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAbandsOptionsDataSorting
type seriesEventsOptionsObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesEventsOptionsObject<
  'a,
  'b,
  'c,
>
type seriesAfterAnimateEventObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesAfterAnimateEventObject<'a, 'b, 'c>
type seriesClickEventObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesClickEventObject<
  'a,
  'b,
  'c,
>
type optionsFindNearestPointByValue = HighchartsSharedSharedTypes.optionsFindNearestPointByValue
type optionsGapUnitValue = HighchartsSharedSharedTypes.optionsGapUnitValue
type seriesLabelOptionsObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesLabelOptionsObject<
  'a,
  'b,
  'c,
>
type labelIntersectBoxObject = HighchartsSharedSharedTypes.labelIntersectBoxObject
type plotAbandsLabelStyleOptions = HighchartsSharedSharedTypes.plotAbandsLabelStyleOptions
module ChartsSeriesLabelOptionsObjectStyle = HighchartsSharedSharedTypes.ChartsSeriesLabelOptionsObjectStyle
type seriesLastPriceOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesLastPriceOptionsObject<'a, 'b, 'c>
type optionsLegendSymbolValue = HighchartsSharedSharedTypes.optionsLegendSymbolValue
type plotAbandsOnPointOptions = HighchartsSharedSharedTypes.plotAbandsOnPointOptions
type plotAbandsOnPointConnectorOptions = HighchartsSharedSharedTypes.plotAbandsOnPointConnectorOptions
module ChartsPlotAbandsOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAbandsOnPointOptionsConnectorOptions
type plotAbandsOnPointPositionOptions = HighchartsSharedSharedTypes.plotAbandsOnPointPositionOptions
module ChartsPlotAbandsOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAbandsOnPointOptionsPosition
module ChartsSeriesAbandsOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAbandsOptionsOnPoint
type plotAbandsParamsOptions = HighchartsSharedSharedTypes.plotAbandsParamsOptions
type plotSeriesPointOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSeriesPointOptions<
  'a,
  'b,
  'c,
>
type pointEventsOptionsObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.pointEventsOptionsObject<
  'a,
  'b,
  'c,
>
type optionsStepValue = HighchartsSharedSharedTypes.optionsStepValue
type seriesTooltipOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesTooltipOptionsObject<'a, 'b, 'c>
type plotAbandsTooltipPositionOptions = HighchartsSharedSharedTypes.plotAbandsTooltipPositionOptions
type optionsRelativeToValue = HighchartsSharedSharedTypes.optionsRelativeToValue
type plotAdTooltipPositionOptions = HighchartsSharedSharedTypes.plotAdTooltipPositionOptions
module ChartsSeriesTooltipOptionsObjectPosition = HighchartsSharedSharedTypes.ChartsSeriesTooltipOptionsObjectPosition
type seriesZonesOptionsObject = HighchartsSharedSharedTypes.seriesZonesOptionsObject
module ChartsSeriesAbandsOptionsMapData = HighchartsSharedSharedTypes.ChartsSeriesAbandsOptionsMapData
type seriesAdOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesAdOptions<'a, 'b, 'c>
type optionsCompareValue = HighchartsSharedSharedTypes.optionsCompareValue
type plotAdDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAdDataLabelsOptions<
  'a,
  'b,
  'c,
>
type dataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.dataLabelsOptions<'a, 'b, 'c>
type plotAdDataLabelsOptionsOrPlotAdDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAdDataLabelsOptionsOrPlotAdDataLabelsOptionsArray<'a, 'b, 'c>
type plotAdDataSortingOptions = HighchartsSharedSharedTypes.plotAdDataSortingOptions
module ChartsSeriesAdOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAdOptionsDataSorting
type plotAdOnPointOptions = HighchartsSharedSharedTypes.plotAdOnPointOptions
type plotAdOnPointConnectorOptions = HighchartsSharedSharedTypes.plotAdOnPointConnectorOptions
module ChartsPlotAdOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAdOnPointOptionsConnectorOptions
type plotAdOnPointPositionOptions = HighchartsSharedSharedTypes.plotAdOnPointPositionOptions
module ChartsPlotAdOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAdOnPointOptionsPosition
module ChartsSeriesAdOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAdOptionsOnPoint
type plotAdParamsOptions = HighchartsSharedSharedTypes.plotAdParamsOptions
type seriesAoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesAoOptions<'a, 'b, 'c>
type plotAoDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAoDataLabelsOptions<
  'a,
  'b,
  'c,
>
type plotAoDataLabelsOptionsOrPlotAoDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAoDataLabelsOptionsOrPlotAoDataLabelsOptionsArray<'a, 'b, 'c>
module ChartsSeriesAoOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAoOptionsDataSorting
type plotAoOnPointOptions = HighchartsSharedSharedTypes.plotAoOnPointOptions
module ChartsPlotAoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAoOnPointOptionsConnectorOptions
module ChartsPlotAoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAoOnPointOptionsPosition
module ChartsSeriesAoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAoOptionsOnPoint
type plotAoParamsOptions = HighchartsSharedSharedTypes.plotAoParamsOptions
type seriesApoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesApoOptions<'a, 'b, 'c>
type plotApoDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotApoDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesApoOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesApoOptionsDataSorting
type plotApoOnPointOptions = HighchartsSharedSharedTypes.plotApoOnPointOptions
module ChartsPlotApoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotApoOnPointOptionsConnectorOptions
module ChartsPlotApoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotApoOnPointOptionsPosition
module ChartsSeriesApoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesApoOptionsOnPoint
type plotApoParamsOptions = HighchartsSharedSharedTypes.plotApoParamsOptions
type seriesArcdiagramOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesArcdiagramOptions<
  'b,
  'a,
  'c,
>
type seriesArcDiagramDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesArcDiagramDataLabelsOptionsObject<'a, 'b, 'c>
type seriesArcDiagramDataLabelsOptionsObjectEtc147el<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesArcDiagramDataLabelsOptionsObjectEtc147el<'a, 'b, 'c>
type plotArcdiagramOnPointOptions = HighchartsSharedSharedTypes.plotArcdiagramOnPointOptions
module ChartsPlotArcdiagramOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotArcdiagramOnPointOptionsConnectorOptions
module ChartsPlotArcdiagramOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotArcdiagramOnPointOptionsPosition
module ChartsSeriesArcdiagramOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesArcdiagramOptionsOnPoint
type seriesAreaOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesAreaOptions<'b, 'a, 'c>
type plotAreaDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAreaDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesAreaOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAreaOptionsDataSorting
type seriesDragDropOptionsObject = HighchartsSharedSharedTypes.seriesDragDropOptionsObject
type dragDropHandleOptionsObject = HighchartsSharedSharedTypes.dragDropHandleOptionsObject
type plotAreaOnPointOptions = HighchartsSharedSharedTypes.plotAreaOnPointOptions
module ChartsPlotAreaOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAreaOnPointOptionsConnectorOptions
module ChartsPlotAreaOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAreaOnPointOptionsPosition
module ChartsSeriesAreaOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAreaOptionsOnPoint
type optionsPointIntervalUnitValue = HighchartsSharedSharedTypes.optionsPointIntervalUnitValue
type optionsStackingValue = HighchartsSharedSharedTypes.optionsStackingValue
type seriesArearangeOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesArearangeOptions<
  'b,
  'a,
  'c,
>
type seriesAreaRangeDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesAreaRangeDataLabelsOptionsObject<'a, 'b, 'c>
type seriesAreaRangeDataLabelsOptionsObjectEtcmk4px<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesAreaRangeDataLabelsOptionsObjectEtcmk4px<'a, 'b, 'c>
module ChartsSeriesArearangeOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesArearangeOptionsDataSorting
type plotArearangeOnPointOptions = HighchartsSharedSharedTypes.plotArearangeOnPointOptions
module ChartsPlotArearangeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotArearangeOnPointOptionsConnectorOptions
module ChartsPlotArearangeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotArearangeOnPointOptionsPosition
module ChartsSeriesArearangeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesArearangeOptionsOnPoint
type seriesAreasplineOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesAreasplineOptions<
  'b,
  'a,
  'c,
>
type plotAreasplineDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAreasplineDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesAreasplineOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAreasplineOptionsDataSorting
type plotAreasplineOnPointOptions = HighchartsSharedSharedTypes.plotAreasplineOnPointOptions
module ChartsPlotAreasplineOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAreasplineOnPointOptionsConnectorOptions
module ChartsPlotAreasplineOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAreasplineOnPointOptionsPosition
module ChartsSeriesAreasplineOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAreasplineOptionsOnPoint
type seriesAreasplinerangeOptions<
  'b,
  'a,
  'c,
> = HighchartsSharedSharedTypes.seriesAreasplinerangeOptions<'b, 'a, 'c>
module ChartsSeriesAreasplinerangeOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAreasplinerangeOptionsDataSorting
type plotAreasplinerangeOnPointOptions = HighchartsSharedSharedTypes.plotAreasplinerangeOnPointOptions
module ChartsPlotAreasplinerangeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAreasplinerangeOnPointOptionsConnectorOptions
module ChartsPlotAreasplinerangeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAreasplinerangeOnPointOptionsPosition
module ChartsSeriesAreasplinerangeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAreasplinerangeOptionsOnPoint
type seriesAroonOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesAroonOptions<'a, 'b, 'c>
type plotAroonAroonDownOptions = HighchartsSharedSharedTypes.plotAroonAroonDownOptions
type plotAroonAroonDownStylesOptions = HighchartsSharedSharedTypes.plotAroonAroonDownStylesOptions
type plotAroonDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAroonDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesAroonOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAroonOptionsDataSorting
type plotAroonOnPointOptions = HighchartsSharedSharedTypes.plotAroonOnPointOptions
module ChartsPlotAroonOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAroonOnPointOptionsConnectorOptions
module ChartsPlotAroonOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAroonOnPointOptionsPosition
module ChartsSeriesAroonOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAroonOptionsOnPoint
type plotAroonParamsOptions = HighchartsSharedSharedTypes.plotAroonParamsOptions
type seriesAroonoscillatorOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesAroonoscillatorOptions<'a, 'b, 'c>
type plotAroonoscillatorDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAroonoscillatorDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesAroonoscillatorOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAroonoscillatorOptionsDataSorting
type plotAroonoscillatorOnPointOptions = HighchartsSharedSharedTypes.plotAroonoscillatorOnPointOptions
module ChartsPlotAroonoscillatorOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAroonoscillatorOnPointOptionsConnectorOptions
module ChartsPlotAroonoscillatorOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAroonoscillatorOnPointOptionsPosition
module ChartsSeriesAroonoscillatorOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAroonoscillatorOptionsOnPoint
type plotAroonoscillatorParamsOptions = HighchartsSharedSharedTypes.plotAroonoscillatorParamsOptions
type seriesAtrOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesAtrOptions<'a, 'b, 'c>
type plotAtrDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAtrDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesAtrOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesAtrOptionsDataSorting
type plotAtrOnPointOptions = HighchartsSharedSharedTypes.plotAtrOnPointOptions
module ChartsPlotAtrOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotAtrOnPointOptionsConnectorOptions
module ChartsPlotAtrOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotAtrOnPointOptionsPosition
module ChartsSeriesAtrOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesAtrOptionsOnPoint
type seriesBarOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesBarOptions<'b, 'a, 'c>
type borderRadiusOptionsObject = HighchartsSharedSharedTypes.borderRadiusOptionsObject
type stringOrNumberOrBorderRadiusOptionsObject = HighchartsSharedSharedTypes.stringOrNumberOrBorderRadiusOptionsObject
type plotBarDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBarDataLabelsOptions<
  'a,
  'b,
  'c,
>
type plotBarDataLabelsOptionsOrPlotBarDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBarDataLabelsOptionsOrPlotBarDataLabelsOptionsArray<'a, 'b, 'c>
module ChartsSeriesBarOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesBarOptionsDataSorting
type plotBarOnPointOptions = HighchartsSharedSharedTypes.plotBarOnPointOptions
module ChartsPlotBarOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotBarOnPointOptionsConnectorOptions
module ChartsPlotBarOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotBarOnPointOptionsPosition
module ChartsSeriesBarOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesBarOptionsOnPoint
type seriesBbOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesBbOptions<'a, 'b, 'c>
type plotBbDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBbDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesBbOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesBbOptionsDataSorting
type plotBbOnPointOptions = HighchartsSharedSharedTypes.plotBbOnPointOptions
module ChartsPlotBbOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotBbOnPointOptionsConnectorOptions
module ChartsPlotBbOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotBbOnPointOptionsPosition
module ChartsSeriesBbOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesBbOptionsOnPoint
type plotBbParamsOptions = HighchartsSharedSharedTypes.plotBbParamsOptions
type seriesBellcurveOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesBellcurveOptions<
  'a,
  'b,
  'c,
>
type plotBellcurveDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBellcurveDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesBellcurveOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesBellcurveOptionsDataSorting
type plotBellcurveOnPointOptions = HighchartsSharedSharedTypes.plotBellcurveOnPointOptions
module ChartsPlotBellcurveOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotBellcurveOnPointOptionsConnectorOptions
module ChartsPlotBellcurveOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotBellcurveOnPointOptionsPosition
module ChartsSeriesBellcurveOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesBellcurveOptionsOnPoint
type seriesBoxplotOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesBoxplotOptions<'b, 'a, 'c>
type plotBoxplotDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBoxplotDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesBoxplotOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesBoxplotOptionsDataSorting
type plotBoxplotOnPointOptions = HighchartsSharedSharedTypes.plotBoxplotOnPointOptions
module ChartsPlotBoxplotOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotBoxplotOnPointOptionsConnectorOptions
module ChartsPlotBoxplotOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotBoxplotOnPointOptionsPosition
module ChartsSeriesBoxplotOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesBoxplotOptionsOnPoint
type seriesBubbleOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesBubbleOptions<'b, 'a, 'c>
type plotBubbleDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBubbleDataLabelsOptions<'a, 'b, 'c>
type plotBubbleDataLabelsOptionsOrPlotBubbleDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBubbleDataLabelsOptionsOrPlotBubbleDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
module ChartsSeriesBubbleOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesBubbleOptionsDataSorting
type plotBubbleJitterOptions = HighchartsSharedSharedTypes.plotBubbleJitterOptions
type plotBubbleOnPointOptions = HighchartsSharedSharedTypes.plotBubbleOnPointOptions
module ChartsPlotBubbleOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotBubbleOnPointOptionsConnectorOptions
module ChartsPlotBubbleOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotBubbleOnPointOptionsPosition
module ChartsSeriesBubbleOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesBubbleOptionsOnPoint
type seriesBulletOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesBulletOptions<'b, 'a, 'c>
type plotBulletDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBulletDataLabelsOptions<'a, 'b, 'c>
type plotBulletDataLabelsOptionsOrPlotBulletDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotBulletDataLabelsOptionsOrPlotBulletDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
type plotBulletOnPointOptions = HighchartsSharedSharedTypes.plotBulletOnPointOptions
module ChartsPlotBulletOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotBulletOnPointOptionsConnectorOptions
module ChartsPlotBulletOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotBulletOnPointOptionsPosition
module ChartsSeriesBulletOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesBulletOptionsOnPoint
type plotBulletTargetOptions = HighchartsSharedSharedTypes.plotBulletTargetOptions
type seriesCandlestickOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesCandlestickOptions<
  'b,
  'a,
  'c,
>
type plotCandlestickDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotCandlestickDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesCandlestickOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesCandlestickOptionsDataSorting
type plotCandlestickOnPointOptions = HighchartsSharedSharedTypes.plotCandlestickOnPointOptions
module ChartsPlotCandlestickOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotCandlestickOnPointOptionsConnectorOptions
module ChartsPlotCandlestickOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotCandlestickOnPointOptionsPosition
module ChartsSeriesCandlestickOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesCandlestickOptionsOnPoint
type optionsPointValKeyValue = HighchartsSharedSharedTypes.optionsPointValKeyValue
type seriesCciOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesCciOptions<'a, 'b, 'c>
type plotCciDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCciDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesCciOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesCciOptionsDataSorting
type plotCciOnPointOptions = HighchartsSharedSharedTypes.plotCciOnPointOptions
module ChartsPlotCciOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotCciOnPointOptionsConnectorOptions
module ChartsPlotCciOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotCciOnPointOptionsPosition
module ChartsSeriesCciOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesCciOptionsOnPoint
type seriesChaikinOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesChaikinOptions<'a, 'b, 'c>
type plotChaikinDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotChaikinDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesChaikinOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesChaikinOptionsDataSorting
type plotChaikinOnPointOptions = HighchartsSharedSharedTypes.plotChaikinOnPointOptions
module ChartsPlotChaikinOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotChaikinOnPointOptionsConnectorOptions
module ChartsPlotChaikinOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotChaikinOnPointOptionsPosition
module ChartsSeriesChaikinOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesChaikinOptionsOnPoint
type plotChaikinParamsOptions = HighchartsSharedSharedTypes.plotChaikinParamsOptions
type seriesCmfOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesCmfOptions<'a, 'b, 'c>
type plotCmfDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCmfDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesCmfOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesCmfOptionsDataSorting
type plotCmfOnPointOptions = HighchartsSharedSharedTypes.plotCmfOnPointOptions
module ChartsPlotCmfOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotCmfOnPointOptionsConnectorOptions
module ChartsPlotCmfOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotCmfOnPointOptionsPosition
module ChartsSeriesCmfOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesCmfOptionsOnPoint
type seriesCmoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesCmoOptions<'a, 'b, 'c>
type plotCmoDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCmoDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesCmoOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesCmoOptionsDataSorting
type plotCmoOnPointOptions = HighchartsSharedSharedTypes.plotCmoOnPointOptions
module ChartsPlotCmoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotCmoOnPointOptionsConnectorOptions
module ChartsPlotCmoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotCmoOnPointOptionsPosition
module ChartsSeriesCmoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesCmoOptionsOnPoint
type seriesColumnOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesColumnOptions<'b, 'a, 'c>
type plotColumnDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotColumnDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesColumnOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesColumnOptionsDataSorting
type plotColumnOnPointOptions = HighchartsSharedSharedTypes.plotColumnOnPointOptions
module ChartsPlotColumnOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotColumnOnPointOptionsConnectorOptions
module ChartsPlotColumnOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotColumnOnPointOptionsPosition
module ChartsSeriesColumnOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesColumnOptionsOnPoint
type seriesColumnpyramidOptions<
  'b,
  'a,
  'c,
> = HighchartsSharedSharedTypes.seriesColumnpyramidOptions<'b, 'a, 'c>
type plotColumnpyramidDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotColumnpyramidDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesColumnpyramidOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesColumnpyramidOptionsDataSorting
type plotColumnpyramidOnPointOptions = HighchartsSharedSharedTypes.plotColumnpyramidOnPointOptions
module ChartsPlotColumnpyramidOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotColumnpyramidOnPointOptionsConnectorOptions
module ChartsPlotColumnpyramidOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotColumnpyramidOnPointOptionsPosition
module ChartsSeriesColumnpyramidOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesColumnpyramidOptionsOnPoint
type seriesColumnrangeOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesColumnrangeOptions<
  'b,
  'a,
  'c,
>
type plotColumnrangeBorderRadiusOptions = HighchartsSharedSharedTypes.plotColumnrangeBorderRadiusOptions
module ChartsSeriesColumnrangeOptionsBorderRadius = HighchartsSharedSharedTypes.ChartsSeriesColumnrangeOptionsBorderRadius
module ChartsSeriesColumnrangeOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesColumnrangeOptionsDataSorting
type plotColumnrangeOnPointOptions = HighchartsSharedSharedTypes.plotColumnrangeOnPointOptions
module ChartsPlotColumnrangeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotColumnrangeOnPointOptionsConnectorOptions
module ChartsPlotColumnrangeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotColumnrangeOnPointOptionsPosition
module ChartsSeriesColumnrangeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesColumnrangeOptionsOnPoint
type seriesContourOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesContourOptions<'b, 'a, 'c>
type plotContourDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotContourDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesContourOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesContourOptionsDataSorting
type plotContourOnPointOptions = HighchartsSharedSharedTypes.plotContourOnPointOptions
module ChartsPlotContourOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotContourOnPointOptionsConnectorOptions
module ChartsPlotContourOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotContourOnPointOptionsPosition
module ChartsSeriesContourOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesContourOptionsOnPoint
type seriesCylinderOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesCylinderOptions<
  'b,
  'a,
  'c,
>
type plotCylinderDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotCylinderDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesCylinderOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesCylinderOptionsDataSorting
type plotCylinderOnPointOptions = HighchartsSharedSharedTypes.plotCylinderOnPointOptions
module ChartsPlotCylinderOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotCylinderOnPointOptionsConnectorOptions
module ChartsPlotCylinderOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotCylinderOnPointOptionsPosition
module ChartsSeriesCylinderOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesCylinderOptionsOnPoint
type seriesDemaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesDemaOptions<'a, 'b, 'c>
type plotDemaDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDemaDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesDemaOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesDemaOptionsDataSorting
type plotDemaOnPointOptions = HighchartsSharedSharedTypes.plotDemaOnPointOptions
module ChartsPlotDemaOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotDemaOnPointOptionsConnectorOptions
module ChartsPlotDemaOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotDemaOnPointOptionsPosition
module ChartsSeriesDemaOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesDemaOptionsOnPoint
type plotDemaParamsOptions = HighchartsSharedSharedTypes.plotDemaParamsOptions
type seriesDependencywheelOptions<
  'b,
  'a,
  'c,
> = HighchartsSharedSharedTypes.seriesDependencywheelOptions<'b, 'a, 'c>
type seriesSankeyDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesSankeyDataLabelsOptionsObject<'a, 'b, 'c>
type seriesSankeyDataLabelsOptionsObjectEtcuyuhz<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesSankeyDataLabelsOptionsObjectEtcuyuhz<'a, 'b, 'c>
type plotDependencywheelOnPointOptions = HighchartsSharedSharedTypes.plotDependencywheelOnPointOptions
module ChartsPlotDependencywheelOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotDependencywheelOnPointOptionsConnectorOptions
module ChartsPlotDependencywheelOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotDependencywheelOnPointOptionsPosition
module ChartsSeriesDependencywheelOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesDependencywheelOptionsOnPoint
type seriesDisparityindexOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesDisparityindexOptions<'a, 'b, 'c>
type plotDisparityindexDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotDisparityindexDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesDisparityindexOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesDisparityindexOptionsDataSorting
type plotDisparityindexOnPointOptions = HighchartsSharedSharedTypes.plotDisparityindexOnPointOptions
module ChartsPlotDisparityindexOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotDisparityindexOnPointOptionsConnectorOptions
module ChartsPlotDisparityindexOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotDisparityindexOnPointOptionsPosition
module ChartsSeriesDisparityindexOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesDisparityindexOptionsOnPoint
type plotDisparityindexParamsOptions = HighchartsSharedSharedTypes.plotDisparityindexParamsOptions
type seriesDmiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesDmiOptions<'a, 'b, 'c>
type plotDmiDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDmiDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesDmiOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesDmiOptionsDataSorting
type plotDmiOnPointOptions = HighchartsSharedSharedTypes.plotDmiOnPointOptions
module ChartsPlotDmiOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotDmiOnPointOptionsConnectorOptions
module ChartsPlotDmiOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotDmiOnPointOptionsPosition
module ChartsSeriesDmiOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesDmiOptionsOnPoint
type plotDmiPlusDILineOptions = HighchartsSharedSharedTypes.plotDmiPlusDILineOptions
type plotDmiPlusDILineStylesOptions = HighchartsSharedSharedTypes.plotDmiPlusDILineStylesOptions
type seriesDpoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesDpoOptions<'a, 'b, 'c>
type plotDpoDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDpoDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesDpoOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesDpoOptionsDataSorting
type plotDpoOnPointOptions = HighchartsSharedSharedTypes.plotDpoOnPointOptions
module ChartsPlotDpoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotDpoOnPointOptionsConnectorOptions
module ChartsPlotDpoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotDpoOnPointOptionsPosition
module ChartsSeriesDpoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesDpoOptionsOnPoint
type seriesDumbbellOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesDumbbellOptions<
  'b,
  'a,
  'c,
>
module ChartsSeriesDumbbellOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesDumbbellOptionsDataSorting
type plotDumbbellOnPointOptions = HighchartsSharedSharedTypes.plotDumbbellOnPointOptions
module ChartsPlotDumbbellOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotDumbbellOnPointOptionsConnectorOptions
module ChartsPlotDumbbellOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotDumbbellOnPointOptionsPosition
module ChartsSeriesDumbbellOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesDumbbellOptionsOnPoint
type seriesEmaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesEmaOptions<'a, 'b, 'c>
type plotEmaDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotEmaDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesEmaOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesEmaOptionsDataSorting
type plotEmaOnPointOptions = HighchartsSharedSharedTypes.plotEmaOnPointOptions
module ChartsPlotEmaOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotEmaOnPointOptionsConnectorOptions
module ChartsPlotEmaOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotEmaOnPointOptionsPosition
module ChartsSeriesEmaOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesEmaOptionsOnPoint
type seriesErrorbarOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesErrorbarOptions<
  'b,
  'a,
  'c,
>
type plotErrorbarDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotErrorbarDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesErrorbarOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesErrorbarOptionsDataSorting
type plotErrorbarOnPointOptions = HighchartsSharedSharedTypes.plotErrorbarOnPointOptions
module ChartsPlotErrorbarOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotErrorbarOnPointOptionsConnectorOptions
module ChartsPlotErrorbarOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotErrorbarOnPointOptionsPosition
module ChartsSeriesErrorbarOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesErrorbarOptionsOnPoint
type seriesFlagsOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesFlagsOptions<'b, 'a, 'c>
type plotFlagsDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotFlagsDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesFlagsOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesFlagsOptionsDataSorting
type optionsOnKeyValue = HighchartsSharedSharedTypes.optionsOnKeyValue
type plotFlagsOnPointOptions = HighchartsSharedSharedTypes.plotFlagsOnPointOptions
module ChartsPlotFlagsOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotFlagsOnPointOptionsConnectorOptions
module ChartsPlotFlagsOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotFlagsOnPointOptionsPosition
module ChartsSeriesFlagsOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesFlagsOptionsOnPoint
type flagsShapeValue = HighchartsSharedSharedTypes.flagsShapeValue
type optionsTextAlignValue = HighchartsSharedSharedTypes.optionsTextAlignValue
type seriesFlowmapOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesFlowmapOptions<'b, 'a, 'c>
type seriesFlowMapSeriesOptionsObject = HighchartsSharedSharedTypes.seriesFlowMapSeriesOptionsObject
type seriesFunnel3dOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesFunnel3dOptions<
  'b,
  'a,
  'c,
>
type plotFunnel3dDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotFunnel3dDataLabelsOptions<'a, 'b, 'c>
type plotFunnel3dDataLabelsOptionsEtc3ql0o<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotFunnel3dDataLabelsOptionsEtc3ql0o<'a, 'b, 'c>
type plotFunnel3dOnPointOptions = HighchartsSharedSharedTypes.plotFunnel3dOnPointOptions
module ChartsPlotFunnel3dOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotFunnel3dOnPointOptionsConnectorOptions
module ChartsPlotFunnel3dOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotFunnel3dOnPointOptionsPosition
module ChartsSeriesFunnel3dOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesFunnel3dOptionsOnPoint
type seriesFunnelOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesFunnelOptions<'b, 'a, 'c>
type seriesPieDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesPieDataLabelsOptionsObject<'a, 'b, 'c>
type seriesPieDataLabelsOptionsObjectEtc1kumz<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesPieDataLabelsOptionsObjectEtc1kumz<'a, 'b, 'c>
type plotFunnelOnPointOptions = HighchartsSharedSharedTypes.plotFunnelOnPointOptions
module ChartsPlotFunnelOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotFunnelOnPointOptionsConnectorOptions
module ChartsPlotFunnelOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotFunnelOnPointOptionsPosition
module ChartsSeriesFunnelOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesFunnelOptionsOnPoint
type seriesGanttOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesGanttOptions<'b, 'a, 'c>
type seriesConnectorsOptionsObject = HighchartsSharedSharedTypes.seriesConnectorsOptionsObject
type connectorsAnimationOptionsObject = HighchartsSharedSharedTypes.connectorsAnimationOptionsObject
type plotGanttDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotGanttDataLabelsOptions<'a, 'b, 'c>
type plotGanttDataLabelsStyleOptions = HighchartsSharedSharedTypes.plotGanttDataLabelsStyleOptions
module ChartsPlotGanttDataLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsPlotGanttDataLabelsOptionsStyle
type plotGanttDataLabelsOptionsOrPlotGanttDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotGanttDataLabelsOptionsOrPlotGanttDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
type plotGanttOnPointOptions = HighchartsSharedSharedTypes.plotGanttOnPointOptions
module ChartsPlotGanttOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotGanttOnPointOptionsConnectorOptions
module ChartsPlotGanttOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotGanttOnPointOptionsPosition
module ChartsSeriesGanttOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesGanttOptionsOnPoint
type plotGanttPartialFillOptions = HighchartsSharedSharedTypes.plotGanttPartialFillOptions
type seriesGaugeOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesGaugeOptions<'b, 'a, 'c>
type plotGaugeDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotGaugeDataLabelsOptions<'a, 'b, 'c>
type plotGaugeDataLabelsOptionsOrPlotGaugeDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotGaugeDataLabelsOptionsOrPlotGaugeDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
type plotGaugeDialOptions = HighchartsSharedSharedTypes.plotGaugeDialOptions
type plotGaugeOnPointOptions = HighchartsSharedSharedTypes.plotGaugeOnPointOptions
module ChartsPlotGaugeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotGaugeOnPointOptionsConnectorOptions
module ChartsPlotGaugeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotGaugeOnPointOptionsPosition
module ChartsSeriesGaugeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesGaugeOptionsOnPoint
type plotGaugePivotOptions = HighchartsSharedSharedTypes.plotGaugePivotOptions
type seriesGeoheatmapOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesGeoheatmapOptions<
  'b,
  'a,
  'c,
>
type plotGeoheatmapDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotGeoheatmapDataLabelsOptions<'a, 'b, 'c>
type plotGeoheatmapDataLabelsOptionsEtc110mk<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotGeoheatmapDataLabelsOptionsEtc110mk<'a, 'b, 'c>
type interpolationOptionsObject = HighchartsSharedSharedTypes.interpolationOptionsObject
type plotGeoheatmapInterpolationOptions = HighchartsSharedSharedTypes.plotGeoheatmapInterpolationOptions
module ChartsSeriesGeoheatmapOptionsInterpolation = HighchartsSharedSharedTypes.ChartsSeriesGeoheatmapOptionsInterpolation
type seriesHeatmapOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesHeatmapOptions<'b, 'a, 'c>
type plotHeatmapDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotHeatmapDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesHeatmapOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesHeatmapOptionsDataSorting
type plotHeatmapOnPointOptions = HighchartsSharedSharedTypes.plotHeatmapOnPointOptions
module ChartsPlotHeatmapOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotHeatmapOnPointOptionsConnectorOptions
module ChartsPlotHeatmapOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotHeatmapOnPointOptionsPosition
module ChartsSeriesHeatmapOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesHeatmapOptionsOnPoint
type seriesHeikinashiOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesHeikinashiOptions<
  'b,
  'a,
  'c,
>
type plotHeikinashiDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotHeikinashiDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesHeikinashiOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesHeikinashiOptionsDataSorting
type plotHeikinashiOnPointOptions = HighchartsSharedSharedTypes.plotHeikinashiOnPointOptions
module ChartsPlotHeikinashiOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotHeikinashiOnPointOptionsConnectorOptions
module ChartsPlotHeikinashiOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotHeikinashiOnPointOptionsPosition
module ChartsSeriesHeikinashiOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesHeikinashiOptionsOnPoint
type seriesHistogramOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesHistogramOptions<
  'a,
  'b,
  'c,
>
type plotHistogramDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotHistogramDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesHistogramOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesHistogramOptionsDataSorting
type plotHistogramOnPointOptions = HighchartsSharedSharedTypes.plotHistogramOnPointOptions
module ChartsPlotHistogramOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotHistogramOnPointOptionsConnectorOptions
module ChartsPlotHistogramOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotHistogramOnPointOptionsPosition
module ChartsSeriesHistogramOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesHistogramOptionsOnPoint
type seriesHlcOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesHlcOptions<'b, 'a, 'c>
type plotHlcDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotHlcDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesHlcOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesHlcOptionsDataSorting
type plotHlcOnPointOptions = HighchartsSharedSharedTypes.plotHlcOnPointOptions
module ChartsPlotHlcOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotHlcOnPointOptionsConnectorOptions
module ChartsPlotHlcOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotHlcOnPointOptionsPosition
module ChartsSeriesHlcOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesHlcOptionsOnPoint
type optionsHLCPointValKeyValue = HighchartsSharedSharedTypes.optionsHLCPointValKeyValue
type seriesHollowcandlestickOptions<
  'b,
  'a,
  'c,
> = HighchartsSharedSharedTypes.seriesHollowcandlestickOptions<'b, 'a, 'c>
type plotHollowcandlestickDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotHollowcandlestickDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesHollowcandlestickOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesHollowcandlestickOptionsDataSorting
type plotHollowcandlestickOnPointOptions = HighchartsSharedSharedTypes.plotHollowcandlestickOnPointOptions
module ChartsPlotHollowcandlestickOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotHollowcandlestickOnPointOptionsConnectorOptions
module ChartsPlotHollowcandlestickOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotHollowcandlestickOnPointOptionsPosition
module ChartsSeriesHollowcandlestickOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesHollowcandlestickOptionsOnPoint
type seriesIkhOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesIkhOptions<'a, 'b, 'c>
type plotIkhDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotIkhDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesIkhOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesIkhOptionsDataSorting
type plotIkhOnPointOptions = HighchartsSharedSharedTypes.plotIkhOnPointOptions
module ChartsPlotIkhOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotIkhOnPointOptionsConnectorOptions
module ChartsPlotIkhOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotIkhOnPointOptionsPosition
module ChartsSeriesIkhOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesIkhOptionsOnPoint
type plotIkhParamsOptions = HighchartsSharedSharedTypes.plotIkhParamsOptions
type plotIkhSenkouSpanOptions = HighchartsSharedSharedTypes.plotIkhSenkouSpanOptions
type seriesItemOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesItemOptions<'b, 'a, 'c>
type plotItemOnPointOptions = HighchartsSharedSharedTypes.plotItemOnPointOptions
module ChartsPlotItemOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotItemOnPointOptionsConnectorOptions
module ChartsPlotItemOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotItemOnPointOptionsPosition
module ChartsSeriesItemOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesItemOptionsOnPoint
type seriesKeltnerchannelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesKeltnerchannelsOptions<'a, 'b, 'c>
type plotKeltnerchannelsDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotKeltnerchannelsDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesKeltnerchannelsOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesKeltnerchannelsOptionsDataSorting
type plotKeltnerchannelsOnPointOptions = HighchartsSharedSharedTypes.plotKeltnerchannelsOnPointOptions
module ChartsPlotKeltnerchannelsOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotKeltnerchannelsOnPointOptionsConnectorOptions
module ChartsPlotKeltnerchannelsOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotKeltnerchannelsOnPointOptionsPosition
module ChartsSeriesKeltnerchannelsOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesKeltnerchannelsOptionsOnPoint
type seriesKlingerOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesKlingerOptions<'a, 'b, 'c>
type plotKlingerDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotKlingerDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesKlingerOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesKlingerOptionsDataSorting
type plotKlingerOnPointOptions = HighchartsSharedSharedTypes.plotKlingerOnPointOptions
module ChartsPlotKlingerOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotKlingerOnPointOptionsConnectorOptions
module ChartsPlotKlingerOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotKlingerOnPointOptionsPosition
module ChartsSeriesKlingerOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesKlingerOptionsOnPoint
type plotKlingerParamsOptions = HighchartsSharedSharedTypes.plotKlingerParamsOptions
type seriesLinearregressionangleOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesLinearregressionangleOptions<'a, 'b, 'c>
type plotLinearregressionangleDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressionangleDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesLinearregressionangleOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesLinearregressionangleOptionsDataSorting
type plotLinearregressionangleOnPointOptions = HighchartsSharedSharedTypes.plotLinearregressionangleOnPointOptions
module ChartsPlotLinearregressionangleOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotLinearregressionangleOnPointOptionsConnectorOptions
module ChartsPlotLinearregressionangleOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotLinearregressionangleOnPointOptionsPosition
module ChartsSeriesLinearregressionangleOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesLinearregressionangleOptionsOnPoint
type plotLinearregressionangleParamsOptions = HighchartsSharedSharedTypes.plotLinearregressionangleParamsOptions
type seriesLinearregressioninterceptOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesLinearregressioninterceptOptions<'a, 'b, 'c>
type plotLinearregressioninterceptDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressioninterceptDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesLinearregressioninterceptOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesLinearregressioninterceptOptionsDataSorting
type plotLinearregressioninterceptOnPointOptions = HighchartsSharedSharedTypes.plotLinearregressioninterceptOnPointOptions
module ChartsPlotLinearregressioninterceptOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotLinearregressioninterceptOnPointOptionsConnectorOptions
module ChartsPlotLinearregressioninterceptOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotLinearregressioninterceptOnPointOptionsPosition
module ChartsSeriesLinearregressioninterceptOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesLinearregressioninterceptOptionsOnPoint
type seriesLinearregressionOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesLinearregressionOptions<'a, 'b, 'c>
type plotLinearregressionDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressionDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesLinearregressionOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesLinearregressionOptionsDataSorting
type plotLinearregressionOnPointOptions = HighchartsSharedSharedTypes.plotLinearregressionOnPointOptions
module ChartsPlotLinearregressionOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotLinearregressionOnPointOptionsConnectorOptions
module ChartsPlotLinearregressionOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotLinearregressionOnPointOptionsPosition
module ChartsSeriesLinearregressionOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesLinearregressionOptionsOnPoint
type plotLinearregressionParamsOptions = HighchartsSharedSharedTypes.plotLinearregressionParamsOptions
type seriesLinearregressionslopeOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesLinearregressionslopeOptions<'a, 'b, 'c>
type plotLinearregressionslopeDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressionslopeDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesLinearregressionslopeOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesLinearregressionslopeOptionsDataSorting
type plotLinearregressionslopeOnPointOptions = HighchartsSharedSharedTypes.plotLinearregressionslopeOnPointOptions
module ChartsPlotLinearregressionslopeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotLinearregressionslopeOnPointOptionsConnectorOptions
module ChartsPlotLinearregressionslopeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotLinearregressionslopeOnPointOptionsPosition
module ChartsSeriesLinearregressionslopeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesLinearregressionslopeOptionsOnPoint
type seriesLineOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesLineOptions<'b, 'a, 'c>
type plotLineDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotLineDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesLineOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesLineOptionsDataSorting
type plotLineOnPointOptions = HighchartsSharedSharedTypes.plotLineOnPointOptions
module ChartsPlotLineOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotLineOnPointOptionsConnectorOptions
module ChartsPlotLineOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotLineOnPointOptionsPosition
module ChartsSeriesLineOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesLineOptionsOnPoint
type seriesLollipopOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesLollipopOptions<
  'b,
  'a,
  'c,
>
module ChartsSeriesLollipopOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesLollipopOptionsDataSorting
type plotLollipopOnPointOptions = HighchartsSharedSharedTypes.plotLollipopOnPointOptions
module ChartsPlotLollipopOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotLollipopOnPointOptionsConnectorOptions
module ChartsPlotLollipopOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotLollipopOnPointOptionsPosition
module ChartsSeriesLollipopOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesLollipopOptionsOnPoint
type seriesMacdOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesMacdOptions<'a, 'b, 'c>
type plotMacdDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMacdDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesMacdOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesMacdOptionsDataSorting
type plotMacdMacdLineOptions = HighchartsSharedSharedTypes.plotMacdMacdLineOptions
type plotMacdOnPointOptions = HighchartsSharedSharedTypes.plotMacdOnPointOptions
module ChartsPlotMacdOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMacdOnPointOptionsConnectorOptions
module ChartsPlotMacdOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMacdOnPointOptionsPosition
module ChartsSeriesMacdOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMacdOptionsOnPoint
type plotMacdParamsOptions = HighchartsSharedSharedTypes.plotMacdParamsOptions
type seriesMapbubbleOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesMapbubbleOptions<
  'b,
  'a,
  'c,
>
type plotMapbubbleDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMapbubbleDataLabelsOptions<'a, 'b, 'c>
type plotMapbubbleDataLabelsOptionsEtczeugz<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMapbubbleDataLabelsOptionsEtczeugz<'a, 'b, 'c>
type plotMapbubbleOnPointOptions = HighchartsSharedSharedTypes.plotMapbubbleOnPointOptions
module ChartsPlotMapbubbleOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMapbubbleOnPointOptionsConnectorOptions
module ChartsPlotMapbubbleOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMapbubbleOnPointOptionsPosition
module ChartsSeriesMapbubbleOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMapbubbleOptionsOnPoint
type seriesMaplineOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesMaplineOptions<'b, 'a, 'c>
type plotMaplineDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMaplineDataLabelsOptions<'a, 'b, 'c>
type plotMaplineOnPointOptions = HighchartsSharedSharedTypes.plotMaplineOnPointOptions
module ChartsPlotMaplineOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMaplineOnPointOptionsConnectorOptions
module ChartsPlotMaplineOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMaplineOnPointOptionsPosition
module ChartsSeriesMaplineOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMaplineOptionsOnPoint
type seriesMapOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesMapOptions<'b, 'a, 'c>
type plotMapDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMapDataLabelsOptions<
  'a,
  'b,
  'c,
>
type plotMapDataLabelsOptionsOrPlotMapDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMapDataLabelsOptionsOrPlotMapDataLabelsOptionsArray<'a, 'b, 'c>
type plotMapOnPointOptions = HighchartsSharedSharedTypes.plotMapOnPointOptions
module ChartsPlotMapOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMapOnPointOptionsConnectorOptions
module ChartsPlotMapOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMapOnPointOptionsPosition
module ChartsSeriesMapOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMapOptionsOnPoint
type seriesMappointOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesMappointOptions<
  'b,
  'a,
  'c,
>
type plotMappointClusterOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMappointClusterOptions<'a, 'b, 'c>
type plotMappointClusterDataLabelsOptions = HighchartsSharedSharedTypes.plotMappointClusterDataLabelsOptions
module ChartsPlotMappointClusterOptionsDataLabels = HighchartsSharedSharedTypes.ChartsPlotMappointClusterOptionsDataLabels
type plotMappointClusterEventsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMappointClusterEventsOptions<'a, 'b, 'c>
type plotMappointClusterLayoutAlgorithmOptions = HighchartsSharedSharedTypes.plotMappointClusterLayoutAlgorithmOptions
type plotMappointClusterStatesOptions = HighchartsSharedSharedTypes.plotMappointClusterStatesOptions
type plotMappointClusterStatesHoverOptions = HighchartsSharedSharedTypes.plotMappointClusterStatesHoverOptions
type plotMappointClusterZonesOptions = HighchartsSharedSharedTypes.plotMappointClusterZonesOptions
type plotMappointDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMappointDataLabelsOptions<'a, 'b, 'c>
type plotMappointDataLabelsOptionsEtc13i28<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMappointDataLabelsOptionsEtc13i28<'a, 'b, 'c>
type plotMappointOnPointOptions = HighchartsSharedSharedTypes.plotMappointOnPointOptions
module ChartsPlotMappointOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMappointOnPointOptionsConnectorOptions
module ChartsPlotMappointOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMappointOnPointOptionsPosition
module ChartsSeriesMappointOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMappointOptionsOnPoint
type seriesMfiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesMfiOptions<'a, 'b, 'c>
type plotMfiDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMfiDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesMfiOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesMfiOptionsDataSorting
type plotMfiOnPointOptions = HighchartsSharedSharedTypes.plotMfiOnPointOptions
module ChartsPlotMfiOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMfiOnPointOptionsConnectorOptions
module ChartsPlotMfiOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMfiOnPointOptionsPosition
module ChartsSeriesMfiOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMfiOptionsOnPoint
type plotMfiParamsOptions = HighchartsSharedSharedTypes.plotMfiParamsOptions
type seriesMomentumOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesMomentumOptions<
  'a,
  'b,
  'c,
>
type plotMomentumDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotMomentumDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesMomentumOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesMomentumOptionsDataSorting
type plotMomentumOnPointOptions = HighchartsSharedSharedTypes.plotMomentumOnPointOptions
module ChartsPlotMomentumOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotMomentumOnPointOptionsConnectorOptions
module ChartsPlotMomentumOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotMomentumOnPointOptionsPosition
module ChartsSeriesMomentumOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesMomentumOptionsOnPoint
type seriesNatrOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesNatrOptions<'a, 'b, 'c>
type plotNatrDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotNatrDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesNatrOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesNatrOptionsDataSorting
type plotNatrOnPointOptions = HighchartsSharedSharedTypes.plotNatrOnPointOptions
module ChartsPlotNatrOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotNatrOnPointOptionsConnectorOptions
module ChartsPlotNatrOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotNatrOnPointOptionsPosition
module ChartsSeriesNatrOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesNatrOptionsOnPoint
type seriesNetworkgraphOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesNetworkgraphOptions<
  'b,
  'a,
  'c,
>
type seriesNetworkgraphNodesOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesNetworkgraphNodesOptions<'a, 'b, 'c>
type seriesNetworkgraphDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesNetworkgraphDataLabelsOptionsObject<'a, 'b, 'c>
type plotNetworkgraphDataLabelsStyleOptions = HighchartsSharedSharedTypes.plotNetworkgraphDataLabelsStyleOptions
module ChartsSeriesNetworkgraphDataLabelsOptionsObjectStyle = HighchartsSharedSharedTypes.ChartsSeriesNetworkgraphDataLabelsOptionsObjectStyle
type seriesNetworkgraphDataLabelsOptionsObjecEtc14yc0<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesNetworkgraphDataLabelsOptionsObjecEtc14yc0<'a, 'b, 'c>
type plotNetworkgraphLayoutAlgorithmOptions = HighchartsSharedSharedTypes.plotNetworkgraphLayoutAlgorithmOptions
type optionsApproximationValue = HighchartsSharedSharedTypes.optionsApproximationValue
type optionsIntegrationValue = HighchartsSharedSharedTypes.optionsIntegrationValue
type plotNetworkgraphLinkOptions = HighchartsSharedSharedTypes.plotNetworkgraphLinkOptions
type plotNetworkgraphOnPointOptions = HighchartsSharedSharedTypes.plotNetworkgraphOnPointOptions
module ChartsPlotNetworkgraphOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotNetworkgraphOnPointOptionsConnectorOptions
module ChartsPlotNetworkgraphOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotNetworkgraphOnPointOptionsPosition
module ChartsSeriesNetworkgraphOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesNetworkgraphOptionsOnPoint
type seriesObvOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesObvOptions<'a, 'b, 'c>
type plotObvDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotObvDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesObvOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesObvOptionsDataSorting
type plotObvOnPointOptions = HighchartsSharedSharedTypes.plotObvOnPointOptions
module ChartsPlotObvOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotObvOnPointOptionsConnectorOptions
module ChartsPlotObvOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotObvOnPointOptionsPosition
module ChartsSeriesObvOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesObvOptionsOnPoint
type plotObvParamsOptions = HighchartsSharedSharedTypes.plotObvParamsOptions
type seriesOhlcOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesOhlcOptions<'b, 'a, 'c>
type plotOhlcDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotOhlcDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesOhlcOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesOhlcOptionsDataSorting
type plotOhlcOnPointOptions = HighchartsSharedSharedTypes.plotOhlcOnPointOptions
module ChartsPlotOhlcOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotOhlcOnPointOptionsConnectorOptions
module ChartsPlotOhlcOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotOhlcOnPointOptionsPosition
module ChartsSeriesOhlcOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesOhlcOptionsOnPoint
type seriesOrganizationOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesOrganizationOptions<
  'b,
  'a,
  'c,
>
type seriesOrganizationDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesOrganizationDataLabelsOptionsObject<'a, 'b, 'c>
type plotOrganizationDataLabelsLinkTextPathOptions = HighchartsSharedSharedTypes.plotOrganizationDataLabelsLinkTextPathOptions
type plotOrganizationDataLabelsLinkTextPathAttributesOptions = HighchartsSharedSharedTypes.plotOrganizationDataLabelsLinkTextPathAttributesOptions
type seriesOrganizationDataLabelsOptionsObjecEtcmf6ti<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesOrganizationDataLabelsOptionsObjecEtcmf6ti<'a, 'b, 'c>
type organizationHangingIndentTranslationValue = HighchartsSharedSharedTypes.organizationHangingIndentTranslationValue
type plotOrganizationLinkOptions = HighchartsSharedSharedTypes.plotOrganizationLinkOptions
type plotOrganizationOnPointOptions = HighchartsSharedSharedTypes.plotOrganizationOnPointOptions
module ChartsPlotOrganizationOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotOrganizationOnPointOptionsConnectorOptions
module ChartsPlotOrganizationOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotOrganizationOnPointOptionsPosition
module ChartsSeriesOrganizationOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesOrganizationOptionsOnPoint
type seriesPackedbubbleOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesPackedbubbleOptions<
  'b,
  'a,
  'c,
>
type seriesPackedBubbleDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesPackedBubbleDataLabelsOptionsObject<'a, 'b, 'c>
type plotPackedbubbleDataLabelsStyleOptions = HighchartsSharedSharedTypes.plotPackedbubbleDataLabelsStyleOptions
module ChartsSeriesPackedBubbleDataLabelsOptionsObjectStyle = HighchartsSharedSharedTypes.ChartsSeriesPackedBubbleDataLabelsOptionsObjectStyle
type seriesPackedBubbleDataLabelsOptionsObjecEtccwqqs<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesPackedBubbleDataLabelsOptionsObjecEtccwqqs<'a, 'b, 'c>
type plotPackedbubbleLayoutAlgorithmOptions = HighchartsSharedSharedTypes.plotPackedbubbleLayoutAlgorithmOptions
type plotPackedbubbleLayoutAlgorithmParentNodeOptions = HighchartsSharedSharedTypes.plotPackedbubbleLayoutAlgorithmParentNodeOptions
type plotPackedbubbleOnPointOptions = HighchartsSharedSharedTypes.plotPackedbubbleOnPointOptions
module ChartsPlotPackedbubbleOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPackedbubbleOnPointOptionsConnectorOptions
module ChartsPlotPackedbubbleOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPackedbubbleOnPointOptionsPosition
module ChartsSeriesPackedbubbleOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPackedbubbleOptionsOnPoint
type plotPackedbubbleParentNodeOptions = HighchartsSharedSharedTypes.plotPackedbubbleParentNodeOptions
type seriesParetoOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesParetoOptions<'b, 'a, 'c>
type plotParetoDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotParetoDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesParetoOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesParetoOptionsDataSorting
type plotParetoOnPointOptions = HighchartsSharedSharedTypes.plotParetoOnPointOptions
module ChartsPlotParetoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotParetoOnPointOptionsConnectorOptions
module ChartsPlotParetoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotParetoOnPointOptionsPosition
module ChartsSeriesParetoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesParetoOptionsOnPoint
type seriesPcOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesPcOptions<'a, 'b, 'c>
type plotPcDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPcDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesPcOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPcOptionsDataSorting
type plotPcOnPointOptions = HighchartsSharedSharedTypes.plotPcOnPointOptions
module ChartsPlotPcOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPcOnPointOptionsConnectorOptions
module ChartsPlotPcOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPcOnPointOptionsPosition
module ChartsSeriesPcOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPcOptionsOnPoint
type seriesPictorialOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesPictorialOptions<
  'b,
  'a,
  'c,
>
type seriesPictorialPathsOptionsObject = HighchartsSharedSharedTypes.seriesPictorialPathsOptionsObject
type plotPictorialDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotPictorialDataLabelsOptions<'a, 'b, 'c>
type seriesPieOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesPieOptions<'b, 'a, 'c>
type plotPieOnPointOptions = HighchartsSharedSharedTypes.plotPieOnPointOptions
module ChartsPlotPieOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPieOnPointOptionsConnectorOptions
module ChartsPlotPieOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPieOnPointOptionsPosition
module ChartsSeriesPieOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPieOptionsOnPoint
type seriesPivotpointsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesPivotpointsOptions<
  'a,
  'b,
  'c,
>
type plotPivotpointsDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotPivotpointsDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesPivotpointsOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPivotpointsOptionsDataSorting
type plotPivotpointsOnPointOptions = HighchartsSharedSharedTypes.plotPivotpointsOnPointOptions
module ChartsPlotPivotpointsOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPivotpointsOnPointOptionsConnectorOptions
module ChartsPlotPivotpointsOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPivotpointsOnPointOptionsPosition
module ChartsSeriesPivotpointsOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPivotpointsOptionsOnPoint
type plotPivotpointsParamsOptions = HighchartsSharedSharedTypes.plotPivotpointsParamsOptions
type seriesPointandfigureOptions<
  'b,
  'a,
  'c,
> = HighchartsSharedSharedTypes.seriesPointandfigureOptions<'b, 'a, 'c>
type plotPointandfigureDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotPointandfigureDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesPointandfigureOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPointandfigureOptionsDataSorting
type plotPointandfigureJitterOptions = HighchartsSharedSharedTypes.plotPointandfigureJitterOptions
type plotPointandfigureOnPointOptions = HighchartsSharedSharedTypes.plotPointandfigureOnPointOptions
module ChartsPlotPointandfigureOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPointandfigureOnPointOptionsConnectorOptions
module ChartsPlotPointandfigureOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPointandfigureOnPointOptionsPosition
module ChartsSeriesPointandfigureOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPointandfigureOptionsOnPoint
type seriesPolygonOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesPolygonOptions<'b, 'a, 'c>
type plotPolygonDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotPolygonDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesPolygonOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPolygonOptionsDataSorting
type plotPolygonOnPointOptions = HighchartsSharedSharedTypes.plotPolygonOnPointOptions
module ChartsPlotPolygonOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPolygonOnPointOptionsConnectorOptions
module ChartsPlotPolygonOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPolygonOnPointOptionsPosition
module ChartsSeriesPolygonOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPolygonOptionsOnPoint
type seriesPpoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesPpoOptions<'a, 'b, 'c>
type plotPpoDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPpoDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesPpoOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPpoOptionsDataSorting
type plotPpoOnPointOptions = HighchartsSharedSharedTypes.plotPpoOnPointOptions
module ChartsPlotPpoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPpoOnPointOptionsConnectorOptions
module ChartsPlotPpoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPpoOnPointOptionsPosition
module ChartsSeriesPpoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPpoOptionsOnPoint
type seriesPriceenvelopesOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesPriceenvelopesOptions<'a, 'b, 'c>
type plotPriceenvelopesDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotPriceenvelopesDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesPriceenvelopesOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPriceenvelopesOptionsDataSorting
type plotPriceenvelopesOnPointOptions = HighchartsSharedSharedTypes.plotPriceenvelopesOnPointOptions
module ChartsPlotPriceenvelopesOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPriceenvelopesOnPointOptionsConnectorOptions
module ChartsPlotPriceenvelopesOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPriceenvelopesOnPointOptionsPosition
module ChartsSeriesPriceenvelopesOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPriceenvelopesOptionsOnPoint
type plotPriceenvelopesParamsOptions = HighchartsSharedSharedTypes.plotPriceenvelopesParamsOptions
type seriesPsarOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesPsarOptions<'a, 'b, 'c>
type plotPsarDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPsarDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesPsarOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesPsarOptionsDataSorting
type plotPsarOnPointOptions = HighchartsSharedSharedTypes.plotPsarOnPointOptions
module ChartsPlotPsarOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPsarOnPointOptionsConnectorOptions
module ChartsPlotPsarOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPsarOnPointOptionsPosition
module ChartsSeriesPsarOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPsarOptionsOnPoint
type plotPsarParamsOptions = HighchartsSharedSharedTypes.plotPsarParamsOptions
type seriesPyramid3dOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesPyramid3dOptions<
  'b,
  'a,
  'c,
>
type plotPyramid3dDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotPyramid3dDataLabelsOptions<'a, 'b, 'c>
type plotPyramid3dOnPointOptions = HighchartsSharedSharedTypes.plotPyramid3dOnPointOptions
module ChartsPlotPyramid3dOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPyramid3dOnPointOptionsConnectorOptions
module ChartsPlotPyramid3dOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPyramid3dOnPointOptionsPosition
module ChartsSeriesPyramid3dOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPyramid3dOptionsOnPoint
type seriesPyramidOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesPyramidOptions<'b, 'a, 'c>
type plotPyramidOnPointOptions = HighchartsSharedSharedTypes.plotPyramidOnPointOptions
module ChartsPlotPyramidOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotPyramidOnPointOptionsConnectorOptions
module ChartsPlotPyramidOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotPyramidOnPointOptionsPosition
module ChartsSeriesPyramidOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesPyramidOptionsOnPoint
type seriesRenkoOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesRenkoOptions<'b, 'a, 'c>
type plotRenkoBorderRadiusOptions = HighchartsSharedSharedTypes.plotRenkoBorderRadiusOptions
module ChartsSeriesRenkoOptionsBorderRadius = HighchartsSharedSharedTypes.ChartsSeriesRenkoOptionsBorderRadius
type plotRenkoDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotRenkoDataLabelsOptions<'a, 'b, 'c>
type plotRenkoOnPointOptions = HighchartsSharedSharedTypes.plotRenkoOnPointOptions
module ChartsPlotRenkoOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotRenkoOnPointOptionsConnectorOptions
module ChartsPlotRenkoOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotRenkoOnPointOptionsPosition
module ChartsSeriesRenkoOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesRenkoOptionsOnPoint
type seriesRocOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesRocOptions<'a, 'b, 'c>
type plotRocDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotRocDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesRocOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesRocOptionsDataSorting
type plotRocOnPointOptions = HighchartsSharedSharedTypes.plotRocOnPointOptions
module ChartsPlotRocOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotRocOnPointOptionsConnectorOptions
module ChartsPlotRocOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotRocOnPointOptionsPosition
module ChartsSeriesRocOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesRocOptionsOnPoint
type seriesRsiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesRsiOptions<'a, 'b, 'c>
type plotRsiDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotRsiDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesRsiOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesRsiOptionsDataSorting
type plotRsiOnPointOptions = HighchartsSharedSharedTypes.plotRsiOnPointOptions
module ChartsPlotRsiOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotRsiOnPointOptionsConnectorOptions
module ChartsPlotRsiOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotRsiOnPointOptionsPosition
module ChartsSeriesRsiOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesRsiOptionsOnPoint
type plotRsiParamsOptions = HighchartsSharedSharedTypes.plotRsiParamsOptions
type seriesSankeyOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesSankeyOptions<'b, 'a, 'c>
type seriesSankeyNodesOptionsObject = HighchartsSharedSharedTypes.seriesSankeyNodesOptionsObject
module ChartsSeriesSankeyNodesOptionsObjectDataLabels = HighchartsSharedSharedTypes.ChartsSeriesSankeyNodesOptionsObjectDataLabels
type seriesOrganizationNodesLayoutValue = HighchartsSharedSharedTypes.seriesOrganizationNodesLayoutValue
type plotSankeyOnPointOptions = HighchartsSharedSharedTypes.plotSankeyOnPointOptions
module ChartsPlotSankeyOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSankeyOnPointOptionsConnectorOptions
module ChartsPlotSankeyOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSankeyOnPointOptionsPosition
module ChartsSeriesSankeyOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSankeyOptionsOnPoint
type seriesScatter3dOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesScatter3dOptions<
  'b,
  'a,
  'c,
>
type plotScatter3dDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotScatter3dDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesScatter3dOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesScatter3dOptionsDataSorting
type plotScatter3dOnPointOptions = HighchartsSharedSharedTypes.plotScatter3dOnPointOptions
module ChartsPlotScatter3dOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotScatter3dOnPointOptionsConnectorOptions
module ChartsPlotScatter3dOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotScatter3dOnPointOptionsPosition
module ChartsSeriesScatter3dOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesScatter3dOptionsOnPoint
type seriesScatterOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesScatterOptions<'b, 'a, 'c>
type plotScatterClusterOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotScatterClusterOptions<
  'a,
  'b,
  'c,
>
type plotScatterClusterDataLabelsOptions = HighchartsSharedSharedTypes.plotScatterClusterDataLabelsOptions
module ChartsPlotScatterClusterOptionsDataLabels = HighchartsSharedSharedTypes.ChartsPlotScatterClusterOptionsDataLabels
type plotScatterClusterEventsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotScatterClusterEventsOptions<'a, 'b, 'c>
type plotScatterClusterLayoutAlgorithmOptions = HighchartsSharedSharedTypes.plotScatterClusterLayoutAlgorithmOptions
type plotScatterClusterStatesOptions = HighchartsSharedSharedTypes.plotScatterClusterStatesOptions
type plotScatterClusterStatesHoverOptions = HighchartsSharedSharedTypes.plotScatterClusterStatesHoverOptions
type plotScatterClusterZonesOptions = HighchartsSharedSharedTypes.plotScatterClusterZonesOptions
type plotScatterDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotScatterDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesScatterOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesScatterOptionsDataSorting
type plotScatterOnPointOptions = HighchartsSharedSharedTypes.plotScatterOnPointOptions
module ChartsPlotScatterOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotScatterOnPointOptionsConnectorOptions
module ChartsPlotScatterOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotScatterOnPointOptionsPosition
module ChartsSeriesScatterOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesScatterOptionsOnPoint
type seriesSlowstochasticOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesSlowstochasticOptions<'a, 'b, 'c>
type plotSlowstochasticDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotSlowstochasticDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesSlowstochasticOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesSlowstochasticOptionsDataSorting
type plotSlowstochasticOnPointOptions = HighchartsSharedSharedTypes.plotSlowstochasticOnPointOptions
module ChartsPlotSlowstochasticOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSlowstochasticOnPointOptionsConnectorOptions
module ChartsPlotSlowstochasticOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSlowstochasticOnPointOptionsPosition
module ChartsSeriesSlowstochasticOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSlowstochasticOptionsOnPoint
type plotSlowstochasticParamsOptions = HighchartsSharedSharedTypes.plotSlowstochasticParamsOptions
type seriesSmaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesSmaOptions<'a, 'b, 'c>
type plotSmaDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSmaDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesSmaOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesSmaOptionsDataSorting
type plotSmaOnPointOptions = HighchartsSharedSharedTypes.plotSmaOnPointOptions
module ChartsPlotSmaOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSmaOnPointOptionsConnectorOptions
module ChartsPlotSmaOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSmaOnPointOptionsPosition
module ChartsSeriesSmaOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSmaOptionsOnPoint
type seriesSolidgaugeOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesSolidgaugeOptions<
  'b,
  'a,
  'c,
>
type plotSolidgaugeDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotSolidgaugeDataLabelsOptions<'a, 'b, 'c>
type optionsLinecapValue = HighchartsSharedSharedTypes.optionsLinecapValue
type plotSolidgaugeOnPointOptions = HighchartsSharedSharedTypes.plotSolidgaugeOnPointOptions
module ChartsPlotSolidgaugeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSolidgaugeOnPointOptionsConnectorOptions
module ChartsPlotSolidgaugeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSolidgaugeOnPointOptionsPosition
module ChartsSeriesSolidgaugeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSolidgaugeOptionsOnPoint
type seriesSplineOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesSplineOptions<'b, 'a, 'c>
type plotSplineDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotSplineDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesSplineOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesSplineOptionsDataSorting
type plotSplineOnPointOptions = HighchartsSharedSharedTypes.plotSplineOnPointOptions
module ChartsPlotSplineOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSplineOnPointOptionsConnectorOptions
module ChartsPlotSplineOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSplineOnPointOptionsPosition
module ChartsSeriesSplineOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSplineOptionsOnPoint
type seriesStochasticOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesStochasticOptions<
  'a,
  'b,
  'c,
>
type plotStochasticDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotStochasticDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesStochasticOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesStochasticOptionsDataSorting
type plotStochasticOnPointOptions = HighchartsSharedSharedTypes.plotStochasticOnPointOptions
module ChartsPlotStochasticOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotStochasticOnPointOptionsConnectorOptions
module ChartsPlotStochasticOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotStochasticOnPointOptionsPosition
module ChartsSeriesStochasticOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesStochasticOptionsOnPoint
type plotStochasticParamsOptions = HighchartsSharedSharedTypes.plotStochasticParamsOptions
type seriesStreamgraphOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesStreamgraphOptions<
  'b,
  'a,
  'c,
>
type plotStreamgraphDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotStreamgraphDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesStreamgraphOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesStreamgraphOptionsDataSorting
type plotStreamgraphOnPointOptions = HighchartsSharedSharedTypes.plotStreamgraphOnPointOptions
module ChartsPlotStreamgraphOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotStreamgraphOnPointOptionsConnectorOptions
module ChartsPlotStreamgraphOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotStreamgraphOnPointOptionsPosition
module ChartsSeriesStreamgraphOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesStreamgraphOptionsOnPoint
type seriesSunburstOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesSunburstOptions<
  'b,
  'a,
  'c,
>
type plotSunburstBreadcrumbsOptions = HighchartsSharedSharedTypes.plotSunburstBreadcrumbsOptions
type plotSunburstBreadcrumbsButtonThemeOptions = HighchartsSharedSharedTypes.plotSunburstBreadcrumbsButtonThemeOptions
type plotSunburstBreadcrumbsButtonThemeStyleOptions = HighchartsSharedSharedTypes.plotSunburstBreadcrumbsButtonThemeStyleOptions
module ChartsPlotSunburstBreadcrumbsOptionsButtonTheme = HighchartsSharedSharedTypes.ChartsPlotSunburstBreadcrumbsOptionsButtonTheme
module ChartsPlotSunburstBreadcrumbsOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSunburstBreadcrumbsOptionsPosition
type plotSunburstBreadcrumbsSeparatorOptions = HighchartsSharedSharedTypes.plotSunburstBreadcrumbsSeparatorOptions
module ChartsPlotSunburstBreadcrumbsSeparatorOptionsStyle = HighchartsSharedSharedTypes.ChartsPlotSunburstBreadcrumbsSeparatorOptionsStyle
type seriesSunburstDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesSunburstDataLabelsOptionsObject<'a, 'b, 'c>
type optionsRotationModeValue = HighchartsSharedSharedTypes.optionsRotationModeValue
type seriesSunburstDataLabelsOptionsObjectEtcjoblr<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesSunburstDataLabelsOptionsObjectEtcjoblr<'a, 'b, 'c>
type plotSunburstLevelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSunburstLevelsOptions<
  'a,
  'b,
  'c,
>
type plotSunburstLevelsColorVariationOptions = HighchartsSharedSharedTypes.plotSunburstLevelsColorVariationOptions
type plotSunburstLevelSizeOptions = HighchartsSharedSharedTypes.plotSunburstLevelSizeOptions
type optionsUnitValue = HighchartsSharedSharedTypes.optionsUnitValue
type plotSunburstOnPointOptions = HighchartsSharedSharedTypes.plotSunburstOnPointOptions
module ChartsPlotSunburstOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSunburstOnPointOptionsConnectorOptions
module ChartsPlotSunburstOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSunburstOnPointOptionsPosition
module ChartsSeriesSunburstOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSunburstOptionsOnPoint
type seriesSupertrendOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesSupertrendOptions<
  'a,
  'b,
  'c,
>
type plotSupertrendChangeTrendLineOptions = HighchartsSharedSharedTypes.plotSupertrendChangeTrendLineOptions
type plotSupertrendChangeTrendLineStylesOptions = HighchartsSharedSharedTypes.plotSupertrendChangeTrendLineStylesOptions
type plotSupertrendDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotSupertrendDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesSupertrendOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesSupertrendOptionsDataSorting
type plotSupertrendOnPointOptions = HighchartsSharedSharedTypes.plotSupertrendOnPointOptions
module ChartsPlotSupertrendOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSupertrendOnPointOptionsConnectorOptions
module ChartsPlotSupertrendOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSupertrendOnPointOptionsPosition
module ChartsSeriesSupertrendOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesSupertrendOptionsOnPoint
type plotSupertrendParamsOptions = HighchartsSharedSharedTypes.plotSupertrendParamsOptions
type seriesTemaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesTemaOptions<'a, 'b, 'c>
type plotTemaDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTemaDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesTemaOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesTemaOptionsDataSorting
type plotTemaOnPointOptions = HighchartsSharedSharedTypes.plotTemaOnPointOptions
module ChartsPlotTemaOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTemaOnPointOptionsConnectorOptions
module ChartsPlotTemaOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTemaOnPointOptionsPosition
module ChartsSeriesTemaOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTemaOptionsOnPoint
type seriesTiledwebmapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesTiledwebmapOptions<
  'a,
  'b,
  'c,
>
type plotTiledwebmapProviderOptions = HighchartsSharedSharedTypes.plotTiledwebmapProviderOptions
type seriesTilemapOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesTilemapOptions<'b, 'a, 'c>
type plotTilemapDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTilemapDataLabelsOptions<'a, 'b, 'c>
type plotTilemapOnPointOptions = HighchartsSharedSharedTypes.plotTilemapOnPointOptions
module ChartsPlotTilemapOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTilemapOnPointOptionsConnectorOptions
module ChartsPlotTilemapOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTilemapOnPointOptionsPosition
module ChartsSeriesTilemapOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTilemapOptionsOnPoint
type tilemapShapeValue = HighchartsSharedSharedTypes.tilemapShapeValue
type seriesTimelineOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesTimelineOptions<
  'b,
  'a,
  'c,
>
type timelineDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.timelineDataLabelsOptionsObject<'a, 'b, 'c>
type timelineDataLabelsOptionsObjectEtc13zn4<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.timelineDataLabelsOptionsObjectEtc13zn4<'a, 'b, 'c>
type plotTimelineOnPointOptions = HighchartsSharedSharedTypes.plotTimelineOnPointOptions
module ChartsPlotTimelineOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTimelineOnPointOptionsConnectorOptions
module ChartsPlotTimelineOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTimelineOnPointOptionsPosition
module ChartsSeriesTimelineOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTimelineOptionsOnPoint
type seriesTreegraphOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesTreegraphOptions<
  'b,
  'a,
  'c,
>
type plotTreegraphCollapseButtonOptions = HighchartsSharedSharedTypes.plotTreegraphCollapseButtonOptions
type plotTreegraphCollapseButtonStyleOptions = HighchartsSharedSharedTypes.plotTreegraphCollapseButtonStyleOptions
type seriesTreegraphDataLabelsOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesTreegraphDataLabelsOptionsObject<'a, 'b, 'c>
type plotTreegraphDataLabelsStyleOptions = HighchartsSharedSharedTypes.plotTreegraphDataLabelsStyleOptions
type plotTreegraphLevelsDataLabelsStyleOptions = HighchartsSharedSharedTypes.plotTreegraphLevelsDataLabelsStyleOptions
module ChartsSeriesTreegraphDataLabelsOptionsObjectStyle = HighchartsSharedSharedTypes.ChartsSeriesTreegraphDataLabelsOptionsObjectStyle
type seriesTreegraphDataLabelsOptionsObjectEtc12ung<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.seriesTreegraphDataLabelsOptionsObjectEtc12ung<'a, 'b, 'c>
type plotTreegraphLevelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTreegraphLevelsOptions<'a, 'b, 'c>
type optionsLayoutAlgorithmValue = HighchartsSharedSharedTypes.optionsLayoutAlgorithmValue
type optionsLayoutStartingDirectionValue = HighchartsSharedSharedTypes.optionsLayoutStartingDirectionValue
type plotTreegraphLinkOptions = HighchartsSharedSharedTypes.plotTreegraphLinkOptions
type optionsNodeSizeByValue = HighchartsSharedSharedTypes.optionsNodeSizeByValue
type plotTreegraphOnPointOptions = HighchartsSharedSharedTypes.plotTreegraphOnPointOptions
module ChartsPlotTreegraphOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTreegraphOnPointOptionsConnectorOptions
module ChartsPlotTreegraphOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTreegraphOnPointOptionsPosition
module ChartsSeriesTreegraphOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTreegraphOptionsOnPoint
type seriesTreemapOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesTreemapOptions<'b, 'a, 'c>
type plotTreemapBreadcrumbsOptions = HighchartsSharedSharedTypes.plotTreemapBreadcrumbsOptions
module ChartsPlotTreemapBreadcrumbsOptionsButtonTheme = HighchartsSharedSharedTypes.ChartsPlotTreemapBreadcrumbsOptionsButtonTheme
module ChartsPlotTreemapBreadcrumbsOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTreemapBreadcrumbsOptionsPosition
type plotTreemapBreadcrumbsSeparatorOptions = HighchartsSharedSharedTypes.plotTreemapBreadcrumbsSeparatorOptions
module ChartsPlotTreemapBreadcrumbsSeparatorOptionsStyle = HighchartsSharedSharedTypes.ChartsPlotTreemapBreadcrumbsSeparatorOptionsStyle
type plotTreemapClusterOptions = HighchartsSharedSharedTypes.plotTreemapClusterOptions
type plotTreemapClusterLayoutAlgorithmOptions = HighchartsSharedSharedTypes.plotTreemapClusterLayoutAlgorithmOptions
type plotTreemapClusterMarkerOptions = HighchartsSharedSharedTypes.plotTreemapClusterMarkerOptions
type plotTreemapDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTreemapDataLabelsOptions<'a, 'b, 'c>
module ChartsPlotTreemapDataLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsPlotTreemapDataLabelsOptionsStyle
type plotTreemapDataLabelsOptionsOrPlotTreemapDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTreemapDataLabelsOptionsOrPlotTreemapDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
type plotTreemapLevelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTreemapLevelsOptions<
  'a,
  'b,
  'c,
>
type plotTreemapLevelsDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTreemapLevelsDataLabelsOptions<'a, 'b, 'c>
module ChartsPlotTreemapLevelsDataLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsPlotTreemapLevelsDataLabelsOptionsStyle
type plotTreemapLevelsDataLabelsOptionsEtc1oig7<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTreemapLevelsDataLabelsOptionsEtc1oig7<'a, 'b, 'c>
type plotTreemapOnPointOptions = HighchartsSharedSharedTypes.plotTreemapOnPointOptions
module ChartsPlotTreemapOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTreemapOnPointOptionsConnectorOptions
module ChartsPlotTreemapOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTreemapOnPointOptionsPosition
module ChartsSeriesTreemapOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTreemapOptionsOnPoint
type seriesTrendlineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesTrendlineOptions<
  'a,
  'b,
  'c,
>
type plotTrendlineDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotTrendlineDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesTrendlineOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesTrendlineOptionsDataSorting
type plotTrendlineOnPointOptions = HighchartsSharedSharedTypes.plotTrendlineOnPointOptions
module ChartsPlotTrendlineOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTrendlineOnPointOptionsConnectorOptions
module ChartsPlotTrendlineOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTrendlineOnPointOptionsPosition
module ChartsSeriesTrendlineOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTrendlineOptionsOnPoint
type plotTrendlineParamsOptions = HighchartsSharedSharedTypes.plotTrendlineParamsOptions
type seriesTrixOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesTrixOptions<'a, 'b, 'c>
type plotTrixDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTrixDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesTrixOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesTrixOptionsDataSorting
type plotTrixOnPointOptions = HighchartsSharedSharedTypes.plotTrixOnPointOptions
module ChartsPlotTrixOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotTrixOnPointOptionsConnectorOptions
module ChartsPlotTrixOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotTrixOnPointOptionsPosition
module ChartsSeriesTrixOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesTrixOptionsOnPoint
type seriesVariablepieOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesVariablepieOptions<
  'b,
  'a,
  'c,
>
type plotVariablepieOnPointOptions = HighchartsSharedSharedTypes.plotVariablepieOnPointOptions
module ChartsPlotVariablepieOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotVariablepieOnPointOptionsConnectorOptions
module ChartsPlotVariablepieOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotVariablepieOnPointOptionsPosition
module ChartsSeriesVariablepieOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesVariablepieOptionsOnPoint
type variablePieSizeByValue = HighchartsSharedSharedTypes.variablePieSizeByValue
type seriesVariwideOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesVariwideOptions<
  'b,
  'a,
  'c,
>
type plotVariwideDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotVariwideDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesVariwideOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesVariwideOptionsDataSorting
type plotVariwideOnPointOptions = HighchartsSharedSharedTypes.plotVariwideOnPointOptions
module ChartsPlotVariwideOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotVariwideOnPointOptionsConnectorOptions
module ChartsPlotVariwideOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotVariwideOnPointOptionsPosition
module ChartsSeriesVariwideOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesVariwideOptionsOnPoint
type seriesVbpOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesVbpOptions<'a, 'b, 'c>
type plotVbpDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVbpDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesVbpOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesVbpOptionsDataSorting
type plotVbpOnPointOptions = HighchartsSharedSharedTypes.plotVbpOnPointOptions
module ChartsPlotVbpOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotVbpOnPointOptionsConnectorOptions
module ChartsPlotVbpOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotVbpOnPointOptionsPosition
module ChartsSeriesVbpOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesVbpOptionsOnPoint
type plotVbpParamsOptions = HighchartsSharedSharedTypes.plotVbpParamsOptions
type plotVbpVolumeDivisionOptions = HighchartsSharedSharedTypes.plotVbpVolumeDivisionOptions
type plotVbpVolumeDivisionStylesOptions = HighchartsSharedSharedTypes.plotVbpVolumeDivisionStylesOptions
type plotVbpZoneLinesOptions = HighchartsSharedSharedTypes.plotVbpZoneLinesOptions
type seriesVectorOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesVectorOptions<'b, 'a, 'c>
type plotVectorClusterOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVectorClusterOptions<
  'a,
  'b,
  'c,
>
module ChartsPlotVectorClusterOptionsDataLabels = HighchartsSharedSharedTypes.ChartsPlotVectorClusterOptionsDataLabels
type plotVectorDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotVectorDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesVectorOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesVectorOptionsDataSorting
type plotVectorOnPointOptions = HighchartsSharedSharedTypes.plotVectorOnPointOptions
module ChartsPlotVectorOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotVectorOnPointOptionsConnectorOptions
module ChartsPlotVectorOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotVectorOnPointOptionsPosition
module ChartsSeriesVectorOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesVectorOptionsOnPoint
type optionsRotationOriginValue = HighchartsSharedSharedTypes.optionsRotationOriginValue
type seriesVennOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesVennOptions<'b, 'a, 'c>
type plotVennClusterOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVennClusterOptions<
  'a,
  'b,
  'c,
>
module ChartsPlotVennClusterOptionsDataLabels = HighchartsSharedSharedTypes.ChartsPlotVennClusterOptionsDataLabels
type plotVennDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVennDataLabelsOptions<
  'a,
  'b,
  'c,
>
type plotVennOnPointOptions = HighchartsSharedSharedTypes.plotVennOnPointOptions
module ChartsPlotVennOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotVennOnPointOptionsConnectorOptions
module ChartsPlotVennOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotVennOnPointOptionsPosition
module ChartsSeriesVennOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesVennOptionsOnPoint
type seriesVwapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesVwapOptions<'a, 'b, 'c>
type plotVwapDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVwapDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesVwapOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesVwapOptionsDataSorting
type plotVwapOnPointOptions = HighchartsSharedSharedTypes.plotVwapOnPointOptions
module ChartsPlotVwapOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotVwapOnPointOptionsConnectorOptions
module ChartsPlotVwapOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotVwapOnPointOptionsPosition
module ChartsSeriesVwapOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesVwapOptionsOnPoint
type seriesWaterfallOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesWaterfallOptions<
  'b,
  'a,
  'c,
>
type plotWaterfallDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotWaterfallDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesWaterfallOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesWaterfallOptionsDataSorting
type plotWaterfallOnPointOptions = HighchartsSharedSharedTypes.plotWaterfallOnPointOptions
module ChartsPlotWaterfallOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotWaterfallOnPointOptionsConnectorOptions
module ChartsPlotWaterfallOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotWaterfallOnPointOptionsPosition
module ChartsSeriesWaterfallOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesWaterfallOptionsOnPoint
type seriesWilliamsrOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesWilliamsrOptions<
  'a,
  'b,
  'c,
>
type plotWilliamsrDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotWilliamsrDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesWilliamsrOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesWilliamsrOptionsDataSorting
type plotWilliamsrOnPointOptions = HighchartsSharedSharedTypes.plotWilliamsrOnPointOptions
module ChartsPlotWilliamsrOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotWilliamsrOnPointOptionsConnectorOptions
module ChartsPlotWilliamsrOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotWilliamsrOnPointOptionsPosition
module ChartsSeriesWilliamsrOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesWilliamsrOptionsOnPoint
type seriesWindbarbOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesWindbarbOptions<
  'b,
  'a,
  'c,
>
type plotWindbarbDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotWindbarbDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesWindbarbOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesWindbarbOptionsDataSorting
type plotWindbarbOnPointOptions = HighchartsSharedSharedTypes.plotWindbarbOnPointOptions
module ChartsPlotWindbarbOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotWindbarbOnPointOptionsConnectorOptions
module ChartsPlotWindbarbOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotWindbarbOnPointOptionsPosition
module ChartsSeriesWindbarbOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesWindbarbOptionsOnPoint
type seriesWmaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesWmaOptions<'a, 'b, 'c>
type plotWmaDataLabelsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotWmaDataLabelsOptions<
  'a,
  'b,
  'c,
>
module ChartsSeriesWmaOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesWmaOptionsDataSorting
type plotWmaOnPointOptions = HighchartsSharedSharedTypes.plotWmaOnPointOptions
module ChartsPlotWmaOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotWmaOnPointOptionsConnectorOptions
module ChartsPlotWmaOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotWmaOnPointOptionsPosition
module ChartsSeriesWmaOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesWmaOptionsOnPoint
type seriesWordcloudOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesWordcloudOptions<
  'b,
  'a,
  'c,
>
type plotWordcloudOnPointOptions = HighchartsSharedSharedTypes.plotWordcloudOnPointOptions
module ChartsPlotWordcloudOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotWordcloudOnPointOptionsConnectorOptions
module ChartsPlotWordcloudOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotWordcloudOnPointOptionsPosition
module ChartsSeriesWordcloudOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesWordcloudOptionsOnPoint
type optionsPlacementStrategyValue = HighchartsSharedSharedTypes.optionsPlacementStrategyValue
type plotWordcloudRotationOptions = HighchartsSharedSharedTypes.plotWordcloudRotationOptions
type optionsSpiralValue = HighchartsSharedSharedTypes.optionsSpiralValue
type seriesXrangeOptions<'b, 'a, 'c> = HighchartsSharedSharedTypes.seriesXrangeOptions<'b, 'a, 'c>
type plotXrangeDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotXrangeDataLabelsOptions<'a, 'b, 'c>
type plotXrangeDataLabelsStyleOptions = HighchartsSharedSharedTypes.plotXrangeDataLabelsStyleOptions
module ChartsPlotXrangeDataLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsPlotXrangeDataLabelsOptionsStyle
type plotXrangeDataLabelsOptionsOrPlotXrangeDataLabelsOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotXrangeDataLabelsOptionsOrPlotXrangeDataLabelsOptionsArray<
  'a,
  'b,
  'c,
>
type plotXrangeOnPointOptions = HighchartsSharedSharedTypes.plotXrangeOnPointOptions
module ChartsPlotXrangeOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotXrangeOnPointOptionsConnectorOptions
module ChartsPlotXrangeOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotXrangeOnPointOptionsPosition
module ChartsSeriesXrangeOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesXrangeOptionsOnPoint
type plotXrangePartialFillOptions = HighchartsSharedSharedTypes.plotXrangePartialFillOptions
type seriesZigzagOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.seriesZigzagOptions<'a, 'b, 'c>
type plotZigzagDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotZigzagDataLabelsOptions<'a, 'b, 'c>
module ChartsSeriesZigzagOptionsDataSorting = HighchartsSharedSharedTypes.ChartsSeriesZigzagOptionsDataSorting
type plotZigzagOnPointOptions = HighchartsSharedSharedTypes.plotZigzagOnPointOptions
module ChartsPlotZigzagOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotZigzagOnPointOptionsConnectorOptions
module ChartsPlotZigzagOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotZigzagOnPointOptionsPosition
module ChartsSeriesZigzagOptionsOnPoint = HighchartsSharedSharedTypes.ChartsSeriesZigzagOptionsOnPoint
type plotZigzagParamsOptions = HighchartsSharedSharedTypes.plotZigzagParamsOptions
type exportingOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.exportingOptions<'a, 'b, 'c>
type exportingButtonsContextButtonThemeOptions = HighchartsSharedSharedTypes.exportingButtonsContextButtonThemeOptions
type exportingCsvOptions = HighchartsSharedSharedTypes.exportingCsvOptions
type exportingCsvAnnotationsOptions = HighchartsSharedSharedTypes.exportingCsvAnnotationsOptions
type exportingPdfFontOptions = HighchartsSharedSharedTypes.exportingPdfFontOptions
type exportingMimeTypeValue = HighchartsSharedSharedTypes.exportingMimeTypeValue
type globalOptions = HighchartsSharedSharedTypes.globalOptions
type globalButtonThemeOptions = HighchartsSharedSharedTypes.globalButtonThemeOptions
type globalButtonThemeStatesOptions = HighchartsSharedSharedTypes.globalButtonThemeStatesOptions
type globalButtonThemeStatesDisabledOptions = HighchartsSharedSharedTypes.globalButtonThemeStatesDisabledOptions
type globalButtonThemeStatesSelectOptions = HighchartsSharedSharedTypes.globalButtonThemeStatesSelectOptions
type globalButtonThemeStatesSelectStyleOptions = HighchartsSharedSharedTypes.globalButtonThemeStatesSelectStyleOptions
type globalButtonThemeStyleOptions = HighchartsSharedSharedTypes.globalButtonThemeStyleOptions
type langOptions = HighchartsSharedSharedTypes.langOptions
type langAccessibilityOptions = HighchartsSharedSharedTypes.langAccessibilityOptions
type langAccessibilityAnnounceNewDataOptions = HighchartsSharedSharedTypes.langAccessibilityAnnounceNewDataOptions
type langAccessibilityAxisOptions = HighchartsSharedSharedTypes.langAccessibilityAxisOptions
type langAccessibilityAxisDefaultAxisNamesOptions = HighchartsSharedSharedTypes.langAccessibilityAxisDefaultAxisNamesOptions
type langAccessibilityChartTypesOptions = HighchartsSharedSharedTypes.langAccessibilityChartTypesOptions
type langAccessibilityExportingOptions = HighchartsSharedSharedTypes.langAccessibilityExportingOptions
type langAccessibilityLegendOptions = HighchartsSharedSharedTypes.langAccessibilityLegendOptions
type langAccessibilityNavigatorOptions = HighchartsSharedSharedTypes.langAccessibilityNavigatorOptions
type langAccessibilityRangeSelectorOptions = HighchartsSharedSharedTypes.langAccessibilityRangeSelectorOptions
type langAccessibilityScreenReaderSectionOptions = HighchartsSharedSharedTypes.langAccessibilityScreenReaderSectionOptions
type langAccessibilityScreenReaderSectionAnnotationsOptions = HighchartsSharedSharedTypes.langAccessibilityScreenReaderSectionAnnotationsOptions
type langAccessibilitySeriesOptions = HighchartsSharedSharedTypes.langAccessibilitySeriesOptions
type langAccessibilitySeriesSummaryOptions = HighchartsSharedSharedTypes.langAccessibilitySeriesSummaryOptions
type langAccessibilitySeriesTypeDescriptionsOptions = HighchartsSharedSharedTypes.langAccessibilitySeriesTypeDescriptionsOptions
type langAccessibilitySonificationOptions = HighchartsSharedSharedTypes.langAccessibilitySonificationOptions
type langAccessibilityStockToolsOptions = HighchartsSharedSharedTypes.langAccessibilityStockToolsOptions
type langAccessibilityTableOptions = HighchartsSharedSharedTypes.langAccessibilityTableOptions
type langAccessibilityZoomOptions = HighchartsSharedSharedTypes.langAccessibilityZoomOptions
type langExportDataOptions = HighchartsSharedSharedTypes.langExportDataOptions
type langNavigationOptions = HighchartsSharedSharedTypes.langNavigationOptions
type langNavigationPopupOptions = HighchartsSharedSharedTypes.langNavigationPopupOptions
type langNavigationPopupIndicatorAliasesOptions = HighchartsSharedSharedTypes.langNavigationPopupIndicatorAliasesOptions
type langRangeSelectorOptions = HighchartsSharedSharedTypes.langRangeSelectorOptions
type langStockToolsOptions = HighchartsSharedSharedTypes.langStockToolsOptions
type langStockToolsGuiOptions = HighchartsSharedSharedTypes.langStockToolsGuiOptions
type loadingOptions = HighchartsSharedSharedTypes.loadingOptions
type mapNavigationOptions = HighchartsSharedSharedTypes.mapNavigationOptions
type mapNavigationButtonOptions = HighchartsSharedSharedTypes.mapNavigationButtonOptions
type mapNavigationButtonsOptions = HighchartsSharedSharedTypes.mapNavigationButtonsOptions
type mapNavigationButtonsZoomInOptions = HighchartsSharedSharedTypes.mapNavigationButtonsZoomInOptions
type mapViewOptions = HighchartsSharedSharedTypes.mapViewOptions
type mapViewInsetOptions = HighchartsSharedSharedTypes.mapViewInsetOptions
type mapViewInsetOptionsRelativeToValue = HighchartsSharedSharedTypes.mapViewInsetOptionsRelativeToValue
type optionsUnitsValue = HighchartsSharedSharedTypes.optionsUnitsValue
type mapViewInsetsOptions = HighchartsSharedSharedTypes.mapViewInsetsOptions
type mapViewInsetsProjectionOptions = HighchartsSharedSharedTypes.mapViewInsetsProjectionOptions
module ChartsMapViewInsetsOptionsProjection = HighchartsSharedSharedTypes.ChartsMapViewInsetsOptionsProjection
type mapViewInsetsOptionsOrValueArray = HighchartsSharedSharedTypes.mapViewInsetsOptionsOrValueArray
module ChartsMapViewOptionsProjection = HighchartsSharedSharedTypes.ChartsMapViewOptionsProjection
type navigationOptions = HighchartsSharedSharedTypes.navigationOptions
module ChartsNavigationOptionsAnnotationsOptions = HighchartsSharedSharedTypes.ChartsNavigationOptionsAnnotationsOptions
type navigationAnnotationsOptions<
  'a,
  'b,
  'c,
  'e,
  'f,
  't6,
> = HighchartsSharedSharedTypes.navigationAnnotationsOptions<'a, 'b, 'c, 'e, 'f, 't6>
type navigationAnnotationsLabelsOptions<
  'a,
  'b,
  'c,
  'e,
> = HighchartsSharedSharedTypes.navigationAnnotationsLabelsOptions<'a, 'b, 'c, 'e>
type highchartsNavigationAnnotationsLabelsOptionsPoint<
  'e,
> = HighchartsSharedSharedTypes.highchartsNavigationAnnotationsLabelsOptionsPoint<'e>
type navigationAnnotationsShapesOptions<
  'a,
  'b,
  'c,
  'f,
  't6,
> = HighchartsSharedSharedTypes.navigationAnnotationsShapesOptions<'a, 'b, 'c, 'f, 't6>
type highchartsNavigationAnnotationsShapesOptionsPoint<
  'f,
> = HighchartsSharedSharedTypes.highchartsNavigationAnnotationsShapesOptionsPoint<'f>
type highchartsNavigationAnnotationsShapesOptionsPoints<
  't6,
> = HighchartsSharedSharedTypes.highchartsNavigationAnnotationsShapesOptionsPoints<'t6>
type navigationBreadcrumbsOptions = HighchartsSharedSharedTypes.navigationBreadcrumbsOptions
module ChartsNavigationBreadcrumbsOptionsButtonTheme = HighchartsSharedSharedTypes.ChartsNavigationBreadcrumbsOptionsButtonTheme
module ChartsNavigationBreadcrumbsOptionsPosition = HighchartsSharedSharedTypes.ChartsNavigationBreadcrumbsOptionsPosition
type navigationBreadcrumbsSeparatorOptions = HighchartsSharedSharedTypes.navigationBreadcrumbsSeparatorOptions
module ChartsNavigationBreadcrumbsSeparatorOptionsStyle = HighchartsSharedSharedTypes.ChartsNavigationBreadcrumbsSeparatorOptionsStyle
type navigationButtonOptions = HighchartsSharedSharedTypes.navigationButtonOptions
type navigationEventsOptions = HighchartsSharedSharedTypes.navigationEventsOptions
type navigatorOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.navigatorOptions<'a, 'b, 'c>
type navigatorHandlesOptions = HighchartsSharedSharedTypes.navigatorHandlesOptions
type navigatorSeriesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.navigatorSeriesOptions<
  'a,
  'b,
  'c,
>
type navigatorSeriesDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorSeriesDataLabelsOptions<'a, 'b, 'c>
type navigatorSeriesDataLabelsOptionsEtcemv4e<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorSeriesDataLabelsOptionsEtcemv4e<'a, 'b, 'c>
module ChartsNavigatorOptionsSeries = HighchartsSharedSharedTypes.ChartsNavigatorOptionsSeries
type navigatorXAxisOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.navigatorXAxisOptions<
  'a,
  'b,
  'c,
>
type navigatorXAxisLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisLabelsOptions<'a, 'b, 'c>
module ChartsNavigatorXAxisLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsNavigatorXAxisLabelsOptionsStyle
type navigatorXAxisPlotBandsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisPlotBandsOptions<'a, 'b, 'c>
type navigatorXAxisPlotBandsEventsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisPlotBandsEventsOptions<'a, 'b, 'c>
type navigatorXAxisPlotBandsLabelOptions = HighchartsSharedSharedTypes.navigatorXAxisPlotBandsLabelOptions
type navigatorXAxisPlotLinesOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisPlotLinesOptions<'a, 'b, 'c>
type navigatorXAxisPlotLinesLabelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisPlotLinesLabelOptions<'a, 'b, 'c>
type navigatorXAxisTitleOptions = HighchartsSharedSharedTypes.navigatorXAxisTitleOptions
module ChartsNavigatorXAxisTitleOptionsStyle = HighchartsSharedSharedTypes.ChartsNavigatorXAxisTitleOptionsStyle
type navigatorXAxisOptionsOrNavigatorXAxisOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorXAxisOptionsOrNavigatorXAxisOptionsArray<'a, 'b, 'c>
type navigatorYAxisOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.navigatorYAxisOptions<
  'a,
  'b,
  'c,
>
type navigatorYAxisLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorYAxisLabelsOptions<'a, 'b, 'c>
type navigatorYAxisLabelsLevelsOptions = HighchartsSharedSharedTypes.navigatorYAxisLabelsLevelsOptions
module ChartsNavigatorYAxisLabelsOptionsStyle = HighchartsSharedSharedTypes.ChartsNavigatorYAxisLabelsOptionsStyle
type navigatorYAxisPlotBandsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorYAxisPlotBandsOptions<'a, 'b, 'c>
type navigatorYAxisTitleOptions = HighchartsSharedSharedTypes.navigatorYAxisTitleOptions
module ChartsNavigatorYAxisTitleOptionsStyle = HighchartsSharedSharedTypes.ChartsNavigatorYAxisTitleOptionsStyle
type navigatorYAxisOptionsOrNavigatorYAxisOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.navigatorYAxisOptionsOrNavigatorYAxisOptionsArray<'a, 'b, 'c>
type noDataOptions = HighchartsSharedSharedTypes.noDataOptions
module ChartsNoDataOptionsPosition = HighchartsSharedSharedTypes.ChartsNoDataOptionsPosition
type paneOptions = HighchartsSharedSharedTypes.paneOptions
type paneBackgroundOptions = HighchartsSharedSharedTypes.paneBackgroundOptions
type paneBackgroundShapeValue = HighchartsSharedSharedTypes.paneBackgroundShapeValue
type paneBackgroundOptionsOrPaneBackgroundOptionsArray = HighchartsSharedSharedTypes.paneBackgroundOptionsOrPaneBackgroundOptionsArray
type paneOptionsOrPaneOptionsArray = HighchartsSharedSharedTypes.paneOptionsOrPaneOptionsArray
type plotOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotOptions<'a, 'b, 'c>
type plotAbandsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAbandsOptions<'a, 'b, 'c>
type color = HighchartsSharedSharedTypes.color
type seriesSonificationOptions = HighchartsSharedSharedTypes.seriesSonificationOptions
type seriesSonificationSpeechOptions = HighchartsSharedSharedTypes.seriesSonificationSpeechOptions
module ChartsSeriesSonificationSpeechOptionsActiveWhen = HighchartsSharedSharedTypes.ChartsSeriesSonificationSpeechOptionsActiveWhen
type sonificationInstrumentActiveWhenOptions = HighchartsSharedSharedTypes.sonificationInstrumentActiveWhenOptions
type sonificationSpeechMappingOptions = HighchartsSharedSharedTypes.sonificationSpeechMappingOptions
module ChartsSonificationSpeechMappingOptionsPitch = HighchartsSharedSharedTypes.ChartsSonificationSpeechMappingOptionsPitch
type sonificationSpeechPitchOptions = HighchartsSharedSharedTypes.sonificationSpeechPitchOptions
module ChartsSonificationSpeechMappingOptionsPlayDelay = HighchartsSharedSharedTypes.ChartsSonificationSpeechMappingOptionsPlayDelay
type sonificationSpeechPlayDelayOptions = HighchartsSharedSharedTypes.sonificationSpeechPlayDelayOptions
module ChartsSonificationSpeechMappingOptionsRate = HighchartsSharedSharedTypes.ChartsSonificationSpeechMappingOptionsRate
module ChartsSonificationSpeechMappingOptionsVolume = HighchartsSharedSharedTypes.ChartsSonificationSpeechMappingOptionsVolume
type sonificationInstrumentPointGroupingOptions = HighchartsSharedSharedTypes.sonificationInstrumentPointGroupingOptions
type sonifcationTypeValue = HighchartsSharedSharedTypes.sonifcationTypeValue
type seriesSonificationPointGroupingOptions = HighchartsSharedSharedTypes.seriesSonificationPointGroupingOptions
type optionsAlgorithmValue = HighchartsSharedSharedTypes.optionsAlgorithmValue
type seriesStatesOptionsObject = HighchartsSharedSharedTypes.seriesStatesOptionsObject
type seriesStatesHoverOptionsObject = HighchartsSharedSharedTypes.seriesStatesHoverOptionsObject
type seriesStatesHoverHaloOptionsObject = HighchartsSharedSharedTypes.seriesStatesHoverHaloOptionsObject
type plotTilemapStatesHoverHaloAttributesOptions = HighchartsSharedSharedTypes.plotTilemapStatesHoverHaloAttributesOptions
module ChartsSeriesStatesHoverHaloOptionsObjectAttributes = HighchartsSharedSharedTypes.ChartsSeriesStatesHoverHaloOptionsObjectAttributes
type numberOrSeriesStatesHoverOptionsObject = HighchartsSharedSharedTypes.numberOrSeriesStatesHoverOptionsObject
type seriesStatesInactiveOptionsObject = HighchartsSharedSharedTypes.seriesStatesInactiveOptionsObject
type seriesStatesSelectOptionsObject = HighchartsSharedSharedTypes.seriesStatesSelectOptionsObject
type plotAdOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAdOptions<'a, 'b, 'c>
type plotAoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAoOptions<'a, 'b, 'c>
type plotApoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotApoOptions<'a, 'b, 'c>
type plotArcdiagramOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotArcdiagramOptions<
  'a,
  'b,
  'c,
>
type plotArcdiagramLevelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotArcdiagramLevelsOptions<'a, 'b, 'c>
type plotAreaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAreaOptions<'a, 'b, 'c>
type plotSeriesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSeriesOptions<'a, 'b, 'c>
type plotSeriesDataLabelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotSeriesDataLabelsOptions<'a, 'b, 'c>
module ChartsPlotSeriesOptionsDataSorting = HighchartsSharedSharedTypes.ChartsPlotSeriesOptionsDataSorting
type plotSeriesOnPointOptions = HighchartsSharedSharedTypes.plotSeriesOnPointOptions
module ChartsPlotSeriesOnPointOptionsConnectorOptions = HighchartsSharedSharedTypes.ChartsPlotSeriesOnPointOptionsConnectorOptions
module ChartsPlotSeriesOnPointOptionsPosition = HighchartsSharedSharedTypes.ChartsPlotSeriesOnPointOptionsPosition
module ChartsPlotSeriesOptionsOnPoint = HighchartsSharedSharedTypes.ChartsPlotSeriesOptionsOnPoint
type plotArearangeOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotArearangeOptions<'a, 'b, 'c>
type plotAreasplineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAreasplineOptions<
  'a,
  'b,
  'c,
>
type plotAreasplinerangeOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAreasplinerangeOptions<'a, 'b, 'c>
type plotAroonOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAroonOptions<'a, 'b, 'c>
type plotAroonoscillatorOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotAroonoscillatorOptions<'a, 'b, 'c>
type plotAtrOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotAtrOptions<'a, 'b, 'c>
type plotBarOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBarOptions<'a, 'b, 'c>
type plotBbOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBbOptions<'a, 'b, 'c>
type plotBellcurveOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBellcurveOptions<'a, 'b, 'c>
type plotBoxplotOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBoxplotOptions<'a, 'b, 'c>
type plotBubbleOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBubbleOptions<'a, 'b, 'c>
type plotBulletOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotBulletOptions<'a, 'b, 'c>
type plotCandlestickOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCandlestickOptions<
  'a,
  'b,
  'c,
>
type plotCciOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCciOptions<'a, 'b, 'c>
type plotChaikinOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotChaikinOptions<'a, 'b, 'c>
type plotCmfOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCmfOptions<'a, 'b, 'c>
type plotCmoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCmoOptions<'a, 'b, 'c>
type plotColumnOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotColumnOptions<'a, 'b, 'c>
type plotColumnpyramidOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotColumnpyramidOptions<
  'a,
  'b,
  'c,
>
type plotColumnrangeOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotColumnrangeOptions<
  'a,
  'b,
  'c,
>
type plotContourOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotContourOptions<'a, 'b, 'c>
type plotCylinderOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotCylinderOptions<'a, 'b, 'c>
type plotDemaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDemaOptions<'a, 'b, 'c>
type plotDependencywheelOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotDependencywheelOptions<'a, 'b, 'c>
type plotDependencywheelLevelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotDependencywheelLevelsOptions<'a, 'b, 'c>
type plotDisparityindexOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDisparityindexOptions<
  'a,
  'b,
  'c,
>
type plotDmiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDmiOptions<'a, 'b, 'c>
type plotDpoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDpoOptions<'a, 'b, 'c>
type plotDumbbellOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotDumbbellOptions<'a, 'b, 'c>
type plotEmaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotEmaOptions<'a, 'b, 'c>
type plotErrorbarOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotErrorbarOptions<'a, 'b, 'c>
type plotFlagsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotFlagsOptions<'a, 'b, 'c>
type plotFlowmapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotFlowmapOptions<'a, 'b, 'c>
type plotFunnelOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotFunnelOptions<'a, 'b, 'c>
type plotFunnel3dOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotFunnel3dOptions<'a, 'b, 'c>
type plotGanttOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotGanttOptions<'a, 'b, 'c>
type plotGaugeOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotGaugeOptions<'a, 'b, 'c>
type plotGeoheatmapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotGeoheatmapOptions<
  'a,
  'b,
  'c,
>
type plotHeatmapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotHeatmapOptions<'a, 'b, 'c>
type plotHeikinashiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotHeikinashiOptions<
  'a,
  'b,
  'c,
>
type plotHistogramOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotHistogramOptions<'a, 'b, 'c>
type plotHlcOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotHlcOptions<'a, 'b, 'c>
type plotHollowcandlestickOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotHollowcandlestickOptions<'a, 'b, 'c>
type plotIkhOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotIkhOptions<'a, 'b, 'c>
type plotItemOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotItemOptions<'a, 'b, 'c>
type plotKeltnerchannelsOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotKeltnerchannelsOptions<'a, 'b, 'c>
type plotKlingerOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotKlingerOptions<'a, 'b, 'c>
type plotLineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotLineOptions<'a, 'b, 'c>
type plotLinearregressionOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressionOptions<'a, 'b, 'c>
type plotLinearregressionangleOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressionangleOptions<'a, 'b, 'c>
type plotLinearregressioninterceptOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressioninterceptOptions<'a, 'b, 'c>
type plotLinearregressionslopeOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.plotLinearregressionslopeOptions<'a, 'b, 'c>
type plotLollipopOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotLollipopOptions<'a, 'b, 'c>
type plotMacdOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMacdOptions<'a, 'b, 'c>
type plotMapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMapOptions<'a, 'b, 'c>
type plotMapbubbleOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMapbubbleOptions<'a, 'b, 'c>
type plotMaplineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMaplineOptions<'a, 'b, 'c>
type plotMappointOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMappointOptions<'a, 'b, 'c>
type numberOrPlotMappointOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.numberOrPlotMappointOptions<'a, 'b, 'c>
type plotMfiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMfiOptions<'a, 'b, 'c>
type plotMomentumOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotMomentumOptions<'a, 'b, 'c>
type plotNatrOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotNatrOptions<'a, 'b, 'c>
type plotNetworkgraphOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotNetworkgraphOptions<
  'a,
  'b,
  'c,
>
type plotObvOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotObvOptions<'a, 'b, 'c>
type plotOhlcOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotOhlcOptions<'a, 'b, 'c>
type plotOrganizationOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotOrganizationOptions<
  'a,
  'b,
  'c,
>
type plotPackedbubbleOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPackedbubbleOptions<
  'a,
  'b,
  'c,
>
type plotParetoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotParetoOptions<'a, 'b, 'c>
type plotPcOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPcOptions<'a, 'b, 'c>
type plotPictorialOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPictorialOptions<'a, 'b, 'c>
type plotPieOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPieOptions<'a, 'b, 'c>
type plotPivotpointsOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPivotpointsOptions<
  'a,
  'b,
  'c,
>
type plotPointandfigureOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPointandfigureOptions<
  'a,
  'b,
  'c,
>
type plotPolygonOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPolygonOptions<'a, 'b, 'c>
type plotPpoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPpoOptions<'a, 'b, 'c>
type plotPriceenvelopesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPriceenvelopesOptions<
  'a,
  'b,
  'c,
>
type plotPsarOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPsarOptions<'a, 'b, 'c>
type plotPyramidOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPyramidOptions<'a, 'b, 'c>
type plotPyramid3dOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotPyramid3dOptions<'a, 'b, 'c>
type plotRenkoOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotRenkoOptions<'a, 'b, 'c>
type plotRenkoNavigatorOptions = HighchartsSharedSharedTypes.plotRenkoNavigatorOptions
module ChartsPlotRenkoOptionsNavigatorOptions = HighchartsSharedSharedTypes.ChartsPlotRenkoOptionsNavigatorOptions
type plotRocOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotRocOptions<'a, 'b, 'c>
type plotRsiOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotRsiOptions<'a, 'b, 'c>
type plotSankeyOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSankeyOptions<'a, 'b, 'c>
type plotScatterOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotScatterOptions<'a, 'b, 'c>
type plotScatter3dOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotScatter3dOptions<'a, 'b, 'c>
type plotSlowstochasticOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSlowstochasticOptions<
  'a,
  'b,
  'c,
>
type plotSmaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSmaOptions<'a, 'b, 'c>
type plotSolidgaugeOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSolidgaugeOptions<
  'a,
  'b,
  'c,
>
type plotSplineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSplineOptions<'a, 'b, 'c>
type plotStochasticOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotStochasticOptions<
  'a,
  'b,
  'c,
>
type plotStreamgraphOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotStreamgraphOptions<
  'a,
  'b,
  'c,
>
type plotSunburstOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSunburstOptions<'a, 'b, 'c>
type plotSupertrendOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotSupertrendOptions<
  'a,
  'b,
  'c,
>
type plotTemaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTemaOptions<'a, 'b, 'c>
type plotTiledwebmapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTiledwebmapOptions<
  'a,
  'b,
  'c,
>
type plotTilemapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTilemapOptions<'a, 'b, 'c>
type plotTimelineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTimelineOptions<'a, 'b, 'c>
type plotTreegraphOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTreegraphOptions<'a, 'b, 'c>
type plotTreemapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTreemapOptions<'a, 'b, 'c>
type plotTrendlineOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTrendlineOptions<'a, 'b, 'c>
type plotTrixOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotTrixOptions<'a, 'b, 'c>
type plotVariablepieOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVariablepieOptions<
  'a,
  'b,
  'c,
>
type plotVariwideOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVariwideOptions<'a, 'b, 'c>
type plotVbpOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVbpOptions<'a, 'b, 'c>
type plotVectorOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVectorOptions<'a, 'b, 'c>
type plotVennOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVennOptions<'a, 'b, 'c>
type plotVwapOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotVwapOptions<'a, 'b, 'c>
type plotWaterfallOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotWaterfallOptions<'a, 'b, 'c>
type plotWilliamsrOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotWilliamsrOptions<'a, 'b, 'c>
type plotWindbarbOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotWindbarbOptions<'a, 'b, 'c>
type plotWmaOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotWmaOptions<'a, 'b, 'c>
type plotWordcloudOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotWordcloudOptions<'a, 'b, 'c>
type plotXrangeOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotXrangeOptions<'a, 'b, 'c>
type plotZigzagOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.plotZigzagOptions<'a, 'b, 'c>
type rangeSelectorOptions = HighchartsSharedSharedTypes.rangeSelectorOptions
type rangeSelectorButtonPositionOptions = HighchartsSharedSharedTypes.rangeSelectorButtonPositionOptions
type rangeSelectorButtonsOptions = HighchartsSharedSharedTypes.rangeSelectorButtonsOptions
type rangeSelectorButtonsEventsOptions = HighchartsSharedSharedTypes.rangeSelectorButtonsEventsOptions
type rangeSelectorButtonTypeValue = HighchartsSharedSharedTypes.rangeSelectorButtonTypeValue
type optionsDropdownValue = HighchartsSharedSharedTypes.optionsDropdownValue
type responsiveOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.responsiveOptions<'a, 'b, 'c>
type responsiveRulesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.responsiveRulesOptions<
  'a,
  'b,
  'c,
>
type responsiveRulesConditionOptions<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.responsiveRulesConditionOptions<'a, 'b, 'c>
type scrollbarOptions = HighchartsSharedSharedTypes.scrollbarOptions
module ChartsOptionsSeries = HighchartsSharedSharedTypes.ChartsOptionsSeries
type unknownSeriesOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.unknownSeriesOptions<'a, 'b, 'c>
type sonificationOptions = HighchartsSharedSharedTypes.sonificationOptions
type sonificationInstrumentOptions = HighchartsSharedSharedTypes.sonificationInstrumentOptions
type synthPatchOptionsObject = HighchartsSharedSharedTypes.synthPatchOptionsObject
type synthPatchEQFilter = HighchartsSharedSharedTypes.synthPatchEQFilter
type synthPatchOscillatorOptionsObject = HighchartsSharedSharedTypes.synthPatchOscillatorOptionsObject
type synthPatchPassFilter = HighchartsSharedSharedTypes.synthPatchPassFilter
type synthPatchOscillatorType = HighchartsSharedSharedTypes.synthPatchOscillatorType
type stringOrSynthPatchOptionsObject = HighchartsSharedSharedTypes.stringOrSynthPatchOptionsObject
type sonificationInstrumentMappingOptions = HighchartsSharedSharedTypes.sonificationInstrumentMappingOptions
module ChartsSonificationInstrumentMappingOptionsFrequency = HighchartsSharedSharedTypes.ChartsSonificationInstrumentMappingOptionsFrequency
type sonificationInstrumentFrequencyOptions = HighchartsSharedSharedTypes.sonificationInstrumentFrequencyOptions
type optionsMapFunctionValue = HighchartsSharedSharedTypes.optionsMapFunctionValue
type optionsWithinValue = HighchartsSharedSharedTypes.optionsWithinValue
type sonificationInstrumentHighpassOptions = HighchartsSharedSharedTypes.sonificationInstrumentHighpassOptions
module ChartsSonificationInstrumentHighpassOptionsFrequency = HighchartsSharedSharedTypes.ChartsSonificationInstrumentHighpassOptionsFrequency
module ChartsSonificationInstrumentHighpassOptionsResonance = HighchartsSharedSharedTypes.ChartsSonificationInstrumentHighpassOptionsResonance
module ChartsSonificationInstrumentMappingOptionsPitch = HighchartsSharedSharedTypes.ChartsSonificationInstrumentMappingOptionsPitch
type sonificationInstrumentPitchOptions = HighchartsSharedSharedTypes.sonificationInstrumentPitchOptions
module ChartsSonificationInstrumentMappingOptionsPlayDelay = HighchartsSharedSharedTypes.ChartsSonificationInstrumentMappingOptionsPlayDelay
module ChartsSonificationInstrumentMappingOptionsRate = HighchartsSharedSharedTypes.ChartsSonificationInstrumentMappingOptionsRate
type sonificationInstrumentTremoloOptions = HighchartsSharedSharedTypes.sonificationInstrumentTremoloOptions
module ChartsSonificationInstrumentTremoloOptionsDepth = HighchartsSharedSharedTypes.ChartsSonificationInstrumentTremoloOptionsDepth
module ChartsSonificationInstrumentTremoloOptionsSpeed = HighchartsSharedSharedTypes.ChartsSonificationInstrumentTremoloOptionsSpeed
type sonificationEventsOptions = HighchartsSharedSharedTypes.sonificationEventsOptions
type sonificationContextTracksOptions = HighchartsSharedSharedTypes.sonificationContextTracksOptions
type optionsValueMapFunctionValue = HighchartsSharedSharedTypes.optionsValueMapFunctionValue
type optionsOrderValue = HighchartsSharedSharedTypes.optionsOrderValue
type stockToolsOptions = HighchartsSharedSharedTypes.stockToolsOptions
type stockToolsGuiOptions = HighchartsSharedSharedTypes.stockToolsGuiOptions
type stockToolsGuiDefinitionsOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsOptions
type stockToolsGuiDefinitionsAdvancedOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsAdvancedOptions
type stockToolsGuiDefinitionsAdvancedFibonacciOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsAdvancedFibonacciOptions
type stockToolsGuiDefinitionsCrookedLinesOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsCrookedLinesOptions
type stockToolsGuiDefinitionsFlagsOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsFlagsOptions
type stockToolsGuiDefinitionsLinesOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsLinesOptions
type stockToolsGuiDefinitionsMeasureOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsMeasureOptions
type stockToolsGuiDefinitionsSeparatorOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsSeparatorOptions
type stockToolsGuiDefinitionsSimpleShapesOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsSimpleShapesOptions
type stockToolsGuiDefinitionsTypeChangeOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsTypeChangeOptions
type stockToolsGuiDefinitionsVerticalLabelsOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsVerticalLabelsOptions
type stockToolsGuiDefinitionsZoomChangeOptions = HighchartsSharedSharedTypes.stockToolsGuiDefinitionsZoomChangeOptions
type subtitleOptions = HighchartsSharedSharedTypes.subtitleOptions
module ChartsSubtitleOptionsStyle = HighchartsSharedSharedTypes.ChartsSubtitleOptionsStyle
type timeOptions = HighchartsSharedSharedTypes.timeOptions
type titleOptions = HighchartsSharedSharedTypes.titleOptions
module ChartsTitleOptionsStyle = HighchartsSharedSharedTypes.ChartsTitleOptionsStyle
type tooltipOptions<'a, 'b, 'c> = HighchartsSharedSharedTypes.tooltipOptions<'a, 'b, 'c>
module ChartsTooltipOptionsAnimation = HighchartsSharedSharedTypes.ChartsTooltipOptionsAnimation
type tooltip<'a, 'b, 'c> = HighchartsSharedSharedTypes.tooltip<'a, 'b, 'c>
type pointOrPointArray<'a, 'b, 'c> = HighchartsSharedSharedTypes.pointOrPointArray<'a, 'b, 'c>
type optionsHeaderShapeValue = HighchartsSharedSharedTypes.optionsHeaderShapeValue
type tooltipPositionerPointObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.tooltipPositionerPointObject<'a, 'b, 'c>
type pointOptionsObject<'a, 'b, 'c> = HighchartsSharedSharedTypes.pointOptionsObject<'a, 'b, 'c>
type pointAccessibilityOptionsObject = HighchartsSharedSharedTypes.pointAccessibilityOptionsObject
module ChartsPointOptionsObjectDataLabels = HighchartsSharedSharedTypes.ChartsPointOptionsObjectDataLabels
type seriesLineDataDragDropOptions = HighchartsSharedSharedTypes.seriesLineDataDragDropOptions
type seriesBulletDataTargetOptions = HighchartsSharedSharedTypes.seriesBulletDataTargetOptions
type stringOrNumberOrStringOrNumberArrayOrPointOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.stringOrNumberOrStringOrNumberArrayOrPointOptionsObject<'a, 'b, 'c>
type tooltipShapeValue = HighchartsSharedSharedTypes.tooltipShapeValue
module ChartsTooltipOptionsStyle = HighchartsSharedSharedTypes.ChartsTooltipOptionsStyle
type xAxisOptionsOrXAxisOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.xAxisOptionsOrXAxisOptionsArray<'a, 'b, 'c>
type yAxisOptionsOrYAxisOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.yAxisOptionsOrYAxisOptionsArray<'a, 'b, 'c>
type zAxisOptionsOrZAxisOptionsArray<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.zAxisOptionsOrZAxisOptionsArray<'a, 'b, 'c>
type pointer<'a, 'b, 'c> = HighchartsSharedSharedTypes.pointer<'a, 'b, 'c>
type chartPositionObject = HighchartsSharedSharedTypes.chartPositionObject
type pointerAxisCoordinatesObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.pointerAxisCoordinatesObject<'a, 'b, 'c>
type pointerAxisCoordinateObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.pointerAxisCoordinateObject<'a, 'b, 'c>
type offsetObject = HighchartsSharedSharedTypes.offsetObject
type svgRenderer = HighchartsSharedSharedTypes.svgRenderer
type symbolDictionary = HighchartsSharedSharedTypes.symbolDictionary
module Arc = HighchartsSharedSharedTypes.Arc
type symbolKeyValue = HighchartsSharedSharedTypes.symbolKeyValue
module Circle = HighchartsSharedSharedTypes.Circle
type fontMetricsObject = HighchartsSharedSharedTypes.fontMetricsObject
module Path = HighchartsSharedSharedTypes.Path
type svgAttributesOrGetLinePathTargetTArray = HighchartsSharedSharedTypes.svgAttributesOrGetLinePathTargetTArray
module Rect = HighchartsSharedSharedTypes.Rect
type symbolOptionsObject = HighchartsSharedSharedTypes.symbolOptionsObject
type subtitleObject = HighchartsSharedSharedTypes.subtitleObject
type bBoxObject = HighchartsSharedSharedTypes.bBoxObject
type stringOrBBoxObject = HighchartsSharedSharedTypes.stringOrBBoxObject
module Attr = HighchartsSharedSharedTypes.Attr
type stringOrSvgAttributes = HighchartsSharedSharedTypes.stringOrSvgAttributes
type stringOrNumberOrGetLinePathTargetTArray = HighchartsSharedSharedTypes.stringOrNumberOrGetLinePathTargetTArray
type time = HighchartsSharedSharedTypes.time
type timeNormalizedObject = HighchartsSharedSharedTypes.timeNormalizedObject
type titleObject = HighchartsSharedSharedTypes.titleObject
module GetTarget = HighchartsSharedSharedTypes.GetTarget
type chartIsInsideOptionsObject<
  'a,
  'b,
  'c,
> = HighchartsSharedSharedTypes.chartIsInsideOptionsObject<'a, 'b, 'c>
module SetStateAction = HighchartsSharedSharedTypes.SetStateAction
