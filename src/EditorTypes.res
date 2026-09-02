type positionAffinity2 =
  | @as(0) Left
  | @as(1) Right
  | @as(2) None
  | @as(3) LeftOfInjectedText
  | @as(4) RightOfInjectedText
type __typeV1ia5a = {
  scheme?: string,
  authority?: Nullable.t<string>,
  path?: Nullable.t<string>,
  query?: Nullable.t<string>,
  fragment?: Nullable.t<string>,
}
type iEditorContribution = {
  dispose: unit => unit,
  saveViewState?: unit => string, // 🛑 BROKEN — contains `any`
  restoreViewState?: string => unit, // 🛑 BROKEN — contains `any`
}
