type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameSizeStyleValue,
  value: string,
  label?: string,
  subLabel?: string,
  size?: EditorSharedTypes.inputSizeV2,
  error?: EditorSharedTypes.inputsV2ErrorConfig,
  hintText?: string,
  helpIconText?: string,
  // ⚠️ REVIEW: `dropdown` is `TextInputV2Dropdown | TextInputV2Dropdown[]` — couldn't be auto-typed exactly; emitted as `string` placeholder. Match the real type by hand.
  dropdown?: string,
  leftSlot?: EditorSharedTypes.inputsV2LeftSlotConfig2,
  rightSlot?: EditorSharedTypes.inputsV2LeftSlotConfig2,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TextInputV2"
