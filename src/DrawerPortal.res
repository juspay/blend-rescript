type props = {
  children?: React.element,
  container?: Dom.element, // ⓘ was `Element | DocumentFragment` — bound to Dom.element; a DocumentFragment/ShadowRoot target is not supported
  forceMount?: bool,
}

@module("@juspay/blend-design-system")
external make: React.component<props> = "DrawerPortal"
