type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitClassNameOnSelectSlotStyle,
  ...HighchartsSharedSharedTypes.singleSelectV2Props,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "SingleSelectV2"
