type props = {
  ...HtmlAttrs.htmlAttributesOmitClassNameColorStyle,
  text: string,
  size?: TagV2Types.tagV2Size,
  @as("type") type_?: TagV2Types.tagV2Type,
  subType?: TagV2Types.tagV2SubType,
  color?: TagV2Types.tagV2Color,
  skeleton?: TagV2Types.tagV2SkeletonConfig2,
  tagGroupPosition?: ButtonTypes.buttonButtonGroupPosition,
  leftSlot?: TagV2Types.tagV2LeftSlotConfig2,
  rightSlot?: TagV2Types.tagV2LeftSlotConfig2,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TagV2"
