type codeEditorV2Variant =
  | @as("default") Default
  | @as("no-gutter") NoGutter
  | @as("diff") Diff
type supportedLanguage =
  | @as("html") Html
  | @as("javascript") Javascript
  | @as("typescript") Typescript
  | @as("jsx") Jsx
  | @as("tsx") Tsx
  | @as("json") Json
  | @as("css") Css
  | @as("markdown") Markdown
  | @as("yaml") Yaml
  | @as("python") Python
  | @as("rust") Rust
  | @as("haskell") Haskell
type theme =
  | @as("light") Light
  | @as("dark") Dark
type codeEditorV2HeaderConfig = {
  showHeader?: bool,
  title?: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  showCopyButton?: bool,
}
type codeEditorV2IconConfig = {
  width: string,
}
type codeEditorV2TextConfig = {
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
  color: string,
}
type codeEditorV2HeaderConfig2 = {
  backgroundColor: string,
  borderBottom: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  gap: string,
  icon: codeEditorV2IconConfig,
  text: codeEditorV2TextConfig,
}
type codeEditorV2BackgroundColorConfig = {
  added: string,
  removed: string,
  unchanged: string,
}
type codeEditorV2GutterConfig = {
  width: string,
  color: string,
  backgroundColor: codeEditorV2BackgroundColorConfig,
  borderLeft: codeEditorV2BackgroundColorConfig,
  borderColor: codeEditorV2BackgroundColorConfig,
}
type codeEditorV2CodeConfig = {
  fontFamily: string,
  fontSize: string,
  lineHeight: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
}
type codeEditorV2HighlightedLineConfig = {
  backgroundColor: codeEditorV2BackgroundColorConfig,
}
type codeEditorV2KeywordConfig = {
  color: string,
}
type codeEditorV2SyntaxConfig = {
  keyword: codeEditorV2KeywordConfig,
  function: codeEditorV2KeywordConfig,
  string: codeEditorV2KeywordConfig,
  number: codeEditorV2KeywordConfig,
  operator: codeEditorV2KeywordConfig,
  variable: codeEditorV2KeywordConfig,
  comment: codeEditorV2KeywordConfig,
  text: codeEditorV2KeywordConfig,
}
type codeEditorV2BodyConfig = {
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  backgroundColor: string,
  gutter: codeEditorV2GutterConfig,
  code: codeEditorV2CodeConfig,
  highlightedLine: codeEditorV2HighlightedLineConfig,
  syntax: codeEditorV2SyntaxConfig,
}
type codeEditorV2Tokens = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  boxShadow: string,
  theme: theme,
  header: codeEditorV2HeaderConfig2,
  body: codeEditorV2BodyConfig,
}
type responsiveCodeEditorV2Tokens = {
  sm: codeEditorV2Tokens,
  lg: codeEditorV2Tokens,
}
