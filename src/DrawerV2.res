type props<'a, 'b> = {
  activeSnapPoint?: Nullable.t<CommonTypes.stringOrNumber2>,
  setActiveSnapPoint?: Nullable.t<CommonTypes.stringOrNumber2> => unit,
  children?: React.element,
  @as("open") open_?: bool,
  closeThreshold?: float,
  noBodyStyles?: bool,
  onOpenChange?: bool => unit,
  shouldScaleBackground?: bool,
  setBackgroundColorOnScale?: bool,
  scrollLockTimeout?: float,
  fixed?: bool,
  handleOnly?: bool,
  dismissible?: bool,
  onDrag?: ('a, float) => unit, // ⓘ a parameter type could not be modelled — received as a type variable; annotate at the call site
  onRelease?: ('b, bool) => unit, // ⓘ a parameter type could not be modelled — received as a type variable; annotate at the call site
  modal?: bool,
  nested?: bool,
  onClose?: unit => unit,
  direction?: HighchartsSharedSharedTypes.dateRangePickerDateRangePickerPopoverConfigSide,
  defaultOpen?: bool,
  disablePreventScroll?: bool,
  repositionInputs?: bool,
  snapToSequentialPoint?: bool,
  container?: Nullable.t<Dom.element>,
  onAnimationEnd?: bool => unit,
  preventScrollRestoration?: bool,
  autoFocus?: bool,
  snapPoints?: array<CommonTypes.stringOrNumber2>,
  fadeFromIndex?: float,
  ref?: React.ref<Nullable.t<Dom.element>>,
}

@module("@juspay/blend-design-system")
external make: React.component<props<'a, 'b>> = "DrawerV2"
