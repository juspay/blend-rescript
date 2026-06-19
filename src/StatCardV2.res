type props<'a> = {
  ...HtmlAttrs.htmlAttributesOmitTitle,
  title: string,
  variant?: StatCardV2Types.statCardV2Variant,
  titleIcon?: React.element,
  actionIcon?: React.element,
  value?: string,
  progressValue?: float,
  helpIconText?: string,
  valueTooltip?: React.element,
  change?: StatCardV2Types.statCardV2Change,
  subtitle?: string,
  options?: HighchartsSharedTypes.options<'a>,
  skeleton?: StatCardV2Types.statCardV2SkeletonProps,
  dropdownProps?: SingleSelectTypes.singleSelectProps,
  width?: string,
  maxWidth?: string,
  minWidth?: string,
  height?: string,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a>> = "StatCardV2"
