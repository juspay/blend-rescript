// Button variant types
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
type buttonGroupPosition =
  | @as("center") Center
  | @as("left") Left
  | @as("right") Right
type buttonType =
  | @as("button") Button
  | @as("submit") Submit
  | @as("reset") Reset
type buttonState =
  | @as("default") DEFAULT
  | @as("hover") HOVER
  | @as("active") ACTIVE
  | @as("disabled") DISABLED

type buttonProps = {
  variant: buttonVariant,
  size?: buttonSize,
  disabled?: bool,
  text?: string,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  // Core Button props from Blend API
  ~buttonType: buttonVariant=?,
  ~size: buttonSize=?,
  ~subType: buttonSubType=?,
  ~text: string=?,
  ~leadingIcon: React.element=?,
  ~trailingIcon: React.element=?,
  ~isLoading: bool=?,
  ~isDisabled: bool=?,
  ~disabled: bool=?,
  ~onClick: JsxEvent.Mouse.t => unit=?,
  ~loading: bool=?,
  ~buttonGroupPosition: buttonGroupPosition=?,
  ~fullWidth: bool=?,
  ~width: string=?,
  ~justifyContent: string=?,
  ~showSkeleton: bool=?,
  // HTML Button attributes (from ButtonHTMLAttributes<HTMLButtonElement>)
  ~id: string=?,
  ~className: string=?,
  ~style: JsxDOM.style=?,
  @as("type") ~type_: buttonType=?,
  ~name: string=?,
  ~value: string=?,
  ~autoFocus: bool=?,
  ~form: string=?,
  ~formAction: string=?,
  ~formEncType: string=?,
  ~formMethod: string=?,
  ~formNoValidate: bool=?,
  ~formTarget: string=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~onMouseDown: ReactEvent.Mouse.t => unit=?,
  ~onMouseUp: ReactEvent.Mouse.t => unit=?,
  ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
  ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?,
  ~onKeyUp: ReactEvent.Keyboard.t => unit=?,
  ~tabIndex: int=?,
  ~title: string=?,
  ~role: string=?,
  @as("aria-label") ~ariaLabel: string=?,
  ~ariaDescribedBy: string=?,
  ~ariaExpanded: bool=?,
  ~ariaHaspopup: bool=?,
  ~ariaPressed: bool=?,
  ~dataTestId: string=?,
  // Children
  ~children: React.element=?,
  ~loadingText: string=?,
  ~state: buttonState=?,
) => React.element = "Button"
