@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<DetailedHTMLProps<InputHTMLAttributes<HTML`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<DetailedHTMLProps<InputHTMLAttributes<HTMLInp`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<DetailedHTMLProps<InputHTMLAttributes`
  ~style: string=?,
) => // ⚪ loose — was `{} | CSSPropertiesWithVars | Substitute<FastOmit<DetailedHTMLProps<InputHTMLAttributes<HTMLInputElement>, HTML`
React.element = "StyledRadioV2Root"
