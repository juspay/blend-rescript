type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave
  | @as("shimmer") Shimmer
type as_ =
  | @as("article") Article
  | @as("button") Button
  | @as("main") Main
  | @as("div") Div
  | @as("label") Label
  | @as("nav") Nav
  | @as("span") Span
  | @as("footer") Footer
  | @as("header") Header
  | @as("hr") Hr
  | @as("section") Section
type skeletonShape =
  | @as("circle") Circle
  | @as("rectangle") Rectangle
  | @as("rounded") Rounded
type shape =
  | @as("circle") Circle
  | @as("square") Square
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
type skeletonButtonConfig = {
  sm: skeletonTextConfig,
  md: skeletonTextConfig,
  lg: skeletonTextConfig,
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
type responsiveSkeletonTokens = {
  sm: skeletonTokensType,
  lg: skeletonTokensType,
}
type skeletonValueConfig = {
  shouldRender: bool,
  fallback: React.element,
  tokens: string,
  prefersReducedMotion: bool,
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
