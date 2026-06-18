@module("@juspay/blend-design-system") @react.component
external make: (
  ~enabled: bool=?,
  ~hasItems: bool,
  ~backgroundColor: string,
  ~searchPlaceholder: string,
  ~searchText: string,
  ~onSearchTextChange: string => unit,
  ~searchInputRef: React.ref<Nullable.t<Dom.htmlInputElement>>,
  ~containerRef: React.ref<Nullable.t<Dom.htmlDivElement>>=?,
) => React.element = "SingleSelectV2Search"
