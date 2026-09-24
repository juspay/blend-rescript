type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameMaxMinNameOnBlurOnChangeOnFocusSizeSlotStepStyleValue,
  value: Nullable.t<float>,
  unit?: string,
  min?: float,
  max?: float,
  step?: float,
  error?: HighchartsSharedSharedTypes.inputsV2ErrorConfig,
  size?: HighchartsSharedSharedTypes.inputSizeV2,
  label?: InputsV2Types.inputsV2LabelConfig2,
  unitDirection?: HighchartsSharedSharedTypes.numberInputV2Direction,
  helpIconText?: string,
  hintText?: string,
  name?: string,
  preventNegative?: bool,
  slot?: InputsV2Types.inputsV2SlotConfig2,
  onChange: ReactEvent.Form.t => unit,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "NumberInputV2"
