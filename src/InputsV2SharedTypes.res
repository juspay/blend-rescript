type inputSizeV2 =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type type_4 =
  | @as("text") Text
  | @as("other") Other
  | @as("image") Image
  | @as("pdf") Pdf
  | @as("csv") Csv
type numberInputV2Direction =
  | @as("left") Left
  | @as("right") Right
type inputsV2ErrorConfig = {
  show: bool,
  message?: string,
}
type inputsV2LeftSlotConfig = {
  slot: React.element,
  maxHeight?: string,
}
type topQuery = {
  id: string,
  text: string,
}
type attachedFile = {
  id: string,
  name: string,
  @as("type") type_: type_4,
  size?: float,
  url?: string,
  preview?: string,
}
type inputsV2BackgroundColorConfig = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type inputsV2OverflowMenuConfig = {
  gap: string,
  backgroundColor: inputsV2BackgroundColorConfig,
  borderRadius: string,
  padding: string,
  top: string,
  right: string,
  maxHeight: string,
}
type inputsV2AttachedFilesContainerConfig = {
  gap: string,
  overflowMenu: inputsV2OverflowMenuConfig,
}
type inputsV2TextConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type inputsV2TagContainerConfig = {
  gap: string,
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  backgroundColor: string,
  text: inputsV2TextConfig,
}
type inputsV2InputConfig = {
  color: string,
  placeholder: string,
  paddingTop: string,
  paddingRight: string,
  paddingLeft: string,
  minHeight: string,
  maxHeight: string,
}
type inputsV2ActionContainerConfig = {
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type inputsV2HeaderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
  textTransform: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  backgroundColor: string,
}
type inputsV2ItemConfig = {
  backgroundColor: inputsV2BackgroundColorConfig,
  color: inputsV2BackgroundColorConfig,
  fontSize: string,
  fontWeight: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  transition: string,
  cursor: string,
  opacity: inputsV2BackgroundColorConfig,
}
type inputsV2TopQueriesContainerConfig = {
  marginRight: string,
  marginLeft: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderTop: string,
  header: inputsV2HeaderConfig,
  item: inputsV2ItemConfig,
}
type inputsV2InputContainerConfig = {
  outline: inputsV2BackgroundColorConfig,
  boxShadow: inputsV2BackgroundColorConfig,
  gap: string,
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  backgroundColor: string,
  input: inputsV2InputConfig,
  actionContainer: inputsV2ActionContainerConfig,
  topQueriesContainer: inputsV2TopQueriesContainerConfig,
}
type inputsV2ContainerConfig = {
  backgroundColor: inputsV2BackgroundColorConfig,
  borderRadius: string,
  border: inputsV2BackgroundColorConfig,
  gap: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  attachedFilesContainer: inputsV2AttachedFilesContainerConfig,
  tagContainer: inputsV2TagContainerConfig,
  inputContainer: inputsV2InputContainerConfig,
}
type chatInputV2TokensType = {
  container: inputsV2ContainerConfig,
}
type inputsV2FontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type inputsV2LabelConfig = {
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
  color: inputsV2BackgroundColorConfig,
}
type inputsV2RequiredConfig = {
  color: string,
}
type inputsV2HelpIconConfig = {
  width: inputsV2FontSizeConfig,
  color: inputsV2BackgroundColorConfig,
}
type inputsV2TopContainerConfig = {
  label: inputsV2LabelConfig,
  subLabel: inputsV2LabelConfig,
  required: inputsV2RequiredConfig,
  helpIcon: inputsV2HelpIconConfig,
}
type inputsV2PlaceholderConfig = {
  color: inputsV2BackgroundColorConfig,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
}
type inputsV2PaddingConfig = {
  top: inputsV2FontSizeConfig,
  right: inputsV2FontSizeConfig,
  bottom: inputsV2FontSizeConfig,
  left: inputsV2FontSizeConfig,
}
type inputsV2InputContainerConfig2 = {
  gap: string,
  placeholder: inputsV2PlaceholderConfig,
  inputText: inputsV2LabelConfig,
  borderRadius: inputsV2FontSizeConfig,
  boxShadow: string,
  padding: inputsV2PaddingConfig,
  border: inputsV2BackgroundColorConfig,
  backgroundColor: inputsV2BackgroundColorConfig,
}
type inputsV2ErrorMessageConfig = {
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
  color: string,
}
type inputsV2BottomContainerConfig = {
  hintText: inputsV2LabelConfig,
  errorMessage: inputsV2ErrorMessageConfig,
}
type textInputV2TokensType = {
  gap: string,
  topContainer: inputsV2TopContainerConfig,
  inputContainer: inputsV2InputContainerConfig2,
  bottomContainer: inputsV2BottomContainerConfig,
}
type responsiveTextInputV2Tokens = {
  sm: textInputV2TokensType,
  lg: textInputV2TokensType,
}
type attachedFile2 = {
  id: string,
  name: string,
  @as("type") type_: type_4,
  size?: float,
  url?: string,
  preview?: string,
}
type topQuery2 = {
  id: string,
  text: string,
}
type chatInputBackgroundColorConfig = {
  default: string,
  hover: string,
  disabled: string,
}
type chatInputBorderRadiusConfig = {
  default: string,
  focus: string,
}
type chatInputColorConfig = {
  default: string,
  hover: string,
  focus: string,
  disabled: string,
}
type chatInputLineHeightConfig = {
  default: string,
  hover: string,
  focus: string,
}
type chatInputTextConfig = {
  color: chatInputColorConfig,
  fontSize: chatInputColorConfig,
  fontWeight: chatInputColorConfig,
  lineHeight: chatInputLineHeightConfig,
}
type chatInputContainerConfig = {
  backgroundColor: chatInputBackgroundColorConfig,
  border: chatInputBorderRadiusConfig,
  borderRadius: string,
  padding: string,
  gap: string,
  minHeight: string,
  transition: string,
  boxShadow: chatInputLineHeightConfig,
}
type chatInputAttachmentContainerConfig = {
  backgroundColor: string,
  borderRadius: string,
  padding: string,
}
type chatInputPlaceholderConfig = {
  color: string,
}
type chatInputTextareaConfig = {
  backgroundColor: string,
  color: string,
  fontSize: string,
  lineHeight: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  borderRadius: string,
  placeholder: chatInputPlaceholderConfig,
  resize: string,
  fontFamily: string,
  minHeight: string,
  maxHeight: string,
  overflowY: string,
}
type chatInputFilesContainerConfig = {
  gap: string,
  paddingX: string,
  paddingY: string,
  maxHeight: string,
  overflowY: string,
  margin: string,
}
type chatInputBottomActionsConfig = {
  paddingX: string,
  paddingY: string,
  gap: string,
  justifyContent: string,
}
type chatInputBackgroundColorConfig2 = {
  default: string,
  hover: string,
  active: string,
}
type chatInputOverflowTagConfig = {
  backgroundColor: chatInputBackgroundColorConfig2,
  color: chatInputBackgroundColorConfig2,
  border: string,
  borderRadius: string,
  paddingX: string,
  paddingY: string,
  fontSize: string,
  fontWeight: string,
  gap: string,
  transition: string,
  cursor: string,
}
type chatInputContainerConfig2 = {
  borderTop: string,
  paddingTop: string,
}
type chatInputHeaderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
  paddingX: string,
  paddingY: string,
  textTransform: string,
  backgroundColor: string,
  flexShrink: string,
}
type chatInputScrollContainerConfig = {
  overflowY: string,
  maxHeightOffset: float,
  backgroundColor: string,
  scrollbarColor: string,
}
type chatInputBackgroundColorConfig3 = {
  default: string,
  hover: string,
  active: string,
  disabled: string,
}
type chatInputOpacityConfig = {
  default: string,
  disabled: string,
}
type chatInputItemConfig = {
  backgroundColor: chatInputBackgroundColorConfig3,
  color: chatInputBackgroundColorConfig3,
  fontSize: string,
  fontWeight: string,
  paddingX: string,
  paddingY: string,
  border: string,
  transition: string,
  cursor: string,
  opacity: chatInputOpacityConfig,
}
type chatInputTopQueriesConfig = {
  container: chatInputContainerConfig2,
  header: chatInputHeaderConfig,
  scrollContainer: chatInputScrollContainerConfig,
  item: chatInputItemConfig,
}
type chatInputSmConfig = {
  backgroundColor: chatInputBackgroundColorConfig,
  borderRadius: chatInputBorderRadiusConfig,
  border: chatInputBorderRadiusConfig,
  minHeight: string,
  maxHeight: string,
  gap: string,
  text: chatInputTextConfig,
  resize: string,
  overflow: string,
  paddingLeft: string,
  paddingTop: string,
  paddingBottom: string,
  container: chatInputContainerConfig,
  attachmentContainer: chatInputAttachmentContainerConfig,
  textarea: chatInputTextareaConfig,
  filesContainer: chatInputFilesContainerConfig,
  bottomActions: chatInputBottomActionsConfig,
  overflowTag: chatInputOverflowTagConfig,
  topQueries: chatInputTopQueriesConfig,
}
type responsiveChatInputTokensType = {
  sm: chatInputSmConfig,
  lg: chatInputSmConfig,
}
type inputsV2PlaceholderConfig2 = {
  transition: string,
  color: inputsV2BackgroundColorConfig,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
}
type inputsV2InputContainerConfig3 = {
  gap: string,
  placeholder: inputsV2PlaceholderConfig2,
  lineHeight: inputsV2FontSizeConfig,
  fontSize: string,
  fontWeight: string,
  padding: inputsV2PaddingConfig,
  borderRadius: string,
  boxShadow: string,
  border: inputsV2BackgroundColorConfig,
  color: inputsV2BackgroundColorConfig,
  backgroundColor: inputsV2BackgroundColorConfig,
}
type textAreaV2TokensType = {
  gap: string,
  topContainer: inputsV2TopContainerConfig,
  inputContainer: inputsV2InputContainerConfig3,
  bottomContainer: inputsV2BottomContainerConfig,
}
type responsiveTextAreaV2Tokens = {
  sm: textAreaV2TokensType,
  lg: textAreaV2TokensType,
}
type responsiveChatInputV2TokensType = {
  sm: chatInputV2TokensType,
  lg: chatInputV2TokensType,
}
type inputsV2PlaceholderColorConfig = {
  default: string,
  focus: string,
  hover: string,
  error: string,
  disabled: string,
}
type inputsV2CloseButtonConfig = {
  width: string,
}
type inputsV2LeftSlotConfig2 = {
  width: string,
  height: string,
}
type inputsV2SlotAlignTopConfig = {
  withTags: string,
  withoutTags: string,
}
type inputsV2InputContainerConfig4 = {
  offSet: float,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  gap: string,
  borderRadius?: string,
  boxShadow: inputsV2BackgroundColorConfig,
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  border: inputsV2BackgroundColorConfig,
  color: inputsV2BackgroundColorConfig,
  placeholderColor: inputsV2PlaceholderColorConfig,
  backgroundColor: inputsV2BackgroundColorConfig,
  closeButton: inputsV2CloseButtonConfig,
  leftSlot: inputsV2LeftSlotConfig2,
  rightSlot: inputsV2LeftSlotConfig2,
  slotAlignTop: inputsV2SlotAlignTopConfig,
}
type multiValueInputV2TokensType = {
  gap: string,
  borderRadius: string,
  topContainer: inputsV2TopContainerConfig,
  inputContainer: inputsV2InputContainerConfig4,
  bottomContainer: inputsV2BottomContainerConfig,
}
type responsiveMultiValueInputV2Tokens = {
  sm: multiValueInputV2TokensType,
  lg: multiValueInputV2TokensType,
}
type inputsV2ColorConfig = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type inputsV2WidthConfig = {
  sm: string,
  md: string,
  lg: string,
}
type inputsV2IconConfig = {
  color: inputsV2ColorConfig,
  width: inputsV2WidthConfig,
}
type inputsV2StepperButtonConfig = {
  width: inputsV2FontSizeConfig,
  backgroundColor: inputsV2BackgroundColorConfig,
  icon: inputsV2IconConfig,
}
type inputsV2LeftConfig = {
  width: inputsV2WidthConfig,
  height: inputsV2WidthConfig,
  margin: inputsV2WidthConfig,
}
type inputsV2SlotConfig = {
  left: inputsV2LeftConfig,
  right: inputsV2LeftConfig,
}
type inputsV2InputContainerConfig5 = {
  placeholder: inputsV2PlaceholderConfig,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  color: inputsV2BackgroundColorConfig,
  borderRadius: inputsV2FontSizeConfig,
  boxShadow: string,
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  border: inputsV2BackgroundColorConfig,
  lineHeight: inputsV2FontSizeConfig,
  backgroundColor: inputsV2BackgroundColorConfig,
  stepperButton: inputsV2StepperButtonConfig,
  slot: inputsV2SlotConfig,
}
type inputsV2UnitConfig = {
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  borderRadius: inputsV2FontSizeConfig,
  border: inputsV2BackgroundColorConfig,
  color: inputsV2BackgroundColorConfig,
}
type floatingLabelsV2Tokens = {
  placeholder: inputsV2PlaceholderConfig,
  required: inputsV2RequiredConfig,
}
type numberInputV2TokensType = {
  gap: string,
  topContainer: inputsV2TopContainerConfig,
  inputContainer: inputsV2InputContainerConfig5,
  unit: inputsV2UnitConfig,
  floatingLabels: floatingLabelsV2Tokens,
  bottomContainer: inputsV2BottomContainerConfig,
}
type responsiveNumberInputV2Tokens = {
  sm: numberInputV2TokensType,
  lg: numberInputV2TokensType,
}
type inputsV2InputConfig2 = {
  height: string,
  width: string,
  fontSize: string,
  fontWeight: string,
  color: inputsV2BackgroundColorConfig,
  borderRadius: string,
  border: inputsV2BackgroundColorConfig,
  backgroundColor: inputsV2BackgroundColorConfig,
}
type inputsV2InputContainerConfig6 = {
  gap: string,
  input: inputsV2InputConfig2,
}
type otpInputV2TokensType = {
  gap: string,
  topContainer: inputsV2TopContainerConfig,
  inputContainer: inputsV2InputContainerConfig6,
  bottomContainer: inputsV2BottomContainerConfig,
}
type responsiveOTPInputV2Tokens = {
  sm: otpInputV2TokensType,
  lg: otpInputV2TokensType,
}
type inputsV2LabelConfig2 = {
  fontSize: string,
  fontWeight: string,
  color: inputsV2BackgroundColorConfig,
}
type inputsV2ErrorMessageConfig2 = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type inputsV2LeftConfig2 = {
  top: string,
  left: string,
  bottom: string,
}
type inputsV2RightConfig = {
  top: string,
  right: string,
  bottom: string,
}
type inputsV2SlotConfig2 = {
  left: inputsV2LeftConfig2,
  right: inputsV2RightConfig,
  transition: string,
  transform: string,
  color: inputsV2BackgroundColorConfig,
}
type inputsV2InputContainerConfig7 = {
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  borderRadius: string,
  borderBottom: inputsV2BackgroundColorConfig,
  outline: string,
  boxShadow: string,
  color: inputsV2BackgroundColorConfig,
  placeholderColor: inputsV2BackgroundColorConfig,
  fontSize: string,
  fontWeight: string,
  slot: inputsV2SlotConfig2,
}
type inputsV2IconConfig2 = {
  color: inputsV2BackgroundColorConfig,
  width: string,
}
type searchInputV2TokensType = {
  gap: string,
  label: inputsV2LabelConfig2,
  subLabel: inputsV2LabelConfig2,
  hintText: inputsV2LabelConfig2,
  errorMessage: inputsV2ErrorMessageConfig2,
  required: inputsV2RequiredConfig,
  inputContainer: inputsV2InputContainerConfig7,
  icon: inputsV2IconConfig2,
}
type responsiveSearchInputV2Tokens = {
  sm: searchInputV2TokensType,
  lg: searchInputV2TokensType,
}
type inputsV2AttachmentButtonDimensionsConfig = {
  width: string,
  height: string,
  border: string,
  borderRadius: string,
  backgroundColor: inputsV2BackgroundColorConfig,
  color: string,
}
type contextInputContainerConfig = {
  border: inputsV2BackgroundColorConfig,
  borderRadius: inputsV2BackgroundColorConfig,
  boxShadow: inputsV2BackgroundColorConfig,
  paddingLeft: string,
  paddingTop: string,
  paddingBottom: string,
  lineHeight: string,
  fontSize: string,
  fontWeight: string,
  color: string,
  placeholder: inputsV2RequiredConfig,
  backgroundColor: string,
  width: string,
  height: string,
  minHeight: string,
  maxHeight: string,
  minWidth: string,
  maxWidth: string,
}
type inputsV2SecondaryActionConfig = {
  width: string,
  height: string,
  borderRadius: string,
  right: string,
  bottom: string,
  backgroundColor: inputsV2BackgroundColorConfig,
  color: string,
}
type chatInputV2MobileTokensType = {
  gap: string,
  attachmentButtonDimensions: inputsV2AttachmentButtonDimensionsConfig,
  inputContainer: contextInputContainerConfig,
  secondaryAction: inputsV2SecondaryActionConfig,
}
type componentTokenType = {
  @as("TAGS") tAGS?: TagsTypes.responsiveTagTokens,
  @as("SEARCH_INPUT") sEARCH_INPUT?: InputsTypes.responsiveSearchInputTokens,
  @as("TEXT_AREA") tEXT_AREA?: InputsTypes.responsiveTextAreaTokens,
  @as("TEXT_AREA_V2") tEXT_AREA_V2?: responsiveTextAreaV2Tokens,
  @as("RADIO") rADIO?: RadioTypes.responsiveRadioTokens,
  @as("SWITCH") sWITCH?: SwitchTypes.responsiveSwitchTokens,
  @as("TEXT_INPUT") tEXT_INPUT?: InputsTypes.responsiveTextInputTokens,
  @as("NUMBER_INPUT") nUMBER_INPUT?: InputsTypes.responsiveNumberInputTokens,
  @as("ALERT") aLERT?: AlertTypes.responsiveAlertTokens,
  @as("OTP_INPUT") oTP_INPUT?: InputsTypes.responsiveOTPInputTokens,
  @as("TOOLTIP") tOOLTIP?: TooltipTypes.responsiveTooltipTokens,
  @as("UNIT_INPUT") uNIT_INPUT?: InputsTypes.responsiveUnitInputTokens,
  @as("MULTI_VALUE_INPUT") mULTI_VALUE_INPUT?: InputsTypes.responsiveMultiValueInputTokens,
  @as("DROPDOWN_INPUT") dROPDOWN_INPUT?: InputsTypes.responsiveDropdownInputTokens,
  @as("CHECKBOX") cHECKBOX?: CheckboxTypes.responsiveCheckboxTokens,
  @as("TABS") tABS?: TabsTypes.responsiveTabsTokens,
  @as("BUTTON") bUTTON?: ButtonTypes.responsiveButtonTokens,
  @as("MODAL") mODAL?: ModalTypes.responsiveModalTokens,
  @as("BREADCRUMB") bREADCRUMB?: BreadcrumbTypes.responsiveBreadcrumbTokens,
  @as("POPOVER") pOPOVER?: PopoverTypes.responsivePopoverTokens,
  @as("MENU") mENU?: MenuTypes.responsiveMenuTokensType,
  @as("MENU_V2") mENU_V2?: MenuV2Types.responsiveMenuV2TokensType,
  @as("MULTI_SELECT") mULTI_SELECT?: MultiSelectTypes.responsiveMultiSelectTokens,
  @as("SINGLE_SELECT") sINGLE_SELECT?: SingleSelectTypes.responsiveSingleSelectTokens,
  @as("TABLE") tABLE?: DataTableTypes.responsiveTableTokens,
  @as("CALENDAR") cALENDAR?: DateRangePickerTypes.responsiveCalendarTokens,
  @as("ACCORDION") aCCORDION?: AccordionTypes.responsiveAccordionTokens,
  @as("STAT_CARD") sTAT_CARD?: StatCardTypes.responsiveStatCardTokens,
  @as("PROGRESS_BAR") pROGRESS_BAR?: ProgressBarTypes.responsiveProgressBarTokens,
  @as("DRAWER") dRAWER?: DrawerTypes.responsiveDrawerTokens,
  @as("CHARTS") cHARTS?: ChartsTypes.responsiveChartTokens,
  @as("SNACKBAR") sNACKBAR?: SnackbarTypes.responsiveSnackbarTokens,
  @as("STEPPER") sTEPPER?: StepperTypes.responsiveStepperTokens,
  @as("KEYVALUEPAIR") kEYVALUEPAIR?: KeyValuePairTypes.responsiveKeyValuePairTokens,
  @as("CARD") cARD?: CardTypes.responsiveCardTokens,
  @as("SKELETON") sKELETON?: SkeletonTypes.responsiveSkeletonTokens,
  @as("TOPBAR") tOPBAR?: TopbarTypes.responsiveTopbarTokens,
  @as("TOPBARV2") tOPBARV2?: TopbarV2Types.responsiveTopbarV2Tokens,
  @as("AVATAR") aVATAR?: AvatarTypes.responsiveAvatarTokens,
  @as("AVATAR_GROUP") aVATAR_GROUP?: AvatarGroupTypes.responsiveAvatarGroupTokens,
  @as("SIDEBAR") sIDEBAR?: SidebarTypes.responsiveSidebarTokens,
  @as("DIRECTORY") dIRECTORY?: DirectoryTypes.responsiveDirectoryTokens,
  @as("MOBILE_NAVIGATION") mOBILE_NAVIGATION?: SidebarTypes.responsiveMobileNavigationTokens,
  @as("MOBILE_NAVIGATION_V2")
  mOBILE_NAVIGATION_V2?: SidebarV2Types.responsiveMobileNavigationV2Tokens,
  @as("UPLOAD") uPLOAD?: UploadTypes.responsiveUploadTokens,
  @as("CODE_BLOCK") cODE_BLOCK?: CodeBlockTypes.responsiveCodeBlockTokens,
  @as("CHAT_INPUT") cHAT_INPUT?: responsiveChatInputTokensType,
  @as("CHAT_INPUTV2") cHAT_INPUTV2?: responsiveChatInputV2TokensType,
  @as("TIMELINE") tIMELINE?: TimelineTypes.responsiveTimelineTokens,
  @as("BUTTONV2") bUTTONV2?: ButtonV2Types.responsiveButtonV2Tokens,
  @as("TAGV2") tAGV2?: TagV2Types.responsiveTagV2Tokens,
  @as("ALERTV2") aLERTV2?: AlertV2Types.responsiveAlertV2Tokens,
  @as("ACCORDIONV2") aCCORDIONV2?: AccordionV2Types.responsiveAccordionV2Tokens,
  @as("SNACKBARV2") sNACKBARV2?: SnackbarV2Types.responsiveSnackbarV2Tokens,
  @as("SWITCHV2") sWITCHV2?: SelectorV2Types.responsiveSwitchV2Tokens,
  @as("SINGLE_SELECT_V2") sINGLE_SELECT_V2?: SingleSelectV2Types.responsiveSingleSelectV2Tokens,
  @as("MULTI_SELECT_V2") mULTI_SELECT_V2?: MultiSelectV2Types.responsiveMultiSelectV2Tokens,
  @as("AVATARV2") aVATARV2?: AvatarV2Types.responsiveAvatarV2Tokens,
  @as("TEXT_INPUTV2") tEXT_INPUTV2?: responsiveTextInputV2Tokens,
  @as("CHARTSV2") cHARTSV2?: ChartsV2Types.responsiveChartV2Tokens,
  @as("CHECKBOXV2") cHECKBOXV2?: SelectorV2Types.responsiveCheckboxV2Tokens,
  @as("KEYVALUEPAIRV2") kEYVALUEPAIRV2?: KeyValuePairV2Types.responsiveKeyValuePairV2Tokens,
  @as("STATCARDV2") sTATCARDV2?: StatCardV2Types.responsiveStatCardV2Tokens,
  @as("TOOLTIPV2") tOOLTIPV2?: TooltipV2Types.responsiveTooltipV2Tokens,
  @as("RADIOV2") rADIOV2?: SelectorV2Types.responsiveRadioV2Tokens,
  @as("POPOVERV2") pOPOVERV2?: PopoverV2Types.responsivePopoverV2Tokens,
  @as("SIDEBARV2") sIDEBARV2?: SidebarV2Types.responsiveSidebarV2Tokens,
  @as("TABSV2") tABSV2?: TabsV2Types.responsiveTabsV2Tokens,
  @as("BREADCRUMBV2") bREADCRUMBV2?: BreadcrumbV2Types.responsiveBreadcrumbV2Tokens,
  @as("CODEEDITORV2") cODEEDITORV2?: CodeEditorV2Types.responsiveCodeEditorV2Tokens,
  @as("PROGRESS_BARV2") pROGRESS_BARV2?: ProgressBarV2Types.responsiveProgressBarV2Tokens,
  @as("MULTI_VALUE_INPUT_V2") mULTI_VALUE_INPUT_V2?: responsiveMultiValueInputV2Tokens,
  @as("NUMBER_INPUT_V2") nUMBER_INPUT_V2?: responsiveNumberInputV2Tokens,
  @as("OTP_INPUTV2") oTP_INPUTV2?: responsiveOTPInputV2Tokens,
  @as("BADGE") bADGE?: BadgeTypes.responsiveBadgeTokens,
  @as("SEARCH_INPUT_V2") sEARCH_INPUT_V2?: responsiveSearchInputV2Tokens,
  @as("CHAT_INPUTV2_MOBILE") cHAT_INPUTV2_MOBILE?: chatInputV2MobileTokensType,
  @as("STEPPERV2") sTEPPERV2?: StepperV2Types.responsiveStepperV2Tokens,
}
type contextComponentTokensConfig = {
  @as("TAGS") tAGS: TagsTypes.responsiveTagTokens,
  @as("SEARCH_INPUT") sEARCH_INPUT: InputsTypes.responsiveSearchInputTokens,
  @as("TEXT_AREA") tEXT_AREA: InputsTypes.responsiveTextAreaTokens,
  @as("TEXT_AREA_V2") tEXT_AREA_V2: responsiveTextAreaV2Tokens,
  @as("RADIO") rADIO: RadioTypes.responsiveRadioTokens,
  @as("SWITCH") sWITCH: SwitchTypes.responsiveSwitchTokens,
  @as("TEXT_INPUT") tEXT_INPUT: InputsTypes.responsiveTextInputTokens,
  @as("NUMBER_INPUT") nUMBER_INPUT: InputsTypes.responsiveNumberInputTokens,
  @as("ALERT") aLERT: AlertTypes.responsiveAlertTokens,
  @as("OTP_INPUT") oTP_INPUT: InputsTypes.responsiveOTPInputTokens,
  @as("TOOLTIP") tOOLTIP: TooltipTypes.responsiveTooltipTokens,
  @as("UNIT_INPUT") uNIT_INPUT: InputsTypes.responsiveUnitInputTokens,
  @as("MULTI_VALUE_INPUT") mULTI_VALUE_INPUT: InputsTypes.responsiveMultiValueInputTokens,
  @as("DROPDOWN_INPUT") dROPDOWN_INPUT: InputsTypes.responsiveDropdownInputTokens,
  @as("CHECKBOX") cHECKBOX: CheckboxTypes.responsiveCheckboxTokens,
  @as("TABS") tABS: TabsTypes.responsiveTabsTokens,
  @as("BUTTON") bUTTON: ButtonTypes.responsiveButtonTokens,
  @as("MODAL") mODAL: ModalTypes.responsiveModalTokens,
  @as("BREADCRUMB") bREADCRUMB: BreadcrumbTypes.responsiveBreadcrumbTokens,
  @as("POPOVER") pOPOVER: PopoverTypes.responsivePopoverTokens,
  @as("MENU") mENU: MenuTypes.responsiveMenuTokensType,
  @as("MENU_V2") mENU_V2: MenuV2Types.responsiveMenuV2TokensType,
  @as("MULTI_SELECT") mULTI_SELECT: MultiSelectTypes.responsiveMultiSelectTokens,
  @as("SINGLE_SELECT") sINGLE_SELECT: SingleSelectTypes.responsiveSingleSelectTokens,
  @as("TABLE") tABLE: DataTableTypes.responsiveTableTokens,
  @as("CALENDAR") cALENDAR: DateRangePickerTypes.responsiveCalendarTokens,
  @as("ACCORDION") aCCORDION: AccordionTypes.responsiveAccordionTokens,
  @as("STAT_CARD") sTAT_CARD: StatCardTypes.responsiveStatCardTokens,
  @as("PROGRESS_BAR") pROGRESS_BAR: ProgressBarTypes.responsiveProgressBarTokens,
  @as("DRAWER") dRAWER: DrawerTypes.responsiveDrawerTokens,
  @as("CHARTS") cHARTS: ChartsTypes.responsiveChartTokens,
  @as("SNACKBAR") sNACKBAR: SnackbarTypes.responsiveSnackbarTokens,
  @as("STEPPER") sTEPPER: StepperTypes.responsiveStepperTokens,
  @as("KEYVALUEPAIR") kEYVALUEPAIR: KeyValuePairTypes.responsiveKeyValuePairTokens,
  @as("CARD") cARD: CardTypes.responsiveCardTokens,
  @as("SKELETON") sKELETON: SkeletonTypes.responsiveSkeletonTokens,
  @as("TOPBAR") tOPBAR: TopbarTypes.responsiveTopbarTokens,
  @as("TOPBARV2") tOPBARV2: TopbarV2Types.responsiveTopbarV2Tokens,
  @as("AVATAR") aVATAR: AvatarTypes.responsiveAvatarTokens,
  @as("AVATAR_GROUP") aVATAR_GROUP: AvatarGroupTypes.responsiveAvatarGroupTokens,
  @as("SIDEBAR") sIDEBAR: SidebarTypes.responsiveSidebarTokens,
  @as("DIRECTORY") dIRECTORY: DirectoryTypes.responsiveDirectoryTokens,
  @as("MOBILE_NAVIGATION") mOBILE_NAVIGATION: SidebarTypes.responsiveMobileNavigationTokens,
  @as("MOBILE_NAVIGATION_V2")
  mOBILE_NAVIGATION_V2: SidebarV2Types.responsiveMobileNavigationV2Tokens,
  @as("UPLOAD") uPLOAD: UploadTypes.responsiveUploadTokens,
  @as("CODE_BLOCK") cODE_BLOCK: CodeBlockTypes.responsiveCodeBlockTokens,
  @as("CHAT_INPUT") cHAT_INPUT: responsiveChatInputTokensType,
  @as("CHAT_INPUTV2") cHAT_INPUTV2: responsiveChatInputV2TokensType,
  @as("TIMELINE") tIMELINE: TimelineTypes.responsiveTimelineTokens,
  @as("BUTTONV2") bUTTONV2: ButtonV2Types.responsiveButtonV2Tokens,
  @as("TAGV2") tAGV2: TagV2Types.responsiveTagV2Tokens,
  @as("ALERTV2") aLERTV2: AlertV2Types.responsiveAlertV2Tokens,
  @as("ACCORDIONV2") aCCORDIONV2: AccordionV2Types.responsiveAccordionV2Tokens,
  @as("SNACKBARV2") sNACKBARV2: SnackbarV2Types.responsiveSnackbarV2Tokens,
  @as("SWITCHV2") sWITCHV2: SelectorV2Types.responsiveSwitchV2Tokens,
  @as("SINGLE_SELECT_V2") sINGLE_SELECT_V2: SingleSelectV2Types.responsiveSingleSelectV2Tokens,
  @as("MULTI_SELECT_V2") mULTI_SELECT_V2: MultiSelectV2Types.responsiveMultiSelectV2Tokens,
  @as("AVATARV2") aVATARV2: AvatarV2Types.responsiveAvatarV2Tokens,
  @as("TEXT_INPUTV2") tEXT_INPUTV2: responsiveTextInputV2Tokens,
  @as("CHARTSV2") cHARTSV2: ChartsV2Types.responsiveChartV2Tokens,
  @as("CHECKBOXV2") cHECKBOXV2: SelectorV2Types.responsiveCheckboxV2Tokens,
  @as("KEYVALUEPAIRV2") kEYVALUEPAIRV2: KeyValuePairV2Types.responsiveKeyValuePairV2Tokens,
  @as("STATCARDV2") sTATCARDV2: StatCardV2Types.responsiveStatCardV2Tokens,
  @as("TOOLTIPV2") tOOLTIPV2: TooltipV2Types.responsiveTooltipV2Tokens,
  @as("RADIOV2") rADIOV2: SelectorV2Types.responsiveRadioV2Tokens,
  @as("POPOVERV2") pOPOVERV2: PopoverV2Types.responsivePopoverV2Tokens,
  @as("SIDEBARV2") sIDEBARV2: SidebarV2Types.responsiveSidebarV2Tokens,
  @as("TABSV2") tABSV2: TabsV2Types.responsiveTabsV2Tokens,
  @as("BREADCRUMBV2") bREADCRUMBV2: BreadcrumbV2Types.responsiveBreadcrumbV2Tokens,
  @as("CODEEDITORV2") cODEEDITORV2: CodeEditorV2Types.responsiveCodeEditorV2Tokens,
  @as("PROGRESS_BARV2") pROGRESS_BARV2: ProgressBarV2Types.responsiveProgressBarV2Tokens,
  @as("MULTI_VALUE_INPUT_V2") mULTI_VALUE_INPUT_V2: responsiveMultiValueInputV2Tokens,
  @as("NUMBER_INPUT_V2") nUMBER_INPUT_V2: responsiveNumberInputV2Tokens,
  @as("OTP_INPUTV2") oTP_INPUTV2: responsiveOTPInputV2Tokens,
  @as("BADGE") bADGE: BadgeTypes.responsiveBadgeTokens,
  @as("SEARCH_INPUT_V2") sEARCH_INPUT_V2: responsiveSearchInputV2Tokens,
  @as("CHAT_INPUTV2_MOBILE") cHAT_INPUTV2_MOBILE: chatInputV2MobileTokensType,
  @as("STEPPERV2") sTEPPERV2: StepperV2Types.responsiveStepperV2Tokens,
}
type themeContextType = {
  foundationTokens: string,
  componentTokens: contextComponentTokensConfig,
  breakpoints: BreakpointsTypes.breakpointType,
  theme: string,
}
type shadowRootContextType = {
  shadowRoot: Nullable.t<Dom.shadowRoot>,
  target: Nullable.t<Dom.element>,
}
type inputsV2TagsConfig = {
  value: array<string>,
  size: TagsTypes.tagSize,
  shape: TagsTypes.tagShape,
  variant: TagsTypes.tagVariant,
}
type inputsV2SlotConfig3 = {
  left?: React.element,
  right?: React.element,
}
type inputsV2LabelConfig3 = {
  text: string,
  subtext?: string,
}
