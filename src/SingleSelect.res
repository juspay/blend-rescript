type selectMenuItemAlignment =
  | @as("start") Start
  | @as("center") Center
  | @as("end") End

type selectMenuItemVariant =
  | @as("container") Container
  | @as("noContainer") NoContainer

type selectMenuItemSize =
  | @as("small") Small
  | @as("medium") Medium
  | @as("large") Large

type selectMenuItemSide =
  | @as("top") Top
  | @as("left") Left
  | @as("right") Right
  | @as("bottom") Bottom

type selectValue =
  | @as("single") Single(string)
  | @as("multi") Multi(array<string>)

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
}

type selectMenuGroupType = {
  groupLabel?: string,
  items: array<selectMenuItemType>,
  showSeparator?: bool,
}

type selectionTagType =
  | @as("count") Count
  | @as("text") Text

@module("@juspay/blend-design-system") @react.component
external make: (
  ~selected: string,
  ~onSelect: string => unit,
  ~items: array<selectMenuGroupType>,
  ~label: string,
  ~subLabel: string=?,
  ~disabled: bool=?,
  ~helpIconHintText: string=?,
  ~name: string=?,
  ~required: bool=?,
  ~variant: selectMenuItemVariant=?,
  ~slot: React.element=?,
  ~hintText: string=?,
  ~placeholder: string,
  ~size: selectMenuItemSize=?,
  ~minWidth: int=?,
  ~maxWidth: int=?,
  ~maxHeight: int=?,
  ~alignment: selectMenuItemAlignment=?,
  ~side: selectMenuItemSide=?,
  ~sideOffset: int=?,
  ~alignOffset: int=?,
  ~selectionTagType: selectionTagType=?,
  ~enableSearch: bool=?,
) => React.element = "SingleSelect"
