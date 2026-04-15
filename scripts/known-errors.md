# Known ReScript Compilation Errors

This file dynamically tracks ReScript compilation errors encountered by the AI generator to prevent them from recurring on future generations.


- [Auto-Learned]: ReScript does not support TypeScript-style union types using the `|` operator in type definitions. Instead, use polymorphic variants like `[#String(string) | #Int(int)]` to represent values that can be one of multiple types.
