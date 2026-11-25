// #190: compatibility re-exports — these identities moved to another module when a
// dependency cycle merged this home. Old `DateRangePickerTypes.<name>` annotations keep resolving, and enum constructors with them (#241).
type responsiveCalendarTokens = HighchartsSharedSharedTypes.responsiveCalendarTokens
type calendarTokenType = HighchartsSharedSharedTypes.calendarTokenType
type dateRangePickerCalendarTokenTypeTriggerConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeTriggerConfig
type dateRangePickerCalendarTokenTypeTriggerQuickSelectorConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeTriggerQuickSelectorConfig
type dateRangePickerCalendarTokenTypeTriggerDateInputConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeTriggerDateInputConfig
type dateRangePickerCalendarTokenTypeCalendarConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeCalendarConfig
type dateRangePickerCalendarTokenTypeCalendarHeaderConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeCalendarHeaderConfig
type dateRangePickerCalendarTokenTypeCalendarCalendarGridConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeCalendarCalendarGridConfig
type dateRangePickerCalendarTokenTypeCalendarFooterConfig = HighchartsSharedSharedTypes.dateRangePickerCalendarTokenTypeCalendarFooterConfig
type dateRangePickerProps = HighchartsSharedSharedTypes.dateRangePickerProps
type dateRange = HighchartsSharedSharedTypes.dateRange
type presetSelectionData = HighchartsSharedSharedTypes.presetSelectionData
type dateRangePreset = HighchartsSharedSharedTypes.dateRangePreset =
  | @as("custom") Custom
  | @as("today") Today
  | @as("yesterday") Yesterday
  | @as("tomorrow") Tomorrow
  | @as("last30Minutes") Last30Minutes
  | @as("last1Hour") Last1Hour
  | @as("last6Hours") Last6Hours
  | @as("last24Hours") Last24Hours
  | @as("last7Days") Last7Days
  | @as("last30Days") Last30Days
  | @as("thisMonth") ThisMonth
  | @as("lastMonth") LastMonth
  | @as("last3Months") Last3Months
  | @as("last12Months") Last12Months
  | @as("next7Days") Next7Days
  | @as("next30Days") Next30Days
  | @as("next3Months") Next3Months
  | @as("next12Months") Next12Months
module PresetsConfig = HighchartsSharedSharedTypes.PresetsConfig
type customPresetConfig = HighchartsSharedSharedTypes.customPresetConfig
type customPresetDefinition = HighchartsSharedSharedTypes.customPresetDefinition
type dateRangePickerDateRangePickerPropsGranularity = HighchartsSharedSharedTypes.dateRangePickerDateRangePickerPropsGranularity =
  | @as("month") Month
  | @as("day") Day
type customRangeConfig = HighchartsSharedSharedTypes.customRangeConfig
type dateRangePickerSize = HighchartsSharedSharedTypes.dateRangePickerSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type dateFormatConfig = HighchartsSharedSharedTypes.dateFormatConfig
type dateFormatPreset = HighchartsSharedSharedTypes.dateFormatPreset
type dateRangePickerDateFormatConfigCustomFormatConfig = HighchartsSharedSharedTypes.dateRangePickerDateFormatConfigCustomFormatConfig
type dateRangePickerDateFormatConfigTimeFormat = HighchartsSharedSharedTypes.dateRangePickerDateFormatConfigTimeFormat =
  | @as("12h") V12h
  | @as("24h") V24h
type triggerConfig = HighchartsSharedSharedTypes.triggerConfig
type dateRangePickerTriggerConfigRenderTriggerConfig = HighchartsSharedSharedTypes.dateRangePickerTriggerConfigRenderTriggerConfig
type dateRangePickerPopoverConfig = HighchartsSharedSharedTypes.dateRangePickerPopoverConfig
type dateRangePickerDateRangePickerPopoverConfigSide = HighchartsSharedSharedTypes.dateRangePickerDateRangePickerPopoverConfigSide =
  | @as("top") Top
  | @as("right") RightPopoverConfigSide
  | @as("bottom") Bottom
  | @as("left") LeftPopoverConfigSide
type dateRangePickerDateRangePickerPopoverConfigAlign = HighchartsSharedSharedTypes.dateRangePickerDateRangePickerPopoverConfigAlign =
  | @as("center") CenterPopoverConfigAlign
  | @as("end") EndConfigAlign
  | @as("start") Start
