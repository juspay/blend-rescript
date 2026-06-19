type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameSizeStyleValue,
  value: string,
  label?: string,
  subLabel?: string,
  size?: EditorSharedTypes.inputSizeV2,
  error?: EditorSharedTypes.inputsV2ErrorConfig,
  hintText?: string,
  helpIconText?: string,
  dropdown?: EditorSharedTypes.Dropdown.t, // ⓘ was `TextInputV2Dropdown | TextInputV2Dropdown[]` — opaque; build with Dropdown.fromTextInputV2Dropdown / Dropdown.fromTextInputV2Dropdowns
  leftSlot?: EditorSharedTypes.inputsV2LeftSlotConfig2,
  rightSlot?: EditorSharedTypes.inputsV2LeftSlotConfig2,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TextInputV2"
