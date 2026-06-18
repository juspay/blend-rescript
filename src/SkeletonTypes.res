type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave
  | @as("shimmer") Shimmer
type as_ =
  | @as("label") Label
  | @as("main") Main
  | @as("button") Button
  | @as("article") Article
  | @as("div") Div
  | @as("nav") Nav
  | @as("span") Span
  | @as("footer") Footer
  | @as("header") Header
  | @as("hr") Hr
  | @as("section") Section
type skeletonShape =
  | @as("rectangle") Rectangle
  | @as("circle") Circle
  | @as("rounded") Rounded
type size =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type shape =
  | @as("square") Square
  | @as("circle") Circle
type skeletonValueConfig = {
  shouldRender: bool,
  fallback: React.element,
  tokens: string,
  prefersReducedMotion: bool,
}
type skeletonAnimationConfig = {
  duration: string,
  timingFunction: string,
  iterationCount: string,
  direction: string,
}
type skeletonColorsConfig = {
  base: string,
  highlight: string,
  shimmer: string,
}
type skeletonBorderRadiusConfig = {
  rectangle: string,
  rounded: string,
  circle: string,
}
type skeletonSpacingConfig = {
  gap: string,
  margin: string,
}
type skeletonTextConfig = {
  height: string,
  minWidth: string,
}
type skeletonAvatarConfig = {
  sm: string,
  md: string,
  lg: string,
}
type skeletonSmConfig = {
  height: string,
  minWidth: string,
}
type skeletonButtonConfig = {
  sm: skeletonSmConfig,
  md: skeletonSmConfig,
  lg: skeletonSmConfig,
}
type skeletonSizesConfig = {
  text: skeletonTextConfig,
  avatar: skeletonAvatarConfig,
  button: skeletonButtonConfig,
}
type skeletonTokensType = {
  animation: skeletonAnimationConfig,
  colors: skeletonColorsConfig,
  borderRadius: skeletonBorderRadiusConfig,
  spacing: skeletonSpacingConfig,
  sizes: skeletonSizesConfig,
}
type skeletonValueConfig2 = {
  shouldRender: bool,
  fallback: string,
  tokens: skeletonTokensType,
  prefersReducedMotion: bool,
}
type skeletonValueConfig3 = {
  shouldShowSkeleton: bool,
  shouldShowContent: bool,
}
type responsiveSkeletonTokens = {
  sm: skeletonTokensType,
  lg: skeletonTokensType,
}
