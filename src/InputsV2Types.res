type uploadErrorReasonValue2 =
  | @as("oversized") Oversized
  | @as("maxFiles") MaxFiles
  | @as("invalidType") InvalidType
type uploadStateInputsV22 =
  | @as("idle") Idle
  | @as("uploading") Uploading
  | @as("success") Success
  | @as("error") Error
  | @as("disabled") Disabled
type inputsV2UploadErrorReasonConfig2 = {
  @as("OVERSIZED") oversized: string,
  @as("MAX_FILES") maxFiles: string,
  @as("INVALID_TYPE") invalidType: string,
}
type inputsV2LeftSlotConfig = {
  slot: React.element,
  maxHeight?: string,
}
type inputsV2LeftSlotConfig2 = inputsV2LeftSlotConfig
type inputsV2LabelConfig2 = {
  text: string,
  subtext?: string,
}
type inputsV2SlotConfig2 = {
  left?: React.element,
  right?: React.element,
}
