type stepState =
  | @as("completed") Completed
  | @as("current") Current
  | @as("pending") Pending
  | @as("disabled") Disabled
  | @as("skipped") Skipped
type stepperType =
  | @as("horizontal") Horizontal
  | @as("vertical") Vertical
type stepperDefaultConfig = {
  gap: string,
}
type stepperContainerConfig = {
  default: stepperDefaultConfig,
}
type stepperDefaultConfig2 = {
  backgroundColor: string,
  borderColor: string,
  borderWidth: string,
  borderRadius: string,
  size: string,
  transition: string,
  outline: string,
  outlineOffset: string,
}
type stepperCompletedConfig = {
  default: stepperDefaultConfig2,
  hover: stepperDefaultConfig2,
  disabled: stepperDefaultConfig2,
  focus: stepperDefaultConfig2,
}
type stepperCircleConfig = {
  completed: stepperCompletedConfig,
  current: stepperCompletedConfig,
  pending: stepperCompletedConfig,
  disabled: stepperCompletedConfig,
  skipped: stepperCompletedConfig,
}
type stepperDefaultConfig3 = {
  color: string,
}
type stepperCompletedConfig2 = {
  default: stepperDefaultConfig3,
  hover: stepperDefaultConfig3,
  disabled: stepperDefaultConfig3,
  focus: stepperDefaultConfig3,
}
type stepperIconConfig = {
  completed: stepperCompletedConfig2,
  current: stepperCompletedConfig2,
  pending: stepperCompletedConfig2,
  disabled: stepperCompletedConfig2,
  skipped: stepperCompletedConfig2,
}
type stepperStepConfig = {
  circle: stepperCircleConfig,
  icon: stepperIconConfig,
}
type stepperDefaultConfig4 = {
  color: string,
  height: string,
}
type stepperActiveConfig = {
  default: stepperDefaultConfig4,
}
type stepperLineConfig = {
  active: stepperActiveConfig,
  inactive: stepperActiveConfig,
}
type stepperConnectorConfig = {
  line: stepperLineConfig,
}
type stepperDefaultConfig5 = {
  color: string,
  fontSize: string,
  fontWeight: string,
  gap: string,
}
type stepperCompletedConfig3 = {
  default: stepperDefaultConfig5,
  hover: stepperDefaultConfig5,
  disabled: stepperDefaultConfig5,
  focus: stepperDefaultConfig5,
}
type stepperTextConfig = {
  completed: stepperCompletedConfig3,
  current: stepperCompletedConfig3,
  pending: stepperCompletedConfig3,
  disabled: stepperCompletedConfig3,
  skipped: stepperCompletedConfig3,
}
type stepperTitleConfig = {
  text: stepperTextConfig,
}
type stepperTokensType = {
  container: stepperContainerConfig,
  step: stepperStepConfig,
  connector: stepperConnectorConfig,
  title: stepperTitleConfig,
}
type responsiveStepperTokens = {
  sm: stepperTokensType,
  lg: stepperTokensType,
}
type subStep = {
  id: float,
  title: string,
  status?: stepState,
  disabled?: bool,
  slot?: React.element,
}
type step = {
  id: float,
  title: string,
  status?: stepState,
  disabled?: bool,
  description?: string,
  icon?: React.element,
  slot?: React.element,
  substeps?: array<subStep>,
  isExpandable?: bool,
  isExpanded?: bool,
}
