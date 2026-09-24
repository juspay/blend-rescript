type props = {
  ...HtmlAttrs.htmlAttributesOmitClassNameSlotStyle,
  ...AlertV2Types.alertBaseProps,
  ...AlertV2Types.alertV2Dimensions,
  slot?: AlertV2Types.alertV2SlotConfig2,
  actions?: AlertV2Types.alertV2Actions,
  closeButton?: AlertV2Types.alertV2CloseButtonConfig2,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "AlertV2"
