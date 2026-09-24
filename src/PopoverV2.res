type props = {
  ...HtmlAttrs.htmlAttributesOmitChildrenClassNameSlotStyle,
  ...PopoverV2Types.popoverBaseProps,
  ...PopoverV2Types.popoverV2Dimensions,
  trigger: React.element,
  children: React.element,
  asModal?: bool,
  primaryAction?: PopoverV2Types.popoverV2ActionType,
  secondaryAction?: PopoverV2Types.popoverV2ActionType,
  shadow?: PopoverTypes.popoverShadow,
  useDrawerOnMobile?: bool,
  avoidCollisions?: bool,
  skeleton?: PopoverV2Types.popoverV2SkeletonProps,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "PopoverV2"
