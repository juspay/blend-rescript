// Import types from AvatarBinding
open Avatar

// Avatar data type for avatar group items
type avatarData = {
  id: string, // Can be string or number, but we'll use string for simplicity
  src?: string,
  alt?: string,
  fallback?: React.element,
  size?: avatarSize,
  shape?: avatarShape,
  online?: bool,
  leadingSlot?: React.element,
  trailingSlot?: React.element,
}

// Avatar group props type
type avatarGroupProps = {
  avatars: array<avatarData>,
  maxCount?: int,
  size?: avatarSize,
  shape?: avatarShape,
  selectedAvatarIds?: array<string>,
  onSelectionChange?: array<string> => unit,
}

// External binding to the AvatarGroup component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~avatars: array<avatarData>,
  ~maxCount: int=?,
  ~size: avatarSize=?,
  ~shape: avatarShape=?,
  ~selectedAvatarIds: array<string>=?,
  ~onSelectionChange: array<string> => unit=?,
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
) => React.element = "AvatarGroup"

// Helper function to create avatar data easily
let makeAvatarData = (
  ~id: string,
  ~src: option<string>=?,
  ~alt: option<string>=?,
  ~fallback: option<React.element>=?,
  ~size: option<avatarSize>=?,
  ~shape: option<avatarShape>=?,
  ~online: option<bool>=?,
  ~leadingSlot: option<React.element>=?,
  ~trailingSlot: option<React.element>=?,
  (),
): avatarData => {
  id,
  ?src,
  ?alt,
  ?fallback,
  ?size,
  ?shape,
  ?online,
  ?leadingSlot,
  ?trailingSlot,
}
