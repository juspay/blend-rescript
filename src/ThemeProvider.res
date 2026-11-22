type props = {
  foundationTokens?: TokensTypes.foundationTokenType,
  componentTokens?: HighchartsSharedSharedTypes.contextComponentTokensConfig,
  breakpoints?: BreakpointsTypes.breakpointType,
  theme?: CommonTypes.themeOrString,
  locale?: string,
  t?: (string, option<Dict.t<string>>) => option<string>,
  firstDayOfWeek?: CommonTypes.blendFirstDayOfWeek,
  children: React.element,
  target?: Dom.element,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "ThemeProvider"
