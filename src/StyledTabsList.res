@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsListProps & RefAttributes<HTMLDivEleme`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsListProps & RefAttributes<HTMLDivElement>`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsListProps & RefAttributes<HTMLDiv`
  ~style: string=?,
) => // ⚪ loose — was `{} | CSSPropertiesWithVars | Substitute<FastOmit<TabsListProps & RefAttributes<HTMLDivElement>, "$tabsToken" |`
React.element = "StyledTabsList"
