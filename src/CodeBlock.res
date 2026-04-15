type codeBlockVariant =
  | @as("default") Default
  | @as("no-gutter") NoGutter
  | @as("diff") Diff

type diffLineType =
  | @as("added") Added
  | @as("removed") Removed
  | @as("unchanged") Unchanged

type diffLine = {
  content: string,
  @as("type") type_: diffLineType,
}

type codeBlockProps = {
  code: string,
  variant?: codeBlockVariant,
  showLineNumbers?: bool,
  showHeader?: bool,
  header?: string,
  headerLeftSlot?: React.element,
  headerRightSlot?: React.element,
  diffLines?: array<diffLine>,
  autoFormat?: bool,
  language?: string,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~code: string,
  ~variant: codeBlockVariant=?,
  ~showLineNumbers: bool=?,
  ~showHeader: bool=?,
  ~header: string=?,
  ~headerLeftSlot: React.element=?,
  ~headerRightSlot: React.element=?,
  ~diffLines: array<diffLine>=?,
  ~autoFormat: bool=?,
  ~language: string=?,
  ~className: string=?,
  ~style: JsxDOM.style=?,
  ~id: string=?,
  ~dataTestId: string=?,
  ~maxHeight: string=?,
  ~children: React.element=?,
  ~isDiffUnchangedCollapsed: bool=?,
  ~diffContextLines: int=?,
  ~diffExpandChunk: int=?,
) => React.element = "CodeBlock"

// Helper functions to create objects
let makeDiffLine = (~content, ~type_): diffLine => {
  content,
  type_,
}

// Variant constants for easy access
module CodeBlockVariant = {
  let default = Default
  let noGutter = NoGutter
  let diff = Diff
}

// Diff line type constants
module DiffLineType = {
  let added = Added
  let removed = Removed
  let unchanged = Unchanged
}
