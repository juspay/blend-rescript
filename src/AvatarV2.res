type props = {
  ...HtmlAttrs.htmlAttributesOmitChildrenClassNameStyle,
  src?: string,
  alt?: string,
  fallbackText?: string,
  size?: AvatarV2Types.avatarV2Size,
  shape?: AvatarV2Types.avatarV2Shape,
  status?: AvatarV2Types.avatarV2StatusConfig2,
  leftSlot?: React.element,
  rightSlot?: React.element,
  skeleton?: AvatarV2Types.avatarV2SkeletonConfig,
  backgroundColor?: string,
  disabled?: bool,
  onImageError?: JsError.t => unit,
  onImageLoad?: unit => unit,
  width?: string,
  height?: string,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "AvatarV2"
