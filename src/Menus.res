type menuAlignment =
  | @as("start") Start
  | @as("center") Center
  | @as("end") End

type menuSide =
  | @as("top") Top
  | @as("left") Left
  | @as("right") Right
  | @as("bottom") Bottom

type menuItemV2Variant =
  | @as("default") Default
  | @as("action") Action

type menuItemV2ActionType =
  | @as("primary") Primary
  | @as("danger") Danger

// Tooltip types (matching Blend Design System)
type tooltipSide =
  | @as("top") Top
  | @as("right") Right
  | @as("bottom") Bottom
  | @as("left") Left

type tooltipAlign =
  | @as("start") Start
  | @as("center") Center
  | @as("end") End

type tooltipSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

type tooltipProps = {
  side?: tooltipSide,
  align?: tooltipAlign,
  size?: tooltipSize,
  showArrow?: bool,
  delayDuration?: int,
  offset?: int,
}

type rec menuItemV2Type = {
  label: string,
  subLabel?: string,
  slot1?: React.element,
  slot2?: React.element,
  slot3?: React.element,
  slot4?: React.element,
  variant?: menuItemV2Variant,
  actionType?: menuItemV2ActionType,
  disabled?: bool,
  onClick?: unit => unit,
  subMenu?: array<menuItemV2Type>,
  enableSubMenuSearch?: bool,
  subMenuSearchPlaceholder?: string,
  enableSubMenuVirtualScrolling?: bool,
  tooltip?: string,
  tooltipProps?: tooltipProps,
}

type rec menuV2GroupType = {
  label?: string,
  items: array<menuItemV2Type>,
  showSeparator?: bool,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~trigger: React.element,
  ~items: option<array<menuV2GroupType>>,
  ~maxHeight: int=?,
  ~minHeight: int=?,
  ~maxWidth: int=?,
  ~minWidth: int=?,
  ~enableSearch: bool=?,
  ~searchPlaceholder: string=?,
  @as("open") ~open_: bool=?,
  ~onOpenChange: bool => unit=?,
  ~asModal: bool=?,
  ~alignment: menuAlignment=?,
  ~side: menuSide=?,
  ~sideOffset: int=?,
  ~alignOffset: int=?,
  ~collisonBoundaryRef: option<Dom.element>=?,
) => React.element = "Menu"
