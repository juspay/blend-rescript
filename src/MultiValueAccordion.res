type accordionType =
  | @as("border") Border
  | @as("noBorder") NoBorder
type accordionChevronPosition =
  | @as("left") Left
  | @as("right") Right
module Item = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~value: string,
    ~title: string,
    ~subtext: string=?,
    ~leftSlot: React.element=?,
    ~rightSlot: React.element=?,
    ~subtextSlot: React.element=?,
    ~children: React.element,
    ~isDisabled: bool=?,
    ~className: string=?,
    ~chevronPosition: accordionChevronPosition=?,
  ) => React.element = "AccordionItem"
}
// Main Accordion binding
@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~accordionType: accordionType=?,
  ~defaultValue: array<string>=?,
  ~value: array<string>=?,
  ~isCollapsible: bool=?,
  ~isMultiple: bool=?,
  ~onValueChange: array<string> => unit=?,
  ~className: string=?,
) => React.element = "Accordion"
