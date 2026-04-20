type selectMenuSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

type selectMenuVariant =
  | @as("container") Container
  | @as("no-container") NoContainer

type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave
  | @as("shimmer") Shimmer

type skeletonProps = {
  count?: int,
  show?: bool,
  variant?: skeletonVariant,
}

// Tooltip types (simplified - can be refined if needed)
type tooltipSide =
  | @as("top") Top
  | @as("left") Left
  | @as("right") Right
  | @as("bottom") Bottom
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
  tooltip?: string, // New prop - can be string or React.element
  tooltipProps?: tooltipProps, // New prop
  disableTruncation?: bool, // New prop
}

type selectMenuGroupType = {
  groupLabel?: string,
  items: array<selectMenuItemType>,
  showSeparator?: bool,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  // Core props
  ~label: string=?,
  ~subLabel: string=?,
  ~hintText: string=?,
  ~required: bool=?,
  ~helpIconText: string=?,
  ~placeholder: string,
  ~selected: string,
  ~onSelect: string => unit,
  ~items: array<selectMenuGroupType>,
  // Search functionality
  ~enableSearch: bool=?,
  ~searchPlaceholder: string=?,
  // UI customization
  ~variant: selectMenuVariant=?,
  ~size: selectMenuSize=?,
  ~slot: React.element=?,
  ~customTrigger: React.element=?,
  ~useDrawerOnMobile: bool=?,
  // Positioning
  ~alignment: MultiSelect.selectMenuItemAlignment=?,
  ~side: MultiSelect.selectMenuItemSide=?,
  ~sideOffset: int=?,
  ~alignOffset: int=?,
  // Sizing
  ~minMenuWidth: int=?,
  ~maxMenuWidth: int=?,
  ~maxMenuHeight: int=?,
  ~fullWidth: bool=?,
  ~inline: bool=?,
  // State and validation
  ~disabled: bool=?,
  ~error: bool=?,
  ~errorMessage: string=?,
  // Event handlers
  ~onBlur: unit => unit=?,
  ~onFocus: unit => unit=?,
  ~onOpenChange: bool => unit=?,
  // Advanced positioning
  ~asModal: bool=?,
  // Form integration
  ~name: string=?,
  ~allowCustomValue: bool=?,
  ~maxTriggerWidth: float=?,
  ~minTriggerWidth: float=?,
  ~enableVirtualization: bool=?,
  ~virtualListItemHeight: int=?,
  ~allowDeselect: bool=?,
  // Skeleton loading
  ~skeleton: skeletonProps=?,
  ~singleSelectGroupPosition: string=?,
) => React.element = "SingleSelect"
