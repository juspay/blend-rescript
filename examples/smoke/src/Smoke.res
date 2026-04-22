// Smoke test for @subham_/rescript-blend consumed as an external dependency.
// Imports a handful of bindings and uses them the way a real consumer would.
// Goal: fail CI on module-resolution breakage or API drift that `rescript build`
// inside the bindings package itself would not catch.

@react.component
let make = () => {
  <div>
    <Button buttonType=Button.Primary size=Button.Md text="Submit"> {React.null} </Button>
    <Alert heading="Smoke check" description="If this compiles, the bindings are consumable." />
    <Tag label="new" />
    <Avatar alt="roshan" />
    <Card />
  </div>
}
