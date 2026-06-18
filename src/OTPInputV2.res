type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitAutoFocusClassNameFormOnChangePlaceholderSizeStyleValue,
  label?: string,
  sublabel?: string,
  helpIconHintText?: string,
  error?: bool,
  errorMessage?: string,
  hintText?: string,
  value?: string,
  length?: float,
  autoFocus?: bool,
  onChange?: string => unit,
  form?: string,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "OTPInputV2"
