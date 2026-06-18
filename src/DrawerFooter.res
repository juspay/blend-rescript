@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~className: string=?,
  ~direction: DrawerV2Types.direction=?,
) => React.element = "DrawerFooter"
