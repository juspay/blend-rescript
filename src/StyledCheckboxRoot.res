@module("@juspay/blend-design-system") @react.component
external make: (
  ~theme: string=?, // ⚪ loose — was `DefaultTheme | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<CheckboxProps & RefAttributes<HTMLButtonEl`
  @as("as") ~as_: string, // ⚪ loose — was `AsTarget | (({ style?: unknown; } & FastOmit<Substitute<FastOmit<CheckboxProps & RefAttributes<HTMLButtonEleme`
  ~forwardedAs: string=?, // ⚪ loose — was `ForwardedAsTarget | ({ style?: unknown; } & FastOmit<Substitute<FastOmit<CheckboxProps & RefAttributes<HTMLBut`
  ~style: string=?,
) => // ⚪ loose — was `{} | Substitute<FastOmit<CheckboxProps & RefAttributes<HTMLButtonElement>, "size" | "$isDisabled" | "$checked"`
React.element = "StyledCheckboxRoot"
