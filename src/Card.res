// Card variant types
type cardVariant =
  | @as("default") Default
  | @as("aligned") Aligned
  | @as("custom") Custom

// Card alignment types
type cardAlignment =
  | @as("vertical") Vertical
  | @as("horizontal") Horizontal

// Skeleton variant type
type skeletonVariant =
  | @as("pulse") Pulse
  | @as("wave") Wave

// Skeleton props type
type skeletonProps = {
  show: bool,
  variant?: skeletonVariant,
}

// Import button types from ButtonBinding
open ButtonBinding

// Button props from ButtonBinding
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
  buttonGroupPosition?: buttonGroupPosition,
  fullWidth?: bool,
  justifyContent?: string,
  id?: string,
  className?: string,
  style?: JsxDOM.style,
  @as("type") type_?: buttonType,
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

// Default card props
type defaultCardProps = {
  variant?: cardVariant,
  headerSlot1?: React.element,
  headerTitle?: string,
  headerTag?: React.element,
  headerSlot2?: React.element,
  subHeader?: string,
  bodySlot1?: React.element,
  bodyTitle?: string,
  content?: React.element,
  bodySlot2?: React.element,
  actionButton?: buttonV2Props,
}

// Aligned card props
type alignedCardProps = {
  variant: cardVariant,
  alignment: cardAlignment,
  centerAlign?: bool,
  cardSlot?: React.element,
  headerTitle?: string,
  headerTag?: React.element,
  headerSlot2?: React.element,
  subHeader?: string,
  bodySlot1?: React.element,
  bodyTitle?: string,
  content?: React.element,
  actionButton?: buttonV2Props,
}

// Custom card props
type customCardProps = {
  variant: cardVariant,
  children: React.element,
}

// External binding to the Card component
@module("@juspay/blend-design-system") @react.component
external make: (
  // Common props
  ~maxWidth: string=?,
  ~maxHeight: string=?,
  ~minHeight: string=?,
  ~skeleton: skeletonProps=?,
  // Default variant props
  ~variant: cardVariant=?,
  ~headerSlot1: React.element=?,
  ~headerTitle: string=?,
  ~headerTag: React.element=?,
  ~headerSlot2: React.element=?,
  ~subHeader: string=?,
  ~bodySlot1: React.element=?,
  ~bodyTitle: string=?,
  ~content: React.element=?,
  ~bodySlot2: React.element=?,
  ~actionButton: buttonV2Props=?,
  // Aligned variant props
  ~alignment: cardAlignment=?,
  ~centerAlign: bool=?,
  ~cardSlot: React.element=?,
  // Custom variant props
  ~children: React.element=?,
) => React.element = "Card"
