@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsProps & RefAttributes<HTMLDivElement>,`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsProps & RefAttributes<HTMLDivElement>, "$`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsProps & RefAttributes<HTMLDivElem`
  ~style: string=?,
) => // ⚪ loose — was `{} | CSSPropertiesWithVars | Substitute<FastOmit<TabsProps & RefAttributes<HTMLDivElement>, "$tabsToken"> & { `
React.element = "StyledTabsRoot"
