// Import necessary types from ChartBindings
open ChartBindings

// Utility functions for chart operations
@module("@juspay/blend-design-system/dist/components/Charts/ChartUtils")
external transformNestedData: (
  array<nestedDataPoint>,
  ~selectedKeys: array<string>=?,
) => array<flattenedDataPoint> = "transformNestedData"

@module("@juspay/blend-design-system/dist/components/Charts/ChartUtils")
external lightenHexColor: (string, ~amount: float=?) => string = "lightenHexColor"

@module("@juspay/blend-design-system/dist/components/Charts/ChartUtils")
external formatNumber: float => string = "formatNumber"

@module("@juspay/blend-design-system/dist/components/Charts/ChartUtils")
external capitaliseCamelCase: string => string = "capitaliseCamelCase"
