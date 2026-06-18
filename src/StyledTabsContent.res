@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsContentProps & RefAttributes<HTMLDivEl`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsContentProps & RefAttributes<HTMLDivEleme`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsContentProps & RefAttributes<HTML`
  ~style: string=?,
) => // ⚪ loose — was `{} | CSSPropertiesWithVars | Substitute<FastOmit<TabsContentProps & RefAttributes<HTMLDivElement>, "$tabsToken`
React.element = "StyledTabsContent"
