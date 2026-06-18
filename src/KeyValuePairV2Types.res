type keyValuePairV2Size =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type keyValuePairV2StateType =
  | @as(0) Vertical
  | @as(1) Horizontal
type textOverflowMode =
  | @as("wrap") Wrap
  | @as("truncate") Truncate
  | @as("wrap-clamp") WrapClamp
type keyValuePairV2ValueConfig = {
  left?: React.element,
  right?: React.element,
}
type keyValuePairV2SlotsConfig = {
  key?: React.element,
  value?: keyValuePairV2ValueConfig,
}
type keyValuePairV2GapConfig = {
  horizontal: string,
  vertical: string,
}
type keyValuePairV2KeyConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
  gap: string,
}
type keyValuePairV2FontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type keyValuePairV2ValueConfig2 = {
  color: string,
  fontSize: keyValuePairV2FontSizeConfig,
  fontWeight: string,
  gap: string,
}
type keyValuePairV2TokensType = {
  gap: keyValuePairV2GapConfig,
  key: keyValuePairV2KeyConfig,
  value: keyValuePairV2ValueConfig2,
}
type responsiveKeyValuePairV2Tokens = {
  sm: keyValuePairV2TokensType,
  lg: keyValuePairV2TokensType,
}
