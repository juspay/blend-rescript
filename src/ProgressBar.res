// Button subtype for progress bar
type buttonSubType =
  | @as("filled") Filled
  | @as("outlined") Outlined
  | @as("text") Text

// ProgressBar size types
type progressBarSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

// ProgressBar variant types
type progressBarVariant =
  | @as("solid") Solid
  | @as("segmented") Segmented
  | @as("circular") Circular

// ProgressBar type (seems to overlap with variant, but keeping as per TypeScript definition)
type progressBarType =
  | @as("solid") Solid
  | @as("segmented") Segmented

// ProgressBar props type
type progressBarProps = {
  value: float,
  size?: progressBarSize,
  variant?: progressBarVariant,
  type_?: progressBarType,
  showLabel?: bool,
  className?: string,
}

// External binding to the ProgressBar component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~value: float,
  ~size: progressBarSize=?,
  ~variant: progressBarVariant=?,
  @as("type") ~type_: progressBarType=?,
  ~showLabel: bool=?,
  ~className: string=?,
  // Common HTML div attributes
  ~id: string=?,
  ~role: string=?,
  ~ariaLabel: string=?,
  ~ariaValueNow: float=?,
  ~ariaValueMin: float=?,
  ~ariaValueMax: float=?,
  ~dataTestId: string=?,
) => React.element = "ProgressBar"
