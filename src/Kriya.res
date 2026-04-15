type actionType =
  | @as("navigate") Navigate
  | @as("click") Click
  | @as("fill") Fill
  | @as("wait") Wait
  | @as("hover") Hover
  | @as("screenshot") Screenshot
  | @as("submitForm") SubmitForm
  | @as("select") Select

type actionParameters = {
  description: string,
  value: string,
  condition: string,
  duration: string,
  selector: string,
  reason: string,
}

type kriyaAction = {
  @as("type") type_: actionType,
  parameters: actionParameters,
  description: string,
}

type automationConfig = {
  headless: bool,
  defaultTimeout: int,
  viewport: {width: int, height: int},
  screenshotOnError: bool,
}

type executionResult = {
  success: bool,
  error: string,
  data: JSON.t,
  screenshot: string,
}

type engine = {
  execute: kriyaAction => promise<executionResult>,
  executeBatch: array<kriyaAction> => promise<array<executionResult>>,
  destroy: unit => promise<unit>,
}

@module("@juspay/kriya")
external createAutomationEngine: automationConfig => engine = "createAutomationEngine"
let createEngine = (
  ~headless: bool=false,
  ~defaultTimeout: int=30000,
  ~screenshotOnError: bool=true,
  (),
): engine => {
  let config: automationConfig = {
    headless,
    defaultTimeout,
    screenshotOnError,
    viewport: {width: 1280, height: 720},
  }

  createAutomationEngine(config)
}

let executeAction = (engine: engine, action: kriyaAction): promise<executionResult> => {
  engine.execute(action)
}

let executeActions = (engine: engine, actions: array<kriyaAction>): promise<
  array<executionResult>,
> => {
  engine.executeBatch(actions)
}

let destroyEngine = (engine: engine): promise<unit> => {
  engine.destroy()
}
