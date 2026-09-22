type props = {
  ...AccordionV2Types.accordionBaseProps,
  ...AccordionV2Types.accordionV2Dimensions,
  children: React.element,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "AccordionV2"
