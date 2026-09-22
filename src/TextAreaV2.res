type props = {
  ...HtmlAttrs.textareaHTMLAttributesOmitAutoFocusClassNameColsDisabledOnBlurOnChangeOnFocusPlaceholderRequiredRowsStyleValue,
  size?: HighchartsSharedSharedTypes.inputSizeV2,
  value: string,
  placeholder: string,
  disabled?: bool,
  autoFocus?: bool,
  rows?: int,
  label?: string,
  sublabel?: string,
  hintText?: string,
  helpIconText?: string,
  required?: bool,
  error?: HighchartsSharedSharedTypes.inputsV2ErrorConfig,
  resize?: InputsTypes.inputsResize,
  onChange: ReactEvent.Form.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  onBlur?: ReactEvent.Focus.t => unit,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TextAreaV2"
