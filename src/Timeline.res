// Timeline status enum
type timelineNodeStatus =
  | @as("success") Success
  | @as("warning") Warning
  | @as("error") Error
  | @as("neutral") Neutral

// Timeline user type
type timelineUser = {
  name: string,
  avatar?: string,
  fallbackText?: string,
}

// Line position options
type linePositionOptions = {
  indicatorHeightPx: int,
  indicatorTopPx: int,
  labelCircleHeightPx: int,
}

// Line layout
type lineLayout = {
  top: int,
  height: int,
}

// Avatar props reference (from AvatarBinding)
type avatarSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
  | @as("xl") Xl

type avatarShape =
  | @as("circular") Circular
  | @as("rounded") Rounded

// Button props reference (from ButtonBinding)
type buttonVariant =
  | @as("primary") Primary
  | @as("secondary") Secondary
  | @as("danger") Danger
  | @as("success") Success

type buttonSize =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg

type buttonSubType =
  | @as("default") Default
  | @as("iconOnly") IconOnly
  | @as("inline") Inline

type buttonV2Props = {
  buttonType?: buttonVariant,
  size?: buttonSize,
  subType?: buttonSubType,
  text?: string,
  leadingIcon?: React.element,
  trailingIcon?: React.element,
  isLoading?: bool,
  isDisabled?: bool,
  disabled?: bool,
  onClick?: unit => unit,
  loading?: bool,
  fullWidth?: bool,
  justifyContent?: string,
  id?: string,
  className?: string,
  style?: JsxDOM.style,
  @as("type") type_?: string,
  name?: string,
  value?: string,
  autoFocus?: bool,
  form?: string,
  formAction?: string,
  formEncType?: string,
  formMethod?: string,
  formNoValidate?: bool,
  formTarget?: string,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  onMouseDown?: ReactEvent.Mouse.t => unit,
  onMouseUp?: ReactEvent.Mouse.t => unit,
  onMouseEnter?: ReactEvent.Mouse.t => unit,
  onMouseLeave?: ReactEvent.Mouse.t => unit,
  onKeyDown?: ReactEvent.Keyboard.t => unit,
  onKeyUp?: ReactEvent.Keyboard.t => unit,
  tabIndex?: int,
  title?: string,
  role?: string,
  ariaLabel?: string,
  ariaDescribedBy?: string,
  ariaExpanded?: bool,
  ariaHaspopup?: bool,
  ariaPressed?: bool,
  dataTestId?: string,
  children?: React.element,
}

type avatarV2Props = {
  src?: string,
  alt?: string,
  size?: avatarSize,
  shape?: avatarShape,
  fallbackText?: string,
  className?: string,
  style?: JsxDOM.style,
}

// Timeline comment data
type timelineCommentData = {
  id: string,
  text: string,
  user: {
    name: string,
    avatar?: string,
    fallbackText?: string,
  },
  timestamp: string,
}

// Timeline substep data
type timelineSubstepData = {
  id: string,
  title: string,
  description?: string,
  timestamp: string,
}

// Timeline header data
type timelineHeaderData = {
  id: string,
  title: string,
  status?: string,
  timestamp: string,
  substeps?: array<timelineSubstepData>,
  comments?: array<timelineCommentData>,
}

// Timeline label data
type timelineLabelData = {
  id: string,
  date: string,
  headers?: array<timelineHeaderData>,
  comments?: array<timelineCommentData>,
}

// Timeline item data
type timelineItemData = {
  label?: timelineLabelData,
  header?: timelineHeaderData,
  comment?: timelineCommentData,
}

// Timeline Root component
module Root = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~children: React.element,
    ~className: string=?,
    ~style: JsxDOM.style=?,
    ~id: string=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
  ) => React.element = "Timeline"
}

// Timeline Label component
module Label = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~text: string,
    ~className: string=?,
    ~style: JsxDOM.style=?,
  ) => React.element = "TimelineLabel"
}

// Timeline Header component
module Header = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~title: string,
    ~status: timelineNodeStatus=?,
    ~timestamp: string=?,
    ~children: React.element=?,
    ~leftSlot: React.element=?,
    ~rightSlot: React.element=?,
    ~className: string=?,
    ~style: JsxDOM.style=?,
    ~id: string=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
  ) => React.element = "TimelineHeader"
}

// Timeline Substep component
module Substep = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~title: string,
    ~isNestedUnderHeader: bool=?,
    ~showIndicator: bool=?,
    ~description: string=?,
    ~timestamp: string=?,
    ~rightSlot: React.element=?,
    ~datetimeLeftSlot: React.element=?,
    ~datetimeRightSlot: React.element=?,
    ~className: string=?,
    ~style: JsxDOM.style=?,
    ~id: string=?,
  ) => React.element = "TimelineSubstep"
}

// Timeline Node component
module Node = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~title: string=?,
    ~leftSlot: React.element=?,
    ~headerRightSlot: React.element=?,
    ~datetime: string=?,
    ~datetimeLeftSlot: React.element=?,
    ~datetimeRightSlot: React.element=?,
    ~text: string=?,
    ~maxLines: int=?,
    ~user: timelineUser=?,
    ~avatarProps: avatarV2Props=?,
    ~time: string=?,
    ~status: timelineNodeStatus=?,
    ~children: React.element=?,
    ~className: string=?,
    ~style: JsxDOM.style=?,
    ~id: string=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
  ) => React.element = "TimelineNode"
}

// Timeline ShowMore component
module ShowMore = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~count: int,
    ~label: string=?,
    ~onShowMore: unit => unit=?,
    ~buttonProps: buttonV2Props=?,
    ~className: string=?,
    ~style: JsxDOM.style=?,
  ) => React.element = "TimelineShowMore"
}

// Main Timeline component (re-exports Root as default)
@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~className: string=?,
  ~style: JsxDOM.style=?,
  ~id: string=?,
) => React.element = "Timeline"
