type props = {
  ...SelectListV2Types.selectListV2BaseProps,
  items: array<MultiSelectV2Types.multiSelectV2GroupType2>,
  selectedValues: array<string>,
  onChange?: CommonTypes.stringOrStringArray => unit,
  onSelectionChange?: array<string> => unit,
  enableSelectAll?: bool,
  selectAllText?: string,
  showClearAll?: bool,
  clearAllText?: string,
  onClearAll?: unit => unit,
  maxSelections?: float,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "MultiSelectListV2"
