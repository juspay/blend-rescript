type menuItemStateTokensV1wa6w = {
  disabled: string,
  active: string,
  default: string,
  hover: string,
  focus: string,
  focusVisible: string,
  selected?: string,
}
type menuUseThemeDefaultConfig = {
  enabled: menuItemStateTokensV1wa6w,
  disabled: menuItemStateTokensV1wa6w,
}
type menuUseThemeActionConfig = {
  primary: menuUseThemeDefaultConfig,
  danger: menuUseThemeDefaultConfig,
}
type menuUseThemeColorConfig = {
  default: menuUseThemeDefaultConfig,
  action: menuUseThemeActionConfig,
}
