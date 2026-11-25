// #190: compatibility re-exports — these identities moved to another module when a
// dependency cycle merged this home. Old `InputsV2Types.<name>` annotations keep resolving, and enum constructors with them (#241).
type uploadErrorReasonValue2 = HighchartsSharedSharedTypes.uploadErrorReasonValue2 =
  | @as("oversized") Oversized
  | @as("maxFiles") MaxFiles
  | @as("invalidType") InvalidType
type uploadStateInputsV22 = HighchartsSharedSharedTypes.uploadStateInputsV22 =
  | @as("idle") Idle
  | @as("uploading") Uploading
  | @as("success") Success
  | @as("error") Error
  | @as("disabled") Disabled
type inputsV2UploadErrorReasonConfig2 = HighchartsSharedSharedTypes.inputsV2UploadErrorReasonConfig2
type inputsV2LeftSlotConfig = HighchartsSharedSharedTypes.inputsV2LeftSlotConfig
type inputsV2LeftSlotConfig2 = HighchartsSharedSharedTypes.inputsV2LeftSlotConfig2
type inputsV2LabelConfig2 = HighchartsSharedSharedTypes.inputsV2LabelConfig2
type inputsV2SlotConfig2 = HighchartsSharedSharedTypes.inputsV2SlotConfig2
