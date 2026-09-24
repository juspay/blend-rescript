type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameDisabledOnBlurOnChangeOnFocusRequiredSizeStyleValue,
  error?: bool,
  value?: string,
  allowClear?: bool,
  onClear?: unit => unit,
  disabled?: bool,
  leftSlot?: React.element,
  rightSlot?: React.element,
  onChange?: ReactEvent.Form.t => unit,
  clearIcon?: React.element,
  onFocus?: ReactEvent.Focus.t => unit,
  onBlur?: ReactEvent.Focus.t => unit,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SearchInputV2"
