@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<CheckboxIndicatorProps & RefAttributes<HTM`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<CheckboxIndicatorProps & RefAttributes<HTMLSp`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<CheckboxIndicatorProps & RefAttribute`
  ~style: string=?,
) => // ⚪ loose — was `{} | CSSPropertiesWithVars | Substitute<FastOmit<CheckboxIndicatorProps & RefAttributes<HTMLSpanElement>, "siz`
React.element = "StyledCheckboxIndicator"
