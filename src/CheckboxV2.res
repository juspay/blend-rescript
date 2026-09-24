type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitClassNameOnChangeSlotStyle,
  ...SelectorV2Types.checkboxBaseProps,
  slot?: SelectorV2Types.selectorV2SlotConfig,
  maxLength?: SelectorV2Types.selectorV2MaxLengthConfig,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "CheckboxV2"
