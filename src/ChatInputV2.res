type props = {
  ...HtmlAttrs.textareaHTMLAttributesOmitClassNameColsDisabledOnBlurOnChangeOnFocusPlaceholderStyleValue,
  value?: string,
  topQueries?: array<InputsV2SharedTypes.topQuery>,
  onTopQuerySelect?: InputsV2SharedTypes.topQuery => unit,
  placeholder?: string,
  onChange: string => unit,
  topContent?: React.element,
  secondaryAction?: React.element,
  onSecondaryActionClick?: unit => unit,
  topQueriesMaxHeight?: float,
  textareaMaxHeight?: float,
  disabled?: bool,
  attachedFiles?: array<InputsV2SharedTypes.attachedFile>,
  onAttachFiles?: array<Webapi.File.t> => unit,
  onFileRemove?: string => unit,
  onFileClick?: InputsV2SharedTypes.attachedFile => unit,
  onEnter?: unit => unit,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "ChatInputV2"
