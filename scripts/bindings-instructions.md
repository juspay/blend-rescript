# Instructions for Generating ReScript Bindings

You are converting TypeScript component definitions (`.d.ts`) into ReScript 11+ interface bindings. Compilation success is critical. Follow all these rules meticulously.

## General Rules
1. Use ReScript 11+ syntax exactly (e.g. `@react.component` not `@bs.react.component`, `@module` not `@bs.module`).
2. Treat `React.ReactNode` or `JSX.Element` as `React.element`.
3. Treat HTML events like `React.MouseEvent` as standard `ReactEvent.Mouse.t`.
4. ReScript reserved keywords (like `type`, `open`, `as`, `end`, `to`, `in`) used as prop names must be escaped by suffixing an underscore in the type but using `@as` to maintain interop natively. Example: `@as("type") type_: string`.
5. **Dashed Props**: ReScript labeled arguments CANNOT contain dashes (e.g., `aria-label`). You MUST map these to camelCase equivalents and use `@as`: `@as("aria-label") ariaLabel: string=?`. Never wrap labels in quotes `~"aria-label"`!

## Polymorphic Variants (Enums)
When TypeScript defines a union of string literals (e.g. `type Size = "small" | "large"`), convert it to a ReScript Polymorphic Variant.
- YOU MUST DEFINE THE TYPE GLOBALLY before using it in the component props.
- Do NOT use `@string` or `@int` decorators (it will cause unused attribute errors).

You can define it in one of two ways:
1. Standard variants mapped with \`@as\`:
\`\`\`rescript
type size =
  | @as("small") SMALL
  | @as("large") LARGE
\`\`\`

2. Inline Polymorphic Variants:
\`\`\`rescript
type size = [#small | #large]
\`\`\`

Example TS:
```typescript
type Size = "small" | "large";
interface ButtonProps { size?: Size }
```

Example ReScript:
```rescript
type size = [#small | #large]

@module("@juspay/blend-design-system") @react.component
external make: (
  ~size: size=?,
) => React.element = "Button"
```

## Functions and Callbacks
Functions without return types become `unit`.
Example: `~onClick: ReactEvent.Mouse.t => unit=?`.

## Props and Optional Labeling
- If a prop is optional in TS (`?`), map it to an optional labeled argument in ReScript with `=?`. e.g., `~disabled: bool=?`.
- Ensure there is at least one argument in the external function, even if it's just `~children: React.element=?` or `~key: string=?` if no other props exist.

Example ReScript:
```rescript
@module("@juspay/blend-design-system") @react.component
external make: (
  ~className: string=?,
  ~disabled: bool=?,
  ~children: React.element=?,
) => React.element = "ComponentName"
```

## Module Binding
Always use the exact module string `@module("@juspay/blend-design-system")` to resolve from the node_modules external package. DO NOT map to local files.
