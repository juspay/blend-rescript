type keyValuePairSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

type textOverflowMode =
  | @as("truncate") Truncate
  | @as("wrap") Wrap
  | @as("wrap-clamp") WrapClamp

type keyValuePairProps = {
  keyString: string,
  size?: keyValuePairSize,
  value?: string,
  keySlot?: React.element,
  valueLeftSlot?: React.element,
  valueRightSlot?: React.element,
  keyValuePairState?: int,
  maxWidth?: string,
  textOverflow?: textOverflowMode,
  maxLines?: int,
  showTooltipOnTruncate?: bool,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~keyString: string,
  ~size: keyValuePairSize=?,
  ~value: string=?,
  ~keySlot: React.element=?,
  ~valueLeftSlot: React.element=?,
  ~valueRightSlot: React.element=?,
  ~keyValuePairState: int=?,
  ~maxWidth: string=?,
  ~textOverflow: textOverflowMode=?,
  ~maxLines: int=?,
  ~showTooltipOnTruncate: bool=?,
  ~className: string=?,
  ~style: JsxDOM.style=?,
  ~id: string=?,
  ~dataTestId: string=?,
) => React.element = "KeyValuePair"
