@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~className: string=?,
  ~overflowY: DrawerTypes.overflowY=?,
  ~noPadding: bool=?,
  ~hasFooter: bool=?,
  ~direction: DrawerV2Types.direction=?,
) => React.element = "DrawerBody"
