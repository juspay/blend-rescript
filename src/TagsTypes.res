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
type tagsPrimaryTagConfig = {
  color?: SplitTagTypes.color3,
  left?: string,
  right?: string,
  maxHeight?: string,
  width?: string,
  maxWidth?: string,
  minWidth?: string,
  height?: string,
  cursor?: string,
  text: string,
  backgroundColor?: string,
  borderRadius?: string,
  overflow?: string,
  padding?: CommonTypes.stringOrNumber,
  position?: string,
  bottom?: string,
  top?: string,
  zIndex?: string,
  border?: string,
  fontSize?: string,
  fontWeight?: string,
  opacity?: string,
  pointerEvents?: string,
  textAlign?: string,
  textOverflow?: string,
  transition?: string,
  whiteSpace?: string,
  margin?: CommonTypes.stringOrNumber,
  variant?: tagVariant,
  justifyContent?: string,
  minHeight?: string,
  inset?: string,
  boxShadow?: string,
  paddingTop?: CommonTypes.stringOrNumber,
  paddingRight?: CommonTypes.stringOrNumber,
  paddingBottom?: CommonTypes.stringOrNumber,
  paddingLeft?: CommonTypes.stringOrNumber,
  lineHeight?: string,
  marginTop?: CommonTypes.stringOrNumber,
  marginRight?: CommonTypes.stringOrNumber,
  marginBottom?: CommonTypes.stringOrNumber,
  marginLeft?: CommonTypes.stringOrNumber,
  gap?: string,
  outline?: string,
  borderBottom?: string,
  borderTop?: string,
  textTransform?: string,
  letterSpacing?: string,
  display?: string,
  outlineOffset?: string,
  borderLeft?: string,
  backgroundImage?: string,
  backgroundSize?: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  borderRight?: string,
  borderTopLeftRadius?: string,
  overflowY?: string,
  flexShrink?: string,
  flexDirection?: string,
  alignItems?: string,
  overflowX?: string,
  transform?: string,
  userSelect?: string,
  borderTopRightRadius?: string,
  borderBottomLeftRadius?: string,
  borderBottomRightRadius?: string,
  @as("as") as_?: SkeletonTypes.as_,
  _hover?: PrimitivesTypes.styledBlockProps,
  _focus?: PrimitivesTypes.styledBlockProps,
  _active?: PrimitivesTypes.styledBlockProps,
  _disabled?: PrimitivesTypes.styledBlockProps,
  _visited?: PrimitivesTypes.styledBlockProps,
  _focusVisible?: PrimitivesTypes.styledBlockProps,
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
  willChange?: string,
  transformOrigin?: string,
  backfaceVisibility?: string,
  transitionDuration?: string,
  transitionTimingFunction?: string,
  transitionDelay?: string,
}
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
