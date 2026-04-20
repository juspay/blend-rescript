// Drawer direction type
type drawerDirection =
  | @as("top") Top
  | @as("bottom") Bottom
  | @as("left") Left
  | @as("right") Right

// Button type variants
type buttonType =
  | @as("primary") Primary
  | @as("secondary") Secondary
  | @as("danger") Danger
  | @as("success") Success

// Button size variants
type buttonSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

// Mobile offset type
type mobileOffset = {
  top?: string,
  bottom?: string,
  left?: string,
  right?: string,
}

// Button props type (referencing from existing Button)
type buttonV2Props = {
  buttonType?: buttonType,
  size?: buttonSize,
  text?: string,
  onClick?: unit => unit,
  isDisabled?: bool,
  disabled?: bool,
  state?: Button.buttonState,
}

// Select drawer item type
type selectDrawerItem = {
  value: string,
  label: string,
  subLabel?: string,
  slot1?: React.element,
  disabled?: bool,
}

// Select drawer group type
type selectDrawerGroup = {
  groupLabel?: string,
  items: array<selectDrawerItem>,
  showSeparator?: bool,
}

// Main Drawer component
@module("@juspay/blend-design-system") @react.component
external make: (
  @as("open") ~open_: bool=?,
  ~onOpenChange: bool => unit=?,
  ~direction: drawerDirection=?,
  ~modal: bool=?,
  ~dismissible: bool=?,
  ~showHandle: bool=?,
  ~handle: React.element=?,
  ~nested: bool=?,
  ~snapPoints: array<'a>=?,
  ~activeSnapPoint: 'a=?,
  ~onSnapPointChange: 'a => unit=?,
  ~fadeFromIndex: int=?,
  ~snapToSequentialPoint: bool=?,
  ~disableDrag: bool=?,
  ~mobileOffset: mobileOffset=?,
  ~className: string=?,
  ~overlayClassName: string=?,
  ~style: JsxDOM.style=?,
  ~children: React.element,
) => React.element = "Drawer"

// Drawer Trigger component
module Trigger = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~children: React.element,
    ~className: string=?,
    ~disabled: bool=?,
    ~onClick: unit => unit=?,
  ) => React.element = "DrawerTrigger"
}

// Drawer Portal component
module Portal = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~children: React.element) => React.element = "DrawerPortal"
}

// Drawer Overlay component
module Overlay = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~className: string=?) => React.element = "DrawerOverlay"
}

// Drawer Content component
module Content = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~children: React.element,
    ~className: string=?,
    ~style: JsxDOM.style=?,
    ~direction: drawerDirection=?,
    ~fullScreen: bool=?,
    ~width: string=?,
    ~maxWidth: string=?,
    ~offSet: string=?,
    ~showHandle: bool=?,
    ~handle: React.element=?,
    ~hasSnapPoints: bool=?,
    @as("aria-label") ~ariaLabel: string=?,
    @as("aria-describedby") ~ariaDescribedby: string=?,
  ) => React.element = "DrawerContent"
}

// Drawer Body component
module Body = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~children: React.element, ~className: string=?) => React.element = "DrawerBody"
}

// Drawer Header component
module Header = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~children: React.element, ~className: string=?) => React.element = "DrawerHeader"
}

// Drawer Title component
module Title = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~children: React.element, ~className: string=?, ~id: string=?) => React.element =
    "DrawerTitle"
}

// Drawer Description component
module Description = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~children: React.element, ~className: string=?) => React.element =
    "DrawerDescription"
}

// Drawer Footer component
module Footer = {
  @module("@juspay/blend-design-system") @react.component
  external make: (~children: React.element, ~className: string=?) => React.element = "DrawerFooter"
}

// Drawer Close component
module Close = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~children: React.element,
    ~className: string=?,
    ~disabled: bool=?,
  ) => React.element = "DrawerClose"
}

// Status Drawer component
module StatusDrawer = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~onOpenChange: bool => unit=?,
    ~heading: string,
    ~description: string,
    ~primaryButtonProps: buttonV2Props,
    ~secondaryButtonProps: buttonV2Props=?,
    ~slot: React.element,
    ~direction: drawerDirection=?,
    ~modal: bool=?,
    ~dismissible: bool=?,
    ~mobileOffset: mobileOffset=?,
    ~className: string=?,
    ~style: JsxDOM.style=?,
  ) => React.element = "StatusDrawer"
}

// Single Select Drawer component
module SingleSelectDrawer = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~onOpenChange: bool => unit=?,
    ~heading: string,
    ~description: string=?,
    ~rightSlot: React.element=?,
    ~items: array<selectDrawerGroup>,
    ~selectedValues: array<string>=?,
    ~selectedValue: string=?,
    ~onSelectionChange: array<string> => unit=?,
    ~onValueChange: string => unit=?,
    ~enableSearch: bool=?,
    ~searchPlaceholder: string=?,
    ~multiSelect: bool=?,
    ~cancelText: string=?,
    ~confirmText: string=?,
    ~onCancel: unit => unit=?,
    ~onConfirm: unit => unit=?,
    ~showCancelButton: bool=?,
    ~direction: drawerDirection=?,
    ~modal: bool=?,
    ~dismissible: bool=?,
    ~mobileOffset: mobileOffset=?,
    ~className: string=?,
    ~style: JsxDOM.style=?,
  ) => React.element = "SingleSelectDrawer"
}

// Helper functions
let makeSelectDrawerItem = (
  ~value: string,
  ~label: string,
  ~subLabel: option<string>=?,
  ~slot1: option<React.element>=?,
  ~disabled: option<bool>=?,
  (),
): selectDrawerItem => {
  value,
  label,
  ?subLabel,
  ?slot1,
  ?disabled,
}

let makeSelectDrawerGroup = (
  ~groupLabel: option<string>=?,
  ~items: array<selectDrawerItem>,
  ~showSeparator: option<bool>=?,
  (),
): selectDrawerGroup => {
  ?groupLabel,
  items,
  ?showSeparator,
}

let makeButtonV2Props = (
  ~buttonType: option<buttonType>=?,
  ~size: option<buttonSize>=?,
  ~text: option<string>=?,
  ~onClick: option<unit => unit>=?,
  ~isDisabled: option<bool>=?,
  ~disabled: option<bool>=?,
  ~state: option<Button.buttonState>=?,
  (),
): buttonV2Props => {
  ?buttonType,
  ?size,
  ?text,
  ?onClick,
  ?isDisabled,
  ?disabled,
  ?state,
}

let makeMobileOffset = (
  ~top: option<string>=?,
  ~bottom: option<string>=?,
  ~left: option<string>=?,
  ~right: option<string>=?,
  (),
): mobileOffset => {
  ?top,
  ?bottom,
  ?left,
  ?right,
}
