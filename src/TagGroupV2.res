@module("@juspay/blend-design-system") @react.component
external make: (
  ~stacked: bool=?,
  ~gap: CommonTypes.stringOrNumber=?,
  ~children: React.element,
) => React.element = "TagGroupV2"
