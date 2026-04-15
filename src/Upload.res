// ReScript bindings for Blend Design System Upload component

// Enum type for upload states
type uploadState =
  | @as("idle") Idle
  | @as("uploading") Uploading
  | @as("success") Success
  | @as("error") Error

// Error type for file validation
type fileError = {
  code: string,
  message: string,
}

// File rejection type
type fileRejection = {
  file: Webapi.File.t,
  errors: array<fileError>,
}

// Upload file with progress and status
type uploadFile = {
  file: Webapi.File.t,
  progress: int,
  status: uploadState,
  id: string,
  error?: string,
}

// Uploaded file with final status
type uploadedFileWithStatus = {
  file: Webapi.File.t,
  id: string,
  status: [#success | #error],
  error?: string,
}

// Upload component props
type uploadProps = {
  multiple?: bool,
  accept?: array<string>,
  maxSize?: int,
  maxFiles?: int,
  disabled?: bool,
  required?: bool,
  label?: string,
  subLabel?: string,
  helpIconHintText?: string,
  children?: React.element,
  description?: string,
  className?: string,
  errorText?: string,
  state?: uploadState,
  uploadingFiles?: array<uploadFile>,
  uploadedFiles?: array<uploadedFileWithStatus>,
  failedFiles?: array<uploadedFileWithStatus>,
  enforceFileTypeConsistency?: bool,
  onDrop?: (array<Webapi.File.t>, array<fileRejection>) => unit,
  onDropAccepted?: array<Webapi.File.t> => unit,
  onDropRejected?: array<fileRejection> => unit,
  onFileRemove?: string => unit,
  onReplaceFile?: unit => unit,
  isDragActive?: bool,
  isDragAccept?: bool,
  isDragReject?: bool,
  validator?: Webapi.File.t => option<fileError>,
}

// External binding to the Upload component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~multiple: bool=?,
  ~accept: array<string>=?,
  ~maxSize: int=?,
  ~maxFiles: int=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~label: string=?,
  ~subLabel: string=?,
  ~helpIconHintText: string=?,
  ~children: React.element=?,
  ~description: string=?,
  ~className: string=?,
  ~errorText: string=?,
  ~state: uploadState=?,
  ~uploadingFiles: array<uploadFile>=?,
  ~uploadedFiles: array<uploadedFileWithStatus>=?,
  ~failedFiles: array<uploadedFileWithStatus>=?,
  ~enforceFileTypeConsistency: bool=?,
  ~onDrop: (array<Webapi.File.t>, array<fileRejection>) => unit=?,
  ~onDropAccepted: array<Webapi.File.t> => unit=?,
  ~onDropRejected: array<fileRejection> => unit=?,
  ~onFileRemove: string => unit=?,
  ~onReplaceFile: unit => unit=?,
  ~isDragActive: bool=?,
  ~isDragAccept: bool=?,
  ~isDragReject: bool=?,
  ~validator: Webapi.File.t => option<fileError>=?,
) => React.element = "Upload"

// Helper functions to create objects

let makeFileError = (~code, ~message): fileError => {
  code,
  message,
}

let makeFileRejection = (~file, ~errors): fileRejection => {
  file,
  errors,
}

let makeUploadFile = (~file, ~progress, ~status, ~id, ~error=?): uploadFile => {
  file,
  progress,
  status,
  id,
  ?error,
}

let makeUploadedFileWithStatus = (~file, ~id, ~status, ~error=?): uploadedFileWithStatus => {
  file,
  id,
  status,
  ?error,
}

// Helper function to create upload props
let makeUploadProps = (
  ~multiple=?,
  ~accept=?,
  ~maxSize=?,
  ~maxFiles=?,
  ~disabled=?,
  ~required=?,
  ~label=?,
  ~subLabel=?,
  ~helpIconHintText=?,
  ~children=?,
  ~description=?,
  ~className=?,
  ~errorText=?,
  ~state=?,
  ~uploadingFiles=?,
  ~uploadedFiles=?,
  ~failedFiles=?,
  ~enforceFileTypeConsistency=?,
  ~onDrop=?,
  ~onDropAccepted=?,
  ~onDropRejected=?,
  ~onFileRemove=?,
  ~onReplaceFile=?,
  ~isDragActive=?,
  ~isDragAccept=?,
  ~isDragReject=?,
  ~validator=?,
  (),
): uploadProps => {
  ?multiple,
  ?accept,
  ?maxSize,
  ?maxFiles,
  ?disabled,
  ?required,
  ?label,
  ?subLabel,
  ?helpIconHintText,
  ?children,
  ?description,
  ?className,
  ?errorText,
  ?state,
  ?uploadingFiles,
  ?uploadedFiles,
  ?failedFiles,
  ?enforceFileTypeConsistency,
  ?onDrop,
  ?onDropAccepted,
  ?onDropRejected,
  ?onFileRemove,
  ?onReplaceFile,
  ?isDragActive,
  ?isDragAccept,
  ?isDragReject,
  ?validator,
}

// Common file types for accept prop
module FileTypes = {
  let image = ["image/*"]
  let pdf = ["application/pdf"]
  let document = [
    "application/pdf",
    "application/msword",
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
  ]
  let spreadsheet = [
    "application/vnd.ms-excel",
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
  ]
  let text = ["text/plain", "text/csv"]
  let json = ["application/json"]
  let xml = ["application/xml", "text/xml"]
}
