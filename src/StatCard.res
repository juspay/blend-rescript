// StatCard variants
type statCardVariant =
  | @as("line") Line
  | @as("progress") Progress
  | @as("bar") Bar
  | @as("number") Number

// Change type for indicating increase/decrease
type changeType =
  | @as("increase") Increase
  | @as("decrease") Decrease

// Change direction for chart
type direction =
  | @as("vertical") Vertical
  | @as("horizontal") Horizontal

type statCardArrowDirection =
  | @as("up") UP
  | @as("down") DOWN

// Chart data point structure
type chartDataPoint = {
  value: float,
  name: string,
}

// Structure for representing change values
type statCardChange = {
  value?: float,
  valueType: changeType,
  tooltip?: React.element,
  arrowDirection?: statCardArrowDirection,
}

// Axis types for formatting (same as Charts)
type axisType =
  | @as("currency") Currency
  | @as("percentage") Percentage
  | @as("number") Number
  | @as("dateTime") DateTime

// Axis configuration for StatCard
type statCardAxisConfig = {
  \"type"?: axisType,
  tickFormatter?: string => string,
  dateOnly?: bool,
  smart?: bool,
  timeZone?: string,
  hour12?: bool,
}

// Import SingleSelect props from SingleSelectBinding
type singleSelectProps = {
  label?: string,
  subLabel?: string,
  hintText?: string,
  required?: bool,
  helpIconText?: string,
  placeholder: string,
  size?: SingleSelectBinding.selectMenuSize,
  items: array<SingleSelectBinding.selectMenuGroupType>,
  variant?: SingleSelectBinding.selectMenuVariant,
  selected: string,
  onSelect: string => unit,
  enableSearch?: bool,
  searchPlaceholder?: string,
  slot?: React.element,
  disabled?: bool,
  name?: string,
  customTrigger?: React.element,
  useDrawerOnMobile?: bool,
  alignment?: MultiSelectBindings.selectMenuItemAlignment,
  side?: MultiSelectBindings.selectMenuItemSide,
  sideOffset?: int,
  alignOffset?: int,
  minWidth?: int,
  maxWidth?: int,
  maxHeight?: int,
  minMenuWidth?: int,
  maxMenuWidth?: int,
  maxMenuHeight?: int,
  fullWidth?: bool,
  inline?: bool,
  onBlur?: unit => unit,
  onFocus?: unit => unit,
  error?: bool,
  errorMessage?: string,
}

// Skeleton variant type
type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave

// Skeleton props type
type skeletonProps = {
  show: bool,
  variant?: skeletonVariant,
}

// StatCard component props
type statCardProps = {
  title: string,
  value: string, // TypeScript allows string | number, but ReScript binding uses string
  valueTooltip?: React.element,
  change?: statCardChange,
  subtitle?: string,
  variant: statCardVariant,
  chartData?: array<chartDataPoint>,
  progressValue?: float,
  titleIcon?: React.element,
  actionIcon?: React.element,
  helpIconText?: string,
  dropdownProps?: singleSelectProps, // New prop
  maxWidth?: string, // New prop
  xAxis?: statCardAxisConfig,
  yAxis?: statCardAxisConfig,
  valueFormatter?: axisType,
  height?: string, // New prop
  showBorder?: bool,
  skeleton?: skeletonProps,
}

// StatCard component binding (updated to match TypeScript interface)
@module("@juspay/blend-design-system") @react.component
external make: (
  ~title: string,
  ~value: string,
  ~valueTooltip: React.element=?,
  ~change: statCardChange=?,
  ~subtitle: string=?,
  ~variant: statCardVariant,
  ~chartData: array<chartDataPoint>=?,
  ~progressValue: float=?,
  ~titleIcon: React.element=?,
  ~actionIcon: React.element=?,
  ~helpIconText: string=?,
  ~dropdownProps: singleSelectProps=?, // New prop
  ~maxWidth: string=?, // New prop
  ~xAxis: statCardAxisConfig=?,
  ~yAxis: statCardAxisConfig=?,
  ~valueFormatter: axisType=?,
  @as("type") ~type_: axisType=?,
  ~height: string=?, // New prop
  ~direction: direction=?,
  ~showBorder: bool=?,
  ~skeleton: skeletonProps=?,
) => React.element = "StatCard"
