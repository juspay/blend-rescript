type props = {
  ...TooltipV2Types.tooltipBaseProps,
  children: React.element,
  content: React.element,
  slot?: React.element,
  maxWidth?: string,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TooltipV2"
