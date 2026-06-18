@module("@juspay/blend-design-system") @react.component
external make: (
  ~isOpen: bool,
  ~onClose: unit => unit,
  ~data: array<'a>,
  ~columns: string, // ⚪ loose — was `ColumnDefinition<T>[]`
  ~title: string=?,
  ~description: string=?,
  ~showExport: bool=?,
  ~initialConfig: DataTableTypes.dataTableInitialConfigConfig=?,
  ~previewColumns: array<DataTableTypes.dataTablePreviewColumnsConfig>=?,
  ~previewRows: array<DataTableTypes.pivotPreviewRow>=?,
  ~onConfigChange: DataTableTypes.dataTableOnConfigChangeConfig => unit=?,
  ~onExport: DataTableTypes.dataTableOnConfigChangeConfig => unit=?,
  ~trigger: React.element=?,
  ~onTriggerClick: unit => unit=?,
  ~availableAggregations: array<DataTableTypes.pivotAggregationType>=?,
) => React.element = "PivotTableModal"
