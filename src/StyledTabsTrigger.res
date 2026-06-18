@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsTriggerProps & RefAttributes<HTMLButto`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsTriggerProps & RefAttributes<HTMLButtonEl`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<TabsTriggerProps & RefAttributes<HTML`
  ~style: string=?,
) => // ⚪ loose — was `{} | CSSPropertiesWithVars | Substitute<FastOmit<TabsTriggerProps & RefAttributes<HTMLButtonElement>, "$tabsTo`
React.element = "StyledTabsTrigger"
