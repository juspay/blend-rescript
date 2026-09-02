type props = {
  ...HtmlAttrs.inputHTMLAttributesOmitClassNameMaxMinNameOnBlurOnChangeOnFocusSizeSlotStepStyleValue,
  slot?: HighchartsSharedSharedTypes.inputsV2SlotConfig,
  value: Nullable.t<float>,
  unit?: string,
  onChange: ReactEvent.Form.t => unit,
  min?: float,
  max?: float,
  step?: float,
  error?: HighchartsSharedSharedTypes.inputsV2ErrorConfig,
  size?: HighchartsSharedSharedTypes.inputSizeV2,
  label?: HighchartsSharedSharedTypes.inputsV2LabelConfig,
  unitDirection?: HighchartsSharedSharedTypes.numberInputV2Direction,
  helpIconText?: string,
  hintText?: string,
  name?: string,
  preventNegative?: bool,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "NumberInputV2"
