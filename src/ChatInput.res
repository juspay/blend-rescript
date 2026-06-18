type props = {
  ...HtmlAttrs.textareaHTMLAttributesOmitDisabledMaxLengthOnChangePlaceholderValue,
  disabled?: bool,
  maxLength?: int,
  placeholder?: string,
  value?: string,
  slot1?: React.element,
  slot2?: React.element,
  onChange?: string => unit,
  onSend?: (string, array<InputsV2SharedTypes.attachedFile2>) => unit,
  onAttachFiles?: array<Webapi.File.t> => unit,
  onVoiceRecord?: unit => unit,
  onFileRemove?: string => unit,
  onFileClick?: InputsV2SharedTypes.attachedFile2 => unit,
  autoResize?: bool,
  attachedFiles?: array<InputsV2SharedTypes.attachedFile2>,
  topQueries?: array<InputsV2SharedTypes.topQuery2>,
  onTopQuerySelect?: InputsV2SharedTypes.topQuery2 => unit,
  topQueriesMaxHeight?: float,
  attachButtonIcon?: React.element,
  voiceButtonIcon?: React.element,
  sendButtonIcon?: React.element,
  overflowMenuProps?: MenuTypes.menuOverflowMenuPropsConfig,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "ChatInput"
