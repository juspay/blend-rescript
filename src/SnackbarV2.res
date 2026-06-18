@module("@juspay/blend-design-system") @react.component
external make: (
  ~position: SnackbarV2Types.snackbarV2Position=?,
  ~dismissOnClickAway: bool=?,
  ~maxWidth: CommonTypes.stringOrNumber=?,
) => React.element = "SnackbarV2"
