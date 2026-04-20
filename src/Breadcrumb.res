// Breadcrumb variant type
type breadcrumbVariant =
  | @as("default") Default
  | @as("truncated") Truncated

// Skeleton variant type
type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave

// Breadcrumb skeleton props type
type breadcrumbSkeletonProps = {
  show: bool,
  variant: skeletonVariant,
}

// Breadcrumb item props type - extended to support existing usage
type breadcrumbItemProps = {
  label: string,
  href: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  onClick?: JsxEvent.Mouse.t => unit,
  isActive?: bool,
}

// External binding to the Breadcrumb component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~items: array<breadcrumbItemProps>,
  ~variant: breadcrumbVariant=?,
  ~skeleton: breadcrumbSkeletonProps=?,
) => React.element = "Breadcrumb"

// Helper function to create breadcrumb items
let makeItem = (
  ~label: string,
  ~href: string,
  ~leftSlot: option<React.element>=?,
  ~rightSlot: option<React.element>=?,
  ~onClick: option<JsxEvent.Mouse.t => unit>=?,
  ~isActive: option<bool>=?,
  (),
): breadcrumbItemProps => {
  {
    label,
    href,
    ?leftSlot,
    ?rightSlot,
    ?onClick,
    ?isActive,
  }
}
