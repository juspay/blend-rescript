type inputSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

type dropdownPosition =
  | @as("left") Left
  | @as("right") Right

type tooltipProps = {
  side?: string,
  align?: string,
  showArrow?: bool,
  delayDuration?: int,
}

type rec selectMenuItemType = {
  label: string,
  value: string,
  checked?: bool,
  subLabel?: string,
  slot1?: React.element,
  slot2?: React.element,
  slot3?: React.element,
  slot4?: React.element,
  disabled?: bool,
  onClick?: unit => unit,
  subMenu?: array<selectMenuItemType>,
  tooltip?: string,
  tooltipProps?: tooltipProps,
}

type selectMenuGroupType = {
  groupLabel?: string,
  items: array<selectMenuItemType>,
  showSeparator?: bool,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~label: string=?,
  ~sublabel: string=?,
  ~disabled: bool=?,
  ~helpIconHintText: string=?,
  ~name: string=?,
  ~required: bool=?,
  ~error: bool=?,
  ~errorMessage: string=?,
  ~hintText: string=?,
  ~value: string=?, // Text input value
  ~onChange: ReactEvent.Form.t => unit=?, // Text input change handler
  ~onKeyUp: ReactEvent.Keyboard.t => unit=?, // Keyboard event handler (passed through {...rest})
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?, // Keyboard down handler
  ~dropDownValue: string=?, // Dropdown selection value
  ~onDropDownChange: string => unit=?, // Dropdown selection change handler
  ~slot: React.element=?, // Slot for custom elements (right side)
  ~size: inputSize=?,
  ~placeholder: string=?,
  ~dropDownItems: array<selectMenuGroupType>,
  ~dropdownPosition: dropdownPosition=?,
  ~dropdownName: string=?,
  ~onDropdownOpen: unit => unit=?,
  ~onDropdownClose: unit => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~maxMenuHeight: int=?,
  ~minMenuWidth: int=?,
  ~maxMenuWidth: int=?,
  // HTML input attributes for numeric input
  ~type_: string=?,
  ~pattern: string=?,
  ~inputMode: string=?,
  ~maxLength: int=?,
) => React.element = "DropdownInput"
