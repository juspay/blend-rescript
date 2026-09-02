type props = {
  ...HighchartsSharedSharedTypes.menuV2Props,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MenuV2"
