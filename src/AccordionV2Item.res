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
  ~chevronPosition: AccordionV2Types.accordionV2ChevronPosition=?,
  ~accordionType: AccordionV2Types.accordionV2Type=?,
  ~isFirst: bool=?,
  ~isLast: bool=?,
  ~isIntermediate: bool=?,
  ~currentValue: CommonTypes.stringOrStringArray=?,
) => React.element = "AccordionV2Item"
