type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameSizeStyleValue,
  value: string,
  label?: string,
  subLabel?: string,
  size?: InputsV2SharedTypes.inputSizeV2,
  error?: InputsV2SharedTypes.inputsV2ErrorConfig,
  hintText?: string,
  helpIconText?: string,
  // ⚠️ REVIEW: `dropdown` is `TextInputV2Dropdown | TextInputV2Dropdown[]` — couldn't be auto-typed exactly; emitted as `string` placeholder. Match the real type by hand.
  dropdown?: string,
  leftSlot?: InputsV2SharedTypes.inputsV2LeftSlotConfig,
  rightSlot?: InputsV2SharedTypes.inputsV2LeftSlotConfig,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TextInputV2"
