// Type definitions
type tooltipSlotDirection =
  | @as("left") Left
  | @as("right") Right
type tooltipSide =
  | @as("top") Top
  | @as("right") Right
  | @as("left") Left
  | @as("bottom") Bottom
type tooltipAlign =
  | @as("start") Start
  | @as("end") End
  | @as("center") Center
type tooltipSize =
  | @as("sm") Sm
  | @as("lg") Lg

type element = React.element

// Accept either a plain string or a React element as tooltip content
@unboxed
type content =
  | String(string)
  | Element

// Raw external binding to the design system component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~content: content,
  @as("open") ~open_: bool=?,
  ~side: tooltipSide=?,
  ~align: tooltipAlign=?,
  ~showArrow: bool=?,
  ~size: tooltipSize=?,
  ~slot: React.element=?,
  ~slotDirection: tooltipSlotDirection=?,
  ~delayDuration: int=?,
  ~offset: int=?,
  ~className: string=?,
  ~disableInteractive: bool=?,
) => React.element = "Tooltip"
