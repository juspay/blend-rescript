type tagVariant =
  | @as("noFill") NoFill
  | @as("attentive") Attentive
  | @as("subtle") Subtle
type tagSize =
  | @as("xs") Xs
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type tagShape =
  | @as("rounded") Rounded
  | @as("squarical") Squarical
type size2 =
  | @as("xs") Xs
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type splitTagPosition =
  | @as("left") Left
  | @as("right") Right
type tagsNoFillConfig = {
  neutral: string,
  primary: string,
  success: string,
  error: string,
  warning: string,
  purple: string,
}
type tagsBackgroundColorConfig = {
  noFill: tagsNoFillConfig,
  attentive: tagsNoFillConfig,
  subtle: tagsNoFillConfig,
}
type tagsXsConfig = {
  rounded: string,
  squarical: string,
}
type tagsBorderRadiusConfig = {
  xs: tagsXsConfig,
  sm: tagsXsConfig,
  md: tagsXsConfig,
  lg: tagsXsConfig,
}
type tagsPaddingConfig = {
  xs: string,
  sm: string,
  md: string,
  lg: string,
}
type tagsTextConfig = {
  color: tagsBackgroundColorConfig,
  fontSize: tagsPaddingConfig,
  fontWeight: tagsPaddingConfig,
}
type tagsSmConfig = {
  minWidth: string,
  maxWidth: string,
  width: string,
  gap: string,
  backgroundColor: tagsBackgroundColorConfig,
  borderRadius: tagsBorderRadiusConfig,
  padding: tagsPaddingConfig,
  border: tagsBackgroundColorConfig,
  text: tagsTextConfig,
}
type responsiveTagTokens = {
  sm: tagsSmConfig,
  lg: tagsSmConfig,
}
type tagsPrimaryTagConfig = {
  minWidth?: string,
  maxWidth?: string,
  width?: string,
  gap?: string,
  backgroundColor?: string,
  borderRadius?: string,
  padding?: CommonTypes.stringOrNumber,
  border?: string,
  text: string,
  inset?: string,
  color?: SplitTagTypes.color4,
  fontSize?: string,
  fontWeight?: string,
  borderBottom?: string,
  outline?: string,
  boxShadow?: string,
  lineHeight?: string,
  transition?: string,
  height?: string,
  top?: string,
  left?: string,
  outlineOffset?: string,
  marginLeft?: CommonTypes.stringOrNumber,
  paddingTop?: CommonTypes.stringOrNumber,
  paddingRight?: CommonTypes.stringOrNumber,
  paddingBottom?: CommonTypes.stringOrNumber,
  paddingLeft?: CommonTypes.stringOrNumber,
  maxHeight?: string,
  bottom?: string,
  right?: string,
  zIndex?: string,
  margin?: CommonTypes.stringOrNumber,
  marginTop?: CommonTypes.stringOrNumber,
  marginRight?: CommonTypes.stringOrNumber,
  marginBottom?: CommonTypes.stringOrNumber,
  display?: string,
  flexDirection?: string,
  position?: string,
  justifyContent?: string,
  alignItems?: string,
  overflowX?: string,
  overflowY?: string,
  flexShrink?: string,
  minHeight?: string,
  transform?: string,
  textAlign?: string,
  cursor?: string,
  userSelect?: string,
  textTransform?: string,
  borderTop?: string,
  borderTopLeftRadius?: string,
  borderTopRightRadius?: string,
  borderBottomLeftRadius?: string,
  borderBottomRightRadius?: string,
  borderLeft?: string,
  borderRight?: string,
  backgroundSize?: string,
  backgroundImage?: string,
  letterSpacing?: string,
  opacity?: string,
  overflow?: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  whiteSpace?: string,
  @as("as") as_?: SkeletonTypes.as_,
  _hover?: PrimitivesTypes.styledBlockProps,
  _focus?: PrimitivesTypes.styledBlockProps,
  _active?: PrimitivesTypes.styledBlockProps,
  _disabled?: PrimitivesTypes.styledBlockProps,
  _visited?: PrimitivesTypes.styledBlockProps,
  _focusVisible?: PrimitivesTypes.styledBlockProps,
  pointerEvents?: string,
  paddingX?: CommonTypes.stringOrNumber,
  paddingY?: CommonTypes.stringOrNumber,
  marginX?: CommonTypes.stringOrNumber,
  marginY?: CommonTypes.stringOrNumber,
  flexWrap?: string,
  flexGrow?: string,
  flexBasis?: string,
  rowGap?: string,
  columnGap?: string,
  alignContent?: string,
  alignSelf?: string,
  justifySelf?: string,
  outlineColor?: string,
  outlineWidth?: string,
  outlineStyle?: string,
  contentCentered?: bool,
  textOverflow?: string,
  willChange?: string,
  transformOrigin?: string,
  backfaceVisibility?: string,
  transitionDuration?: string,
  transitionTimingFunction?: string,
  transitionDelay?: string,
  variant?: tagVariant,
}
