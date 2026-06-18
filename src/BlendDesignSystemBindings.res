@module("@juspay/blend-design-system")
external addSnackbarV2: SnackbarV2Types.snackbarV2ToastOptions => CommonTypes.stringOrNumber =
  "addSnackbarV2"
@module("@juspay/blend-design-system")
external getButtonV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => ButtonV2Types.responsiveButtonV2Tokens = "getButtonV2Tokens"
@module("@juspay/blend-design-system")
external getAccordionV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => AccordionV2Types.responsiveAccordionV2Tokens = "getAccordionV2Tokens"
@module("@juspay/blend-design-system")
external getAlertV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => AlertV2Types.responsiveAlertV2Tokens = "getAlertV2Tokens"
@module("@juspay/blend-design-system")
external getAvatarV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => AvatarV2Types.responsiveAvatarV2Tokens = "getAvatarV2Tokens"
@module("@juspay/blend-design-system")
external getBreadcrumbV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => BreadcrumbV2Types.responsiveBreadcrumbV2Tokens = "getBreadcrumbV2Tokens"
@module("@juspay/blend-design-system")
external getChartV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => ChartsV2Types.responsiveChartV2Tokens = "getChartV2Tokens"
@module("@juspay/blend-design-system")
external getCheckboxV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SelectorV2Types.responsiveCheckboxV2Tokens = "getCheckboxV2Tokens"
@module("@juspay/blend-design-system")
external getCodeEditorV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => CodeEditorV2Types.responsiveCodeEditorV2Tokens = "getCodeEditorV2Tokens"
@module("@juspay/blend-design-system")
external getKeyValuePairV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => KeyValuePairV2Types.responsiveKeyValuePairV2Tokens = "getKeyValuePairV2Tokens"
@module("@juspay/blend-design-system")
external getMenuV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => MenuV2Types.responsiveMenuV2TokensType = "getMenuV2Tokens"
@module("@juspay/blend-design-system")
external getMultiSelectV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => MultiSelectV2Types.responsiveMultiSelectV2Tokens = "getMultiSelectV2Tokens"
@module("@juspay/blend-design-system")
external getPopoverV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => PopoverV2Types.responsivePopoverV2Tokens = "getPopoverV2Tokens"
@module("@juspay/blend-design-system")
external getProgressBarV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => ProgressBarV2Types.responsiveProgressBarV2Tokens = "getProgressBarV2Tokens"
@module("@juspay/blend-design-system")
external getRadioV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SelectorV2Types.responsiveRadioV2Tokens = "getRadioV2Tokens"
@module("@juspay/blend-design-system")
external getSingleSelectV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SingleSelectV2Types.responsiveSingleSelectV2Tokens = "getSingleSelectV2Tokens"
@module("@juspay/blend-design-system")
external getSwitchV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SelectorV2Types.responsiveSwitchV2Tokens = "getSwitchV2Tokens"
@module("@juspay/blend-design-system")
external getSnackbarV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SnackbarV2Types.responsiveSnackbarV2Tokens = "getSnackbarV2Tokens"
@module("@juspay/blend-design-system")
external getStatCardV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => StatCardV2Types.responsiveStatCardV2Tokens = "getStatCardV2Tokens"
@module("@juspay/blend-design-system")
external getTabsV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => TabsV2Types.responsiveTabsV2Tokens = "getTabsV2Tokens"
@module("@juspay/blend-design-system")
external getTagV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => TagV2Types.responsiveTagV2Tokens = "getTagV2Tokens"
@module("@juspay/blend-design-system")
external getTextInputV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => InputsV2SharedTypes.responsiveTextInputV2Tokens = "getTextInputV2Tokens"
@module("@juspay/blend-design-system")
external getTimelineTokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => TimelineTypes.responsiveTimelineTokens = "getTimelineTokens"
@module("@juspay/blend-design-system")
external getTooltipV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => TooltipV2Types.responsiveTooltipV2Tokens = "getTooltipV2Tokens"
@module("@juspay/blend-design-system")
external getSidebarV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SidebarV2Types.responsiveSidebarV2Tokens = "getSidebarV2Tokens"
@module("@juspay/blend-design-system")
external getMobileNavigationV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => SidebarV2Types.responsiveMobileNavigationV2Tokens = "getMobileNavigationV2Tokens"
@module("@juspay/blend-design-system")
external getTopbarTokens: TokensTypes.foundationTokenType => TopbarTypes.responsiveTopbarTokens =
  "getTopbarTokens"
@module("@juspay/blend-design-system")
external getSidebarTokens: TokensTypes.foundationTokenType => SidebarTypes.responsiveSidebarTokens =
  "getSidebarTokens"
@module("@juspay/blend-design-system")
external getMobileNavigationTokens: TokensTypes.foundationTokenType => SidebarTypes.responsiveMobileNavigationTokens =
  "getMobileNavigationTokens"
