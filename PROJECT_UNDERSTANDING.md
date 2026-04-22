# Blend ReScript - Project Understanding & Current State

## Project Overview

**Blend ReScript** (`@subham_/rescript-blend`) is an open-source project that provides fully typed, production-ready ReScript 11 bindings for the [@juspay/blend-design-system](https://www.npmjs.com/package/@juspay/blend-design-system) TypeScript/React component library.

### Purpose
- Eliminates the need for manual ReScript binding creation when using the Blend Design System
- Maintains type safety between TypeScript components and ReScript consumers
- Provides an autonomous LLM-powered binding generation system

---

## Architecture & Key Components

### 1. **Package Structure**
```
blend-rescript/
├── src/                          # ReScript binding files (.res → .js)
│   ├── Types/                    # Shared type definitions (e.g., HighchartTypes)
│   └── [Component].res           # One file per component (Accordion, Button, etc.)
├── scripts/
│   ├── generate-bindings.mjs     # AI-powered binding generator
│   ├── bindings-instructions.md  # Prompt engineering rules for LLM
│   └── known-errors.md           # Dynamic error learning database
├── rescript.json                 # ReScript compiler configuration
└── package.json                  # NPM package manifest
```

### 2. **Core Technologies**
- **ReScript 12.2.0** - The OCaml-based language compiling to JavaScript
- **@rescript/react** - React bindings for ReScript
- **@juspay/neurolink** - Internal LLM client for AI generation
- **Node.js ≥20** - Runtime requirement

### 3. **Binding Generation System**
The project features a sophisticated autonomous feedback loop:

```mermaid
TypeScript .d.ts → AI Generator → ReScript .res → Compiler Validation
                                          ↓
                                    Error Feedback Loop
                                          ↓
                                    Retry (up to 3x)
```

**Key Features:**
- Reads TypeScript declaration files from `node_modules/@juspay/blend-design-system/dist/components/`
- Uses `@juspay/neurolink` (LLM client) to generate ReScript code
- Auto-compiles and validates with ReScript compiler
- Up to 3 retry attempts with error feedback
- Failed components saved as `.failed.res`
- Learns from errors and appends to `known-errors.md`

---

## ReScript Binding Patterns

### 1. **Standard Variants with @as**
```rescript
type buttonVariant =
  | @as("primary") Primary
  | @as("secondary") Secondary
  | @as("danger") Danger
```

### 2. **Polymorphic Variants for Union Types**
```rescript
type widthValue = [#Number(int) | #String(string)]
```

### 3. **Abstract Identity Modules**
```rescript
module Value = {
  type t
  external fromString: string => t = "%identity"
  external fromArray: array<string> => t = "%identity"
}
```

### 4. **Nested Modules for Sub-Components**
```rescript
// Main Component
@module("@juspay/blend-design-system") @react.component
external make: (...) => React.element = "Drawer"

// Sub Component
module Title = {
  @module("@juspay/blend-design-system") @react.component
  external make: (...) => React.element = "DrawerTitle"
}
```

### 5. **External Component Binding Pattern**
```rescript
@module("@juspay/blend-design-system") @react.component
external make: (
  ~prop1: string,
  ~prop2: bool=?,
  ~onClick: JsxEvent.Mouse.t => unit=?,
  ~children: React.element=?,
) => React.element = "ComponentName"
```

---

## Current Component Inventory (61 Components)

### UI Components (Core)
| Component | Status | Notes |
|-----------|--------|-------|
| Accordion | ✅ | With Item sub-module, Value abstract module |
| Alert | ✅ | |
| Avatar | ✅ | |
| AvatarGroup | ✅ | |
| Breadcrumb | ✅ | |
| Button | ✅ | Comprehensive prop coverage |
| ButtonGroup | ✅ | |
| Card | ✅ | Golden example for complex configs |
| Checkbox | ⚠️ | Has compilation issues (known-errors.md) |
| Drawer | ✅ | |
| DropdownInput | ✅ | |
| KeyValuePair | ✅ | |
| Menus | ✅ | |
| Modal | ✅ | Helper function pattern |
| MultiSelect | ✅ | |
| OTPInput | ✅ | |
| PopOver | ✅ | |
| ProgressBar | ✅ | |
| Radio | ✅ | |
| SearchInput | ✅ | |
| Sidebar | ✅ | |
| SingleSelect | ✅ | |
| Slider | ✅ | |
| Snackbar | ✅ | |
| StatCard | ✅ | |
| Stepper | ✅ | |
| Switch | ✅ | |
| Tab | ✅ | |
| Tag | ✅ | |
| Textarea | ✅ | |
| TextInput | ✅ | |
| Timeline | ✅ | |
| ToolTip | ✅ | |
| Upload | ✅ | |

### Chart Components
| Component | Status | Notes |
|-----------|--------|-------|
| Chart | ✅ | |
| ChartComponents | ✅ | |
| ChartContainer | ✅ | |
| ChartContainerV2 | ✅ | |
| ChartHeader | ✅ | |
| ChartHeaderV2 | ✅ | |
| ChartLegends | ✅ | |
| ChartRender | ✅ | |
| ChartUtils | ✅ | |
| ChartV2 | ✅ | |
| CoreChart | ✅ | |
| Sankey | ✅ | |
| OutageCharts | ✅ | |

### Specialized Components
| Component | Status | Notes |
|-----------|--------|-------|
| ChatInput | ✅ | |
| CodeBlock | ✅ | |
| CodeEditor | ⚠️ | Unresolved failure in known-errors.md |
| DataTable | ✅ | |
| DateRangePicker | ✅ | |
| Directory | ✅ | |
| Kriya | ✅ | |
| LucideIcons | ✅ | Icon bindings |
| MultiValueAccordion | ✅ | |
| MultiValueInput | ✅ | |
| NumberInput | ✅ | |
| SplitTag | ✅ | |
| UnitInput | ✅ | |

### Type Definitions
- **HighchartTypes.res** - Comprehensive Highcharts type definitions (~540 lines)

---

## Known Issues & Learnings (from known-errors.md)

### Auto-Learned Rules (Applied to Generation)
1. ❌ No TypeScript `|` union types → Use polymorphic variants `[#Tag1 | #Tag2]`
2. ❌ No `ReactDOM.ref` → Use `ReactDOM.domRef`
3. ❌ No `?` in record types → Use `option<type>`
4. ❌ `@as` placement: Must be BEFORE `~` (`@as("...") ~prop` not `~@as("...") prop`)
5. ❌ No `{..}` open objects → Use closed records or `Dict.t<'a>`
6. ❌ TypeScript `number` → ReScript `float`
7. ❌ No `ReactDOM.Ref.t<...>` generic → Use bare `ReactDOM.Ref.t`
8. ❌ Polymorphic variants don't use `@as` → Simple `#Tag` syntax

### Unresolved Failures
| Component | Issue | Location |
|-----------|-------|----------|
| Checkbox | Syntax error on `{"label"?: int, "subtext"?: int}` | Line 25 |
| CodeEditor | Failed compilation | Full file |
| DataTable | Syntax error (same as Checkbox) | Dependency issue |

---

## Points of Action / Next Steps

Based on my analysis, here are the areas requiring attention:

### 1. **Fix Compilation Errors**
- [ ] Resolve `Checkbox.res` syntax issue with inline object types
- [ ] Fix `CodeEditor.res` unresolved failure
- [ ] Verify `DataTable.res` compilation

### 2. **Package Name Consistency**
- [ ] Align `package.json` name (`@subham_/rescript-blend`) with `rescript.json` name (currently mismatched per known-errors.md)

### 3. **Expand Component Coverage**
- [ ] Identify missing components from upstream design system
- [ ] Run `--all` generation to sync with latest `@juspay/blend-design-system`

### 4. **Enhance Type Safety**
- [ ] Review optional field patterns across components
- [ ] Standardize event handler types (ReactEvent vs JsxEvent)
- [ ] Audit ref prop types

### 5. **Documentation**
- [ ] Add usage examples for complex components (Chart, DataTable)
- [ ] Document the Value abstract module pattern
- [ ] Create migration guide for ReScript 10→11 users

### 6. **Automation Improvements**
- [ ] Add pre-commit hooks for compilation checks
- [ ] Integrate GitHub Actions for automatic binding regeneration
- [ ] Create issue template for missing component requests

---

## Usage Example

```rescript
@react.component
let make = () => {
  <Accordion 
    isMultiple=true 
    defaultValue={Multiple(["panel-1"])>
    <Button 
      ariaLabel="Submit Form" 
      disabled=false
      buttonType=#Primary
    > 
      {React.string("Continue")} 
    </Button>
  </Accordion>
}
```

---

## Development Commands

```bash
# Build all ReScript files
npm run build

# Watch mode for development
npm run watch

# Generate single component binding
npm run generate -- --component Button

# Regenerate all bindings
npm run generate -- --all
```

---

## Summary

This project successfully bridges the TypeScript/React Blend Design System with ReScript through intelligent automation. The key innovation is the LLM-powered generation loop that learns from its mistakes. The codebase follows ReScript 11 best practices with proper variant usage, polymorphic variants for unions, and modular sub-component organization.

**Current State:** Functional with ~61 components, minor compilation issues on 2-3 files, strong foundation for maintenance and expansion.

---

*Document Generated: 2026-04-21*
*Version Analyzed: 0.1.2*