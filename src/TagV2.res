type props = {
  ...HtmlAttrs.htmlAttributesOmitClassNameColorStyle,
  text: string,
  size?: TagV2Types.tagV2Size,
  @as("type") type_?: TagV2Types.tagV2Type,
  subType?: TagV2Types.tagV2SubType,
  color?: TagV2Types.color,
  leftSlot?: TagV2Types.tagV2LeftSlotConfig,
  rightSlot?: TagV2Types.tagV2LeftSlotConfig,
  skeleton?: TagV2Types.tagV2SkeletonConfig,
  tagGroupPosition?: ButtonV2Types.buttonGroupPosition,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "TagV2"