@module("@juspay/blend-design-system")
external getAccordionToken: TokensTypes.foundationTokenType => AccordionTypes.responsiveAccordionTokens =
  "getAccordionToken"
@module("@juspay/blend-design-system")
external getAlertTokens: TokensTypes.foundationTokenType => AlertTypes.responsiveAlertTokens =
  "getAlertTokens"
@module("@juspay/blend-design-system")
external getAvatarTokens: 'a => AvatarTypes.responsiveAvatarTokens = "getAvatarTokens"
@module("@juspay/blend-design-system")
external getAvatarGroupTokens: 'a => AvatarGroupTypes.responsiveAvatarGroupTokens =
  "getAvatarGroupTokens"
@module("@juspay/blend-design-system")
external getBreadcrumbTokens: TokensTypes.foundationTokenType => BreadcrumbTypes.responsiveBreadcrumbTokens =
  "getBreadcrumbTokens"
@module("@juspay/blend-design-system")
external getButtonTokens: TokensTypes.foundationTokenType => ButtonTypes.responsiveButtonTokens =
  "getButtonTokens"
@module("@juspay/blend-design-system")
external getCardTokens: TokensTypes.foundationTokenType => CardTypes.responsiveCardTokens =
  "getCardTokens"
@module("@juspay/blend-design-system")
external getChartTokens: TokensTypes.foundationTokenType => ChartsTypes.responsiveChartTokens =
  "getChartTokens"
@module("@juspay/blend-design-system")
external getChatInputTokens: TokensTypes.foundationTokenType => InputsV2SharedTypes.responsiveChatInputTokensType =
  "getChatInputTokens"
@module("@juspay/blend-design-system")
external getColumnTypeConfig: DataTableTypes.columnType => DataTableTypes.columnTypeConfig =
  "getColumnTypeConfig"
@module("@juspay/blend-design-system")
external getTableToken: TokensTypes.foundationTokenType => DataTableTypes.responsiveTableTokens =
  "getTableToken"
@module("@juspay/blend-design-system")
external getCalendarToken: TokensTypes.foundationTokenType => DateRangePickerTypes.responsiveCalendarTokens =
  "getCalendarToken"
@module("@juspay/blend-design-system")
external getDirectoryTokens: TokensTypes.foundationTokenType => DirectoryTypes.responsiveDirectoryTokens =
  "getDirectoryTokens"
@module("@juspay/blend-design-system")
external getTextInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveTextInputTokens =
  "getTextInputTokens"
@module("@juspay/blend-design-system")
external getNumberInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveNumberInputTokens =
  "getNumberInputTokens"
@module("@juspay/blend-design-system")
external getDropdownInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveDropdownInputTokens =
  "getDropdownInputTokens"
@module("@juspay/blend-design-system")
external getSearchInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveSearchInputTokens =
  "getSearchInputTokens"
@module("@juspay/blend-design-system")
external getOTPInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveOTPInputTokens =
  "getOTPInputTokens"
@module("@juspay/blend-design-system")
external getUnitInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveUnitInputTokens =
  "getUnitInputTokens"
@module("@juspay/blend-design-system")
external getMultiValueInputTokens: TokensTypes.foundationTokenType => InputsTypes.responsiveMultiValueInputTokens =
  "getMultiValueInputTokens"
@module("@juspay/blend-design-system")
external getKeyValuePairTokens: TokensTypes.foundationTokenType => KeyValuePairTypes.responsiveKeyValuePairTokens =
  "getKeyValuePairTokens"
@module("@juspay/blend-design-system")
external getMenuTokens: TokensTypes.foundationTokenType => MenuTypes.responsiveMenuTokensType =
  "getMenuTokens"
@module("@juspay/blend-design-system")
external getModalComponentTokens: TokensTypes.foundationTokenType => ModalTypes.responsiveModalTokens =
  "getModalComponentTokens"
@module("@juspay/blend-design-system")
external getMultiSelectTokens: TokensTypes.foundationTokenType => MultiSelectTypes.responsiveMultiSelectTokens =
  "getMultiSelectTokens"
@module("@juspay/blend-design-system")
external getPopoverTokens: TokensTypes.foundationTokenType => PopoverTypes.responsivePopoverTokens =
  "getPopoverTokens"
@module("@juspay/blend-design-system")
external getProgressBarTokens: TokensTypes.foundationTokenType => ProgressBarTypes.responsiveProgressBarTokens =
  "getProgressBarTokens"
