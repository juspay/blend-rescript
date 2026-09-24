type props = {
  ...HtmlAttrs.buttonHTMLAttributesOmitClassNameOnChangeSlotStyle,
  ...MultiSelectV2Types.multiSelectBaseProps,
  onChange?: CommonTypes.stringOrStringArray => unit,
  slot?: React.element,
  search?: HighchartsSharedSharedTypes.selectV2SearchConfig,
  customTrigger?: React.element,
  usePanelOnMobile?: bool,
  triggerDimensions?: HighchartsSharedSharedTypes.selectV2TriggerDimensions,
  menuDimensions?: HighchartsSharedSharedTypes.selectV2MenuDimensions,
  menuPosition?: HighchartsSharedSharedTypes.selectV2MenuPosition,
  enableVirtualization?: bool,
  virtualListItemHeight?: float,
  virtualListOverscan?: float,
  itemsToRender?: float,
  loadingComponent?: React.element,
  skeleton?: SelectV2Types.selectV2SkeletonProps,
  multiSelectGroupPosition?: ButtonTypes.buttonButtonGroupPosition,
  menuFooter?: React.element,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectV2"
