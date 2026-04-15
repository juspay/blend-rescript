// Minimal ReScript binding for Blend's ButtonGroup component.
// The Blend API currently exposes a single prop (`stacked`) alongside children.

type buttonGroupProps = {
  stacked?: bool,
  children: React.element,
}

@module("@juspay/blend-design-system") @react.component
external make: (~stacked: bool=?, ~children: React.element) => React.element = "ButtonGroup"