// ⚪ loose: `useSkeletonBase` has a param/return widened to `string`.
@module("@juspay/blend-design-system")
external useSkeletonBase: (bool, ~children: React.element=?, unit) => string = "useSkeletonBase"
@module("@juspay/blend-design-system")
external getSkeletonState: bool => SkeletonTypes.skeletonValueConfig3 = "getSkeletonState"
@module("@juspay/blend-design-system")
external mergeSkeletonProps: ('a, ~skeletonProps: JSON.t=?, unit) => JSON.t = "mergeSkeletonProps"
// ⚪ loose: `getSkeletonDefaults` has a param/return widened to `string`.
@module("@juspay/blend-design-system")
external getSkeletonDefaults: ('a, Dict.t<string>) => 'a = "getSkeletonDefaults"
@module("@juspay/blend-design-system")
external getSkeletonTokens: TokensTypes.foundationTokenType => SkeletonTypes.responsiveSkeletonTokens =
  "getSkeletonTokens"
@module("@juspay/blend-design-system")
external getSingleSelectTokens: TokensTypes.foundationTokenType => SingleSelectTypes.responsiveSingleSelectTokens =
  "getSingleSelectTokens"
@module("@juspay/blend-design-system")
external getSliderTokenStyles: (
  SliderTypes.sliderVariant,
  SliderTypes.sliderSize,
) => SliderTypes.sliderTokenStyles = "getSliderTokenStyles"
@module("@juspay/blend-design-system")
external formatSliderValue: (
  float,
  ~format: SliderTypes.sliderValueFormatConfig=?,
  unit,
) => string = "formatSliderValue"
@module("@juspay/blend-design-system")
external parseSliderValue: (string, ~format: SliderTypes.sliderValueFormatConfig=?, unit) => float =
  "parseSliderValue"
@module("@juspay/blend-design-system")
external createSliderRange: (
  float,
  float,
  float,
  float,
  float,
  SliderTypes.sliderValueType,
  ~options: SliderTypes.sliderOptionsConfig=?,
  unit,
) => SliderTypes.sliderValueConfig = "createSliderRange"
@module("@juspay/blend-design-system")
external buildThumbAriaAttributes: SliderTypes.sliderOptionsConfig2 => Dict.t<string> =
  "buildThumbAriaAttributes"
@module("@juspay/blend-design-system")
external getSliderLabelStyles: (
  ~position: SliderTypes.position=?,
  unit,
) => SliderTypes.sliderCSSProperties = "getSliderLabelStyles"
@module("@juspay/blend-design-system")
external addSnackbar: SnackbarTypes.addToastOptions => CommonTypes.stringOrNumber = "addSnackbar"
@module("@juspay/blend-design-system")
external getSnackbarTokens: TokensTypes.foundationTokenType => SnackbarTypes.responsiveSnackbarTokens =
  "getSnackbarTokens"
@module("@juspay/blend-design-system")
external getStatCardToken: TokensTypes.foundationTokenType => StatCardTypes.responsiveStatCardTokens =
  "getStatCardToken"
@module("@juspay/blend-design-system")
external getStepperTokens: TokensTypes.foundationTokenType => StepperTypes.responsiveStepperTokens =
  "getStepperTokens"
@module("@juspay/blend-design-system")
external getTabsTokens: 'a => TabsTypes.responsiveTabsTokens = "getTabsTokens"
@module("@juspay/blend-design-system")
external getTagTokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => TagsTypes.responsiveTagTokens = "getTagTokens"
@module("@juspay/blend-design-system")
external getTooltipTokens: TokensTypes.foundationTokenType => TooltipTypes.responsiveTooltipTokens =
  "getTooltipTokens"
@module("@juspay/blend-design-system")
external getUploadTokens: TokensTypes.foundationTokenType => UploadTypes.responsiveUploadTokens =
  "getUploadTokens"
@module("@juspay/blend-design-system")
external useTheme: unit => InputsV2SharedTypes.themeContextType = "useTheme"
@module("@juspay/blend-design-system")
external useShadowRoot: unit => InputsV2SharedTypes.shadowRootContextType = "useShadowRoot"
@module("@juspay/blend-design-system")
external getStepperV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => StepperV2Types.responsiveStepperV2Tokens = "getStepperV2Tokens"
@module("@juspay/blend-design-system")
external getTopbarV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => TopbarV2Types.responsiveTopbarV2Tokens = "getTopbarV2Tokens"
@module("@juspay/blend-design-system")
external getMultiValueInputV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => InputsV2SharedTypes.responsiveMultiValueInputV2Tokens = "getMultiValueInputV2Tokens"
@module("@juspay/blend-design-system")
external getNumberInputV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => InputsV2SharedTypes.responsiveNumberInputV2Tokens = "getNumberInputV2Tokens"
@module("@juspay/blend-design-system")
external getOTPInputV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => InputsV2SharedTypes.responsiveOTPInputV2Tokens = "getOTPInputV2Tokens"
@module("@juspay/blend-design-system")
external getSearchInputV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => InputsV2SharedTypes.responsiveSearchInputV2Tokens = "getSearchInputV2Tokens"
@module("@juspay/blend-design-system")
external getChatInputV2Tokens: (
  TokensTypes.foundationTokenType,
  ~theme: string=?,
  unit,
) => InputsV2SharedTypes.responsiveChatInputV2TokensType = "getChatInputV2Tokens"
