type props = {
  ...HtmlAttrs.htmlAttributesOmitClassNameIdStyle,
  steps: array<StepperV2Types.stepperV2Step2>,
  onStepClick?: float => unit,
  onSubstepClick?: (float, float) => unit,
  clickable?: bool,
  stepperType?: StepperV2Types.stepperV2Type2,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "StepperV2"
