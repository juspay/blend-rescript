// Avatar size variants
type avatarSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
  | @as("xl") Xl

// Avatar shape variants
type avatarShape =
  | @as("circular") Circular
  | @as("rounded") Rounded

// Avatar online position
type avatarOnlinePosition =
  | @as("top") Top
  | @as("bottom") Bottom

// Skeleton variant type
type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave

// Skeleton props type
type skeletonProps = {
  show: bool,
  variant?: skeletonVariant,
}

// Avatar props type
type avatarProps = {
  src?: string,
  alt?: string,
  fallback?: React.element,
  size?: avatarSize,
  shape?: avatarShape,
  online?: bool,
  leadingSlot?: React.element,
  trailingSlot?: React.element,
}

// External binding to the Avatar component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~src: string=?,
  ~alt: string=?,
  ~fallback: React.element=?,
  ~size: avatarSize=?,
  ~shape: avatarShape=?,
  ~online: bool=?,
  ~onlinePosition: avatarOnlinePosition=?,
  ~leadingSlot: React.element=?,
  ~trailingSlot: React.element=?,
  ~skeleton: skeletonProps=?,
  // Common HTML div attributes
  ~className: string=?,
  ~style: JsxDOM.style=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
  ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
  ~id: string=?,
  ~title: string=?,
  ~role: string=?,
  ~ariaLabel: string=?,
  ~ariaDescribedBy: string=?,
  ~tabIndex: int=?,
) => React.element = "Avatar"
