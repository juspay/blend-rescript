type props = {
  ...HtmlAttrs.htmlAttributesOmitChildrenClassNameStyleTitle,
  ...ModalV2Types.modalBaseProps,
  isCustom?: bool,
  children: React.element,
  primaryAction?: ModalV2Types.modalV2ButtonAction,
  secondaryAction?: ModalV2Types.modalV2ButtonAction,
  customHeader?: React.element,
  customFooter?: React.element,
  headerSlot?: React.element,
  dimensions?: ModalV2Types.modalV2Dimensions,
  useDrawerOnMobile?: bool,
  skeleton?: ModalV2Types.modalV2BodySkeletonProps,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "ModalV2"
