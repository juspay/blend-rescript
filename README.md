# ReScript Blend Design System

Fully typed, production-ready ReScript 11 bindings for the [@juspay/blend-design-system](https://www.npmjs.com/package/@juspay/blend-design-system).

This package bridges the gap between the Blend Design System created in React/TS and your ReScript-based architecture by exposing strict, type-safe interfaces for the components. Best of all, these bindings are maintained autonomically!

## 📦 Installation

```bash
npm install @juspay/rescript-blend
```

The core design system (`@juspay/blend-design-system`) is bundled as a regular dependency and pinned per release — you don't need to install it separately.

> **Versioning**  
> Starting at `1.0.0`, this package follows its own SemVer cadence under the `@juspay/rescript-blend` name. Each release pins the `@juspay/blend-design-system` version it was generated against in `dependencies`; check the [CHANGELOG](./CHANGELOG.md) to see which upstream version any given release ships with.

> **Note:** This package ships ReScript source files (`.res`/`.resi`) only. Your project must have the ReScript compiler (`rescript >= 12.0.0`) installed to compile the bindings.

## ⚙️ Configuration

In your project's `rescript.json`, add `@juspay/rescript-blend` to the `dependencies`:

```json
{
  "dependencies": [
    "@rescript/react",
    "@juspay/rescript-blend"
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
