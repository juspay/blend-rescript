# ReScript Blend Design System

Fully typed, production-ready ReScript 11 bindings for the [@juspay/blend-design-system](https://www.npmjs.com/package/@juspay/blend-design-system).

This package bridges the gap between the Blend Design System created in React/TS and your ReScript-based architecture by exposing strict, type-safe interfaces for the components. Best of all, these bindings are maintained autonomically!

## 📦 Installation

Install the package via NPM:

```bash
npm install @subham_/rescript-blend
```

The core design system (`@juspay/blend-design-system`) is included automatically as a dependency.

> **Note:** This package ships ReScript source files (`.res`/`.resi`) only. Your project must have the ReScript compiler (`rescript >= 12.0.0`) installed to compile the bindings.

## ⚙️ Configuration

In your project's `rescript.json` (or `bsconfig.json`), add `@subham_/rescript-blend` to the `bs-dependencies`:

```json
{
  "bs-dependencies": [
    "@rescript/react",
    "@subham_/rescript-blend"
  ]
}
```

## 🚀 Usage

Since ReScript module resolution handles scopes internally, you simply use the design system modules globally anywhere in your project as if you wrote them locally. No relative import blocks necessary!

```rescript
@react.component
let make = () => {
  <Accordion 
    isMultiple=true 
    defaultValue={Multiple(["panel-1"])}
  >
    <Button ariaLabel="Submit Form" disabled=false> 
      {React.string("Continue")} 
    </Button>
  </Accordion>
}
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
