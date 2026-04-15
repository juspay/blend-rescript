type rec navbarItem = {
  label: string,
  items?: array<navbarItem>,
  leftSlot?: React.element,
  rightSlot?: React.element,
  onClick?: unit => unit,
  isSelected?: bool,
  href?: string,
}

type directoryData = {
  label?: string,
  items?: array<navbarItem>,
  isCollapsible?: bool,
  defaultOpen?: bool,
}

// Sidebar specific types
type sidebarNavItem = {
  label: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  onClick?: unit => unit,
}

type sidebarNavSection = {
  label?: string,
  navItems: array<sidebarNavItem>,
}

type merchantData = {
  label: string,
  sections: array<sidebarNavSection>,
}

type tenantData = {
  label: string,
  icon: React.element,
  merchantData: array<merchantData>,
}

type tenantInfo = {
  label: string,
  icon: React.element,
  id?: string,
}

type merchantInfo = {
  label: string,
  icon: React.element,
  id?: string,
}

type leftPanelItem = {
  label: string,
  icon: React.element,
  value?: string,
  showInPanel?: bool,
}

type leftPanelInfo = {
  items: array<leftPanelItem>,
  selected: string,
  onSelect: string => unit,
  tenantSlot1?: React.element,
  tenantSlot2?: React.element,
  tenantFooter?: React.element,
}

type sidebarState =
  | @as("collapsed") Collapsed
  | @as("expanded") Expanded
  | @as("indeterminate") Indeterminate

// External binding to the Sidebar component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~children: React.element,
  ~data: array<directoryData>,
  ~leftPanel: leftPanelInfo=?,
  ~topbar: React.element,
  ~footer: React.element=?,
  ~sidebarTopSlot: React.element=?,
  ~sidebarCollapseKey: string=?,
  ~merchantInfo: merchantInfo=?,
  ~rightActions: React.element=?,
  ~enableTopbarAutoHide: bool=?,
  ~panelOnlyMode: bool=?,
  ~isExpanded: bool=?,
  ~onExpandedChange: bool => unit=?,
  ~onSidebarStateChange: sidebarState => unit=?,
  ~showLeftPanel: bool=?,
  ~defaultIsExpanded: bool=?,
  // Common HTML div attributes
  ~className: string=?,
  ~id: string=?,
) => React.element = "Sidebar"

// Helper functions
let makeTenantInfo = (~label: string, ~icon: React.element, ~id: option<string>=?): tenantInfo => {
  label,
  icon,
  id: id->Belt.Option.getWithDefault(""),
}

let makeMerchantInfo = (
  ~label: string,
  ~icon: React.element,
  ~id: option<string>=?,
): merchantInfo => {
  label,
  icon,
  id: id->Belt.Option.getWithDefault(""),
}

let makeSidebarNavItem = (
  ~label: string,
  ~leftSlot=?,
  ~rightSlot=?,
  ~onClick=?,
): sidebarNavItem => {
  label,
  leftSlot: leftSlot->Belt.Option.getWithDefault(React.null),
  rightSlot: rightSlot->Belt.Option.getWithDefault(React.null),
  onClick: onClick->Belt.Option.getWithDefault(() => ()),
}

let makeDirectoryData = (~label=?, ~items=?, ~isCollapsible=?, ~defaultOpen=?): directoryData => {
  label: label->Belt.Option.getWithDefault(""),
  items: items->Belt.Option.getWithDefault([]),
  isCollapsible: isCollapsible->Belt.Option.getWithDefault(false),
  defaultOpen: defaultOpen->Belt.Option.getWithDefault(false),
}

// Helper function to convert tenantInfo to leftPanelItem
let tenantInfoToLeftPanelItem = (tenant: tenantInfo): leftPanelItem => {
  label: tenant.label,
  icon: tenant.icon,
  value: tenant.id->Belt.Option.getWithDefault(tenant.label),
}

// Helper function to create leftPanelInfo from tenants
let makeLeftPanelFromTenants = (
  ~tenants: array<tenantInfo>,
  ~selected: string,
  ~onSelect: string => unit,
): leftPanelInfo => {
  items: tenants->Array.map(mapItem => mapItem->tenantInfoToLeftPanelItem),
  selected,
  onSelect,
}
