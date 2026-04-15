type codeEditorVariant =
  | @as("default") Default
  | @as("no-gutter") NoGutter

type supportedLanguage =
  | @as("javascript") JavaScript
  | @as("typescript") TypeScript
  | @as("json") Json
  | @as("xml") Xml
  | @as("html") Html
  | @as("css") Css
  | @as("python") Python
  | @as("java") Java
  | @as("csharp") CSharp
  | @as("cpp") Cpp
  | @as("c") C
  | @as("php") Php
  | @as("ruby") Ruby
  | @as("go") Go
  | @as("rust") Rust
  | @as("sql") Sql
  | @as("bash") Bash
  | @as("shell") Shell
  | @as("yaml") Yaml
  | @as("markdown") Markdown
  | @as("text") Text

type codeEditorProps = {
  value: string,
  onChange?: string => unit,
  variant?: codeEditorVariant,
  showLineNumbers?: bool,
  showHeader?: bool,
  header?: string,
  headerLeftSlot?: React.element,
  headerRightSlot?: React.element,
  showCopyButton?: bool,
  language?: supportedLanguage,
  placeholder?: string,
  readOnly?: bool,
  disabled?: bool,
  minHeight?: string,
  maxHeight?: string,
  height?: string,
  className?: string,
  onBlur?: unit => unit,
  onFocus?: unit => unit,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~value: string,
  ~onChange: string => unit=?,
  ~variant: codeEditorVariant=?,
  ~showLineNumbers: bool=?,
  ~showHeader: bool=?,
  ~header: string=?,
  ~headerLeftSlot: React.element=?,
  ~headerRightSlot: React.element=?,
  ~showCopyButton: bool=?,
  ~language: supportedLanguage=?,
  ~placeholder: string=?,
  ~readOnly: bool=?,
  ~disabled: bool=?,
  ~minHeight: string=?,
  ~maxHeight: string=?,
  ~height: string=?,
  ~className: string=?,
  ~onBlur: unit => unit=?,
  ~onFocus: unit => unit=?,
  ~style: JsxDOM.style=?,
  ~id: string=?,
  ~dataTestId: string=?,
  ~children: React.element=?,
) => React.element = "CodeEditor"
