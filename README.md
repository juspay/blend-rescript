# ReScript Blend Design System

Fully typed, production-ready ReScript 11 bindings for the [@juspay/blend-design-system](https://www.npmjs.com/package/@juspay/blend-design-system).

This package bridges the gap between the Blend Design System created in React/TS and your ReScript-based architecture by exposing strict, type-safe interfaces for the components. Best of all, these bindings are maintained autonomically!

## 📦 Installation

This package **mirrors the version of `@juspay/blend-design-system`** exactly. Install the version that matches your blend dependency:

```bash
# If your project uses blend-design-system@0.0.37-beta.2:
npm install @subham_/rescript-blend@0.0.37-beta.2

# For the latest stable release:
npm install @subham_/rescript-blend@latest
```

> **Version Mirroring Convention**  
> Package versions ≥ 0.0.37-beta.2 track `@juspay/blend-design-system` versions 1:1.  
> Examples:  
> - `blend-design-system@0.0.37-beta.2` → `rescript-blend@0.0.37-beta.2`  
> - `blend-design-system@0.0.38` → `rescript-blend@0.0.38`

The core design system (`@juspay/blend-design-system`) is included automatically as a dependency.

> **Note:** This package ships ReScript source files (`.res`/`.resi`) only. Your project must have the ReScript compiler (`rescript >= 12.0.0`) installed to compile the bindings.

> **Previous versions (0.1.x) are deprecated** in favor of the version-mirrored strategy starting at 0.0.37-beta.2.

## ⚙️ Configuration

In your project's `rescript.json`, add `@subham_/rescript-blend` to the `dependencies`:

```json
{
  "dependencies": [
    "@rescript/react",
    "@subham_/rescript-blend"
  ]
}
```

## 🚀 Usage

All components are namespaced under `RescriptBlend` to avoid module name collisions. Access them with qualified names or open the module:

```rescript
@react.component
let make = () => {
  // Qualified access
  <RescriptBlend.Accordion 
    isMultiple=true 
    defaultValue={RescriptBlend.Accordion.Value.fromArray(["panel-1"])}
  >
    <RescriptBlend.Button ariaLabel="Submit Form" disabled=false> 
      {React.string("Continue")} 
    </RescriptBlend.Button>
  </RescriptBlend.Accordion>
}

// Or use `open` for cleaner syntax
@react.component
let make = () => {
  open RescriptBlend
  
  <Accordion isMultiple=true defaultValue={Accordion.Value.fromArray(["panel-1"])}>
    <Button ariaLabel="Submit Form" disabled=false> 
      {React.string("Continue")} 
    </Button>
  </Accordion>
}
```

### Sub-components

Sub-components are accessed via the parent module namespace:

```rescript
open RescriptBlend

// Accordion.Item
<Accordion>
  <Accordion.Item value="1" title={React.string("Title")}>
    {React.string("Content")}
  </Accordion.Item>
</Accordion>

// Modal with helper function
<Modal
  primaryAction={Modal.makeButtonAction(~text="Confirm", ~buttonType=#Primary, ())}
/>
```

*(All React types, Polymorphic Variants, and callback Uncurries map 1:1 with ReScript 11 standards).*

## 🧠 Autonomic Generation

To maintain 100% interoperability without manual intervention, this library employs an LLM-powered autonomous feedback loop that connects strictly to the external `node_modules` TS declarations files.

If you are a maintainer looking to generate new bindings directly:
1. Provide a `.env` file holding your `LITELLM_BASE_URL`, `TEST_KEY`, and `LITELLM_API_KEY`.
2. Generate an individual missing component:
   ```bash
   npm run generate -- --component Button
   ```
3. Or synchronize the entire design system at once:
   ```bash
   npm run generate -- --all
   ```

The script natively compiles your ReScript code on generation and features an auto-correction feedback loop up to 3 times per component! Failures are pruned into `.failed.res` so downstream configurations are never broken.
