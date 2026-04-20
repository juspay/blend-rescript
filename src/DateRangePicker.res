// Date range presets enum
type dateRangePreset =
  | @as("custom") Custom
  | @as("today") Today
  | @as("yesterday") Yesterday
  | @as("tomorrow") Tomorrow
  | @as("last1Hour") Last1Hour
  | @as("last6Hours") Last6Hours
  | @as("last7Days") Last7Days
  | @as("last30Days") Last30Days
  | @as("last3Months") Last3Months
  | @as("last12Months") Last12Months
  | @as("next7Days") Next7Days
  | @as("next30Days") Next30Days
  | @as("next3Months") Next3Months
  | @as("next12Months") Next12Months

// Date range picker size enum
type dateRangePickerSize =
  | @as("sm") Small
  | @as("md") Medium
  | @as("lg") Large

// Date format presets enum
type dateFormatPreset =
  | @as("short-range") ShortRange
  | @as("medium-range") MediumRange
  | @as("long-range") LongRange
  | @as("short-single") ShortSingle
  | @as("medium-single") MediumSingle
  | @as("long-single") LongSingle
  | @as("iso-range") IsoRange
  | @as("us-range") UsRange
  | @as("custom") Custom

// Time format type
type timeFormat =
  | @as("12h") TwelveHour
  | @as("24h") TwentyFourHour

// Date range type
type dateRange = {
  startDate: Date.t,
  endDate: Date.t,
  showTimePicker?: bool,
}

// Custom format function options
type customFormatOptions = {
  includeTime?: bool,
  includeYear?: bool,
  separator?: string,
  locale?: string,
}

// Custom format function type
type customFormatFunction = (dateRange, option<customFormatOptions>) => string

// Date format configuration
type dateFormatConfig = {
  preset?: dateFormatPreset,
  customFormat?: customFormatFunction,
  includeTime?: bool,
  includeYear?: bool,
  separator?: string,
  locale?: string,
  timeFormat?: timeFormat,
}

// Trigger render props
type triggerRenderProps = {
  selectedRange?: dateRange,
  isOpen: bool,
  isDisabled: bool,
  formattedValue: string,
  onClick: unit => unit,
}

// Trigger configuration
type triggerConfig = {
  element?: React.element,
  placeholder?: string,
  showIcon?: bool,
  icon?: React.element,
  className?: string,
  style?: JsxDOM.style,
  renderTrigger?: triggerRenderProps => React.element,
}

type customRangeConfig = {
  calculateEndDate?: (~startDate: Date.t) => Date.t,
  fixedDayRange?: int,
  referenceRange?: dateRange,
  backwardDays?: int,
  allowManualEndDateSelection?: bool,
  applyToPresets?: bool,
}

type customDateDisableFunction = (~date: Date.t) => bool

// Haptic feedback types
type hapticFeedbackType =
  | @as("selection") Selection
  | @as("impact") Impact
  | @as("notification") Notification

@module("@juspay/blend-design-system") @react.component
external make: (
  ~value: dateRange=?,
  ~onChange: dateRange => unit=?,
  ~showDateTimePicker: bool=?,
  ~showPresets: bool=?,
  ~placeholder: string=?,
  ~isDisabled: bool=?,
  ~icon: React.element=?,
  ~minDate: Date.t=?,
  ~maxDate: Date.t=?,
  ~dateFormat: string=?,
  ~allowSingleDateSelection: bool=?,
  ~disableFutureDates: bool=?,
  ~disablePastDates: bool=?,
  ~hideFutureDates: bool=?,
  ~hidePastDates: bool=?,
  ~triggerElement: React.element=?,
  ~useDrawerOnMobile: bool=?,
  ~skipQuickFiltersOnMobile: bool=?,
  ~size: dateRangePickerSize=?,
  ~formatConfig: dateFormatConfig=?,
  ~triggerConfig: triggerConfig=?,
  ~maxMenuHeight: int=?,
  ~customRangeConfig: customRangeConfig=?,
  ~customDisableDates: customDateDisableFunction=?,
) => React.element = "DateRangePicker"
