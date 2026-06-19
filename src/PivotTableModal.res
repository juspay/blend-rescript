@module("@juspay/blend-design-system") @react.component
external make: (
  ~isOpen: bool,
  ~onClose: unit => unit,
  ~data: array<'a>,
  ~columns: array<DataTableTypes.ColumnDefinition2.t>, // ⓘ was `ColumnDefinition<T>` — opaque; build with ColumnDefinition2.fromDataTableColumnsConfig / ColumnDefinition2.fromDataTableColumnsConfig2 / ColumnDefinition2.fromDataTableColumnsConfig3 / ColumnDefinition2.fromDataTableColumnsConfig4 / ColumnDefinition2.fromDataTableColumnsConfig5 / ColumnDefinition2.fromDataTableColumnsConfig6 / ColumnDefinition2.fromDataTableColumnsConfig7 / ColumnDefinition2.fromDataTableColumnsConfig8 / ColumnDefinition2.fromDataTableColumnsConfig9 / ColumnDefinition2.fromDataTableColumnsConfig10
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
