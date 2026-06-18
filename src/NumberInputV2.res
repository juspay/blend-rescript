type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameMaxMinNameOnBlurOnChangeOnFocusSizeSlotStepStyleValue,
  slot?: InputsV2SharedTypes.inputsV2SlotConfig3,
  value: Nullable.t<float>,
  unit?: string,
  onChange: ReactEvent.Form.t => unit,
  min?: float,
  max?: float,
  step?: float,
  error?: InputsV2SharedTypes.inputsV2ErrorConfig,
  size?: InputsV2SharedTypes.inputSizeV2,
  label?: InputsV2SharedTypes.inputsV2LabelConfig3,
  unitDirection?: InputsV2SharedTypes.numberInputV2Direction,
  helpIconText?: string,
  hintText?: string,
  name?: string,
  preventNegative?: bool,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "NumberInputV2"
