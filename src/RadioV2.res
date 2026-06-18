type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitCheckedChildrenClassNameMaxLengthRequiredSizeSlotStyle,
  checked?: bool,
  onCheckedChange?: ReactEvent.Form.t => unit,
  required?: bool,
  error?: bool,
  label?: string,
  subLabel?: string,
  size?: SelectorV2Types.selectorV2Size,
  slot?: SelectorV2Types.selectorV2SlotConfig2,
  maxLength?: SelectorV2Types.selectorV2MaxLengthConfig,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "RadioV2"
