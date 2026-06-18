type stepperV2StepStatus =
  | @as("default") Default
  | @as("completed") Completed
  | @as("current") Current
  | @as("pending") Pending
  | @as("disabled") Disabled
  | @as("skipped") Skipped
type stepperV2Type =
  | @as("horizontal") Horizontal
  | @as("vertical") Vertical
type stepperV2DefaultConfig = {
  default: string,
  hover: string,
  disabled: string,
  focus: string,
}
type stepperV2CircleConfig = {
  default: stepperV2DefaultConfig,
  completed: stepperV2DefaultConfig,
  current: stepperV2DefaultConfig,
  pending: stepperV2DefaultConfig,
  disabled: stepperV2DefaultConfig,
  skipped: stepperV2DefaultConfig,
}
type stepperV2StepConfig = {
  circle: stepperV2CircleConfig,
  icon: stepperV2CircleConfig,
}
type stepperV2LineConfig = {
  color: string,
  height: string,
}
type stepperV2ConnectorConfig = {
  line: stepperV2LineConfig,
}
type stepperV2DotConfig = {
  border: string,
  borderRadius: string,
  height: string,
  width: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type stepperV2IconConfig = {
  color: string,
}
type stepperV2ExpanderConfig = {
  icon: stepperV2IconConfig,
  width: string,
}
type stepperV2DefaultConfig2 = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type stepperV2TextConfig = {
  default: stepperV2DefaultConfig2,
  completed: stepperV2DefaultConfig2,
  current: stepperV2DefaultConfig2,
  pending: stepperV2DefaultConfig2,
  disabled: stepperV2DefaultConfig2,
  skipped: stepperV2DefaultConfig2,
}
type stepperV2SubConnectorConfig = {
  line: stepperV2LineConfig,
  dot: stepperV2DotConfig,
  expander: stepperV2ExpanderConfig,
  text: stepperV2TextConfig,
}
type stepperV2TitleConfig = {
  text: stepperV2CircleConfig,
}
type stepperV2TextConfig2 = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type stepperV2DescriptionConfig = {
  text: stepperV2TextConfig2,
}
type stepperV2ContainerConfig = {
  gap: string,
  step: stepperV2StepConfig,
  connector: stepperV2ConnectorConfig,
  subConnector: stepperV2SubConnectorConfig,
  title: stepperV2TitleConfig,
  description: stepperV2DescriptionConfig,
}
type stepperV2TokensType = {
  container: stepperV2ContainerConfig,
}
type responsiveStepperV2Tokens = {
  sm: stepperV2TokensType,
  lg: stepperV2TokensType,
}
type stepperV2SubStep = {
  id: float,
  title: string,
  status?: stepperV2StepStatus,
  disabled?: bool,
}
type stepperV2Step = {
  id: float,
  title: string,
  status?: stepperV2StepStatus,
  disabled?: bool,
  description?: string,
  icon?: React.element,
  substeps?: array<stepperV2SubStep>,
  isExpandable?: bool,
  isExpanded?: bool,
}
