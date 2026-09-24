type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitClassNameSlotStyle,
  ...SelectorV2Types.switchBaseProps,
  slot?: SelectorV2Types.selectorV2SlotConfig,
  maxLength?: SelectorV2Types.selectorV2MaxLengthConfig,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SwitchV2"
