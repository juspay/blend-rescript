type props = {
  ...HtmlAttrs.textareaHTMLAttributesOmitClassNameColsDisabledIdOnBlurOnChangeOnFocusPlaceholderValue,
  disabled?: bool,
  value: string,
  onChange?: string => unit,
  topContent?: React.element,
  secondaryAction?: React.element,
  placeholder?: string,
  attachedFiles?: array<InputsV2SharedTypes.attachedFile>,
  handleAttachClick?: unit => unit,
  onFileRemove?: string => unit,
  onFileClick?: InputsV2SharedTypes.attachedFile => unit,
  onSecondaryActionClick?: unit => unit,
  id?: string,
  webTokens: InputsV2SharedTypes.chatInputV2TokensType,
  onEnter?: unit => unit,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MobileChatInputV2"
