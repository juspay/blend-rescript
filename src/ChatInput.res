type attachedFileType =
  | @as("image") Image
  | @as("pdf") Pdf
  | @as("csv") Csv
  | @as("text") Text
  | @as("other") Other

type attachedFile = {
  id: string,
  name: string,
  @as("type") type_: attachedFileType,
  size: int,
  url: string,
  preview: string,
}

type topQuery = {
  id: string,
  text: string,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~value: string=?,
  ~onChange: string => unit=?,
  ~onSend: (string, array<attachedFile>) => unit=?,
  ~onAttachFiles: array<Webapi.File.t> => unit=?,
  ~onVoiceRecord: unit => unit=?,
  ~onFileRemove: string => unit=?,
  ~onFileClick: attachedFile => unit=?,
  ~placeholder: string=?,
  ~disabled: bool=?,
  ~maxLength: int=?,
  ~autoResize: bool=?,
  ~attachedFiles: array<attachedFile>=?,
  ~topQueries: array<topQuery>=?,
  ~onTopQuerySelect: topQuery => unit=?,
  ~topQueriesMaxHeight: int=?,
  ~attachButtonIcon: React.element=?,
  ~voiceButtonIcon: React.element=?,
  ~sendButtonIcon: React.element=?,
  ~slot1: React.element=?,
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?,
) => React.element = "ChatInput"
