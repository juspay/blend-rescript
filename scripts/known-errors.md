# Known ReScript Compilation Errors

This file dynamically tracks ReScript compilation errors encountered by the AI generator to prevent them from recurring on future generations.


- [Auto-Learned]: ReScript does not support TypeScript-style union types using the `|` operator in type definitions. Instead, use polymorphic variants like `[#String(string) | #Int(int)]` to represent values that can be one of multiple types.

- [Auto-Learned]: Use `ReactDOM.domRef` instead of `ReactDOM.ref` for typing ref props in external React component bindings - `ReactDOM.ref` does not exist in ReScript.

- [Auto-Learned]: For React ref props in external component bindings, use `ReactDOM.domRef` instead of `ReactDOM.ref<Dom.element>` - the type `ReactDOM.ref` does not exist in ReScript.

- [Auto-Learned]: ReScript does NOT support TypeScript-style optional property syntax with `?` inside object/record type definitions. For optional fields in object types, use `option<type>` instead of `field?: type`. For inline object types in external declarations, extract them to named types and use `option<type>` for the optional fields.

- [Auto-Learned]: In ReScript 11+, the `@as` decorator must be placed BEFORE the `~` labeled argument, not after it. The correct syntax is `@as("aria-label") ~ariaLabel: string=?` NOT `~@as("aria-label") ariaLabel: string=?`.

- [Auto-Learned]: ReScript does not allow the `{..}` open object syntax in standalone type declarations because it creates an unbound type variable; use a closed record type with optional fields or `Dict.t<'a>` instead.

- [Auto-Learned]: TypeScript 'number' type must be converted to 'float' in ReScript, not 'number' - ReScript does not have a 'number' type constructor.

- [Auto-Learned]: In ReScript 11+, ReactDOM.Ref.t is not a generic type and should not have type arguments - use `ReactDOM.Ref.t` instead of `ReactDOM.Ref.t<DOM.element>`.

- [Unresolved Failure] CodeEditor: Failed compilation because: 

> @subham_/rescript-blend@0.1.1 build
> rescript

Cleaned 0/37
WARN:

Package name mismatch for /Users/subham.patel/Desktop/blend-rescript:
The package.json name is "@subham_/rescript-blend", while the rescript.json name is "@juspay/rescript-blend"
This inconsistency will cause issues with package resolution.

Error in @subham_/rescript-blend:

  [1;31mSyntax error![0m
  [36m/Users/subham.patel/Desktop/blend-rescript/src/Checkbox.res[0m:[2m25:23[0m

  23 [2m│[0m   ~subtext: string=?,
  24 [2m│[0m   ~slot: React.element=?,
  [1;31m25[0m [2m│[0m   ~maxLength: {"label"[1;31m?[0m: int, "subtext"?: int}=?,
  26 [2m│[0m   ~ref: ReactDOM.domRef=?,
  27 [2m│[0m ) => React.element = "Checkbox"

  Did you forget a `:` here? It signals the start of a type


Incremental build failed. Error: [2K  Could not parse Source Files


- [Unresolved Failure] DataTable: Failed compilation because: 

> @subham_/rescript-blend@0.1.1 build
> rescript

Cleaned previous build due to compiler update
Cleaned 0/20
Error in @subham_/rescript-blend:

  [1;31mSyntax error![0m
  [36m/Users/subham.patel/Desktop/blend-rescript/src/Checkbox.res[0m:[2m25:23[0m

  23 [2m│[0m   ~subtext: string=?,
  24 [2m│[0m   ~slot: React.element=?,
  [1;31m25[0m [2m│[0m   ~maxLength: {"label"[1;31m?[0m: int, "subtext"?: int}=?,
  26 [2m│[0m   ~ref: ReactDOM.domRef=?,
  27 [2m│[0m ) => React.element = "Checkbox"

  Did you forget a `:` here? It signals the start of a type


Incremental build failed. Error: [2K  Could not parse Source Files


- [Auto-Learned]: Polymorphic variants in ReScript use simple `#Tag` syntax without `@as` decorators - `@as` is only for regular variants, not polymorphic variants. For union types like `boolean | "indeterminate"`, use `[#Bool(bool) | #Indeterminate]` format without any decorators.
