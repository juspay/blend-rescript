// ReScript bindings for Blend Design System Stepper component

// Enum type for step states
type stepState =
  | @as("completed") Completed
  | @as("current") Current
  | @as("pending") Pending
  | @as("disabled") Disabled
  | @as("skipped") Skipped

// Enum type for stepper orientation
type stepperType =
  | @as("horizontal") Horizontal
  | @as("vertical") Vertical

// SubStep type definition
type subStep = {
  id: int,
  title: string,
  status?: stepState,
  disabled?: bool,
}

// Step type definition
type step = {
  id: int,
  title: string,
  status?: stepState,
  disabled?: bool,
  description?: string,
  icon?: React.element,
  substeps?: array<subStep>,
  isExpandable?: bool,
  isExpanded?: bool,
}

// Props for individual step component
type stepProps = {
  step: step,
  stepIndex: int,
  isCompleted: bool,
  isCurrent: bool,
  isLast: bool,
  isFirst: bool,
  onClick?: int => unit,
  onSubstepClick?: (int, int) => unit,
  clickable?: bool,
  currentSubsteps?: Dict.t<int>,
}

// Main Stepper component props
type stepperProps = {
  steps: array<step>,
  onStepClick?: int => unit,
  onSubstepClick?: (int, int) => unit,
  clickable?: bool,
  stepperType?: stepperType,
}

// External binding to the Stepper component
@module("@juspay/blend-design-system") @react.component
external make: (
  ~steps: array<step>,
  ~onStepClick: int => unit=?,
  ~onSubstepClick: (int, int) => unit=?,
  ~clickable: bool=?,
  ~stepperType: stepperType=?,
) => React.element = "Stepper"

// External binding to individual Step component as a separate module
module Step = {
  @module("@juspay/blend-design-system") @react.component
  external make: (
    ~step: step,
    ~stepIndex: int,
    ~isCompleted: bool,
    ~isCurrent: bool,
    ~isLast: bool,
    ~isFirst: bool,
    ~onClick: int => unit=?,
    ~onSubstepClick: (int, int) => unit=?,
    ~clickable: bool=?,
    ~currentSubsteps: Dict.t<int>=?,
  ) => React.element = "Step"
}

// Helper functions to create step objects
let makeStep = (
  ~id,
  ~title,
  ~status=?,
  ~disabled=?,
  ~description=?,
  ~icon=?,
  ~substeps=?,
  ~isExpandable=?,
  ~isExpanded=?,
  (),
): step => {
  id,
  title,
  ?status,
  ?disabled,
  ?description,
  ?icon,
  ?substeps,
  ?isExpandable,
  ?isExpanded,
}

let makeSubStep = (~id, ~title, ~status=?, ~disabled=?, ()): subStep => {
  id,
  title,
  ?status,
  ?disabled,
}

// Helper function to create stepper props
let makeStepperProps = (
  ~steps,
  ~onStepClick=?,
  ~onSubstepClick=?,
  ~clickable=?,
  ~stepperType=?,
  (),
): stepperProps => {
  steps,
  ?onStepClick,
  ?onSubstepClick,
  ?clickable,
  ?stepperType,
}
