// External binding to Blend Directory component
// This is the pure navigation component without layout

// Re-use the existing types from SidebarBinding since they're compatible
open Sidebar

// External binding to the Directory component from Blend
@module("@juspay/blend-design-system/dist/components/Directory") @react.component
external make: (~directoryData: array<directoryData>, ~className: string=?) => React.element =
  "default"
