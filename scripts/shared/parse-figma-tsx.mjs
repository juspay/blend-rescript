// Parses a blend-design-system `*.figma.tsx` file's `figma.connect(...)` call
// using the real TypeScript compiler API (not regex) -- these files are
// hand-written by different people over time, with real variety in
// formatting and structure, unlike our own machine-generated `.res` files.
//
// Key subtlety this exists to handle correctly: the `props: {...}` object's
// keys are just LOCAL names the file's author chose for the `example`
// callback's destructured parameters -- they are NOT necessarily the real
// React prop names. The real prop names are whatever JSX attributes are
// used inside `example`'s returned `<Component .../>`. E.g.:
//
//   props: { leftIcon: figma.boolean('hasLeftIcon', {...}) },
//   example: ({ leftIcon }) => <Button leadingIcon={leftIcon} />
//
// Here the real prop is `leadingIcon`, not `leftIcon`. This module extracts
// the props map AND the JSX attribute list, then joins them through the
// callback's parameter names to get real-prop-name -> Figma-extraction-spec.
//
// Deliberately does NOT read/keep the Figma URL argument (2nd arg to
// figma.connect) -- this repo doesn't record Figma URLs/keys/node-ids
// (see figma/README.md).

import ts from "typescript";

function findFirst(node, predicate) {
  if (predicate(node)) return node;
  let found;
  ts.forEachChild(node, (child) => {
    if (found) return;
    found = findFirst(child, predicate);
  });
  return found;
}

function findAll(node, predicate, acc = []) {
  if (predicate(node)) acc.push(node);
  ts.forEachChild(node, (child) => findAll(child, predicate, acc));
  return acc;
}

function isFigmaConnectCall(node) {
  return (
    ts.isCallExpression(node) &&
    ts.isPropertyAccessExpression(node.expression) &&
    ts.isIdentifier(node.expression.expression) &&
    node.expression.expression.text === "figma" &&
    node.expression.name.text === "connect"
  );
}

function isFigmaHelperCall(node, name) {
  return (
    ts.isCallExpression(node) &&
    ts.isPropertyAccessExpression(node.expression) &&
    ts.isIdentifier(node.expression.expression) &&
    node.expression.expression.text === "figma" &&
    node.expression.name.text === name
  );
}

function objectLiteralEntries(obj) {
  // Returns [{ keyText, node (PropertyAssignment | ShorthandPropertyAssignment) }]
  return obj.properties
    .filter((p) => ts.isPropertyAssignment(p) || ts.isShorthandPropertyAssignment(p))
    .map((p) => {
      const keyNode = p.name;
      const keyText = ts.isIdentifier(keyNode) || ts.isStringLiteral(keyNode) ? keyNode.text : null;
      return { keyText, node: p };
    })
    .filter((e) => e.keyText !== null);
}

// Parses one `figma.string/boolean/enum/instance(...)` call into our
// componentMaps prop-spec shape, or { kind: 'unsupported', reason } if the
// shape isn't one we recognize.
function parseFigmaValueExpr(expr) {
  if (isFigmaHelperCall(expr, "string")) {
    const arg = expr.arguments[0];
    if (arg && ts.isStringLiteral(arg)) return { kind: "string", figmaProp: arg.text };
    return { kind: "unsupported", reason: "figma.string() with a non-literal argument" };
  }

  if (isFigmaHelperCall(expr, "instance")) {
    const arg = expr.arguments[0];
    if (arg && ts.isStringLiteral(arg)) return { kind: "instanceSwap", figmaProp: arg.text };
    return { kind: "unsupported", reason: "figma.instance() with a non-literal argument" };
  }

  if (isFigmaHelperCall(expr, "boolean")) {
    const nameArg = expr.arguments[0];
    if (!nameArg || !ts.isStringLiteral(nameArg)) {
      return { kind: "unsupported", reason: "figma.boolean() with a non-literal argument" };
    }
    const mapArg = expr.arguments[1];
    if (!mapArg) return { kind: "bool", figmaProp: nameArg.text };
    if (!ts.isObjectLiteralExpression(mapArg)) {
      return { kind: "unsupported", reason: "figma.boolean() second argument is not an object literal" };
    }
    const entries = objectLiteralEntries(mapArg);
    const truthy = entries.find((e) => e.keyText === "true");
    const falsy = entries.find((e) => e.keyText === "false");
    // The `hasXIcon` -> icon-instance-swap pattern: true branch is
    // figma.instance(...), false branch is `undefined`.
    const isUndefinedExpr = (n) => ts.isIdentifier(n) && n.text === "undefined";
    if (
      truthy &&
      ts.isPropertyAssignment(truthy.node) &&
      isFigmaHelperCall(truthy.node.initializer, "instance") &&
      falsy &&
      ts.isPropertyAssignment(falsy.node) &&
      isUndefinedExpr(falsy.node.initializer)
    ) {
      const innerArg = truthy.node.initializer.arguments[0];
      if (innerArg && ts.isStringLiteral(innerArg)) {
        return { kind: "instanceSwap", figmaProp: innerArg.text };
      }
    }
    return { kind: "unsupported", reason: "figma.boolean() with an unrecognized true/false mapping" };
  }

  if (isFigmaHelperCall(expr, "enum")) {
    const nameArg = expr.arguments[0];
    if (!nameArg || !ts.isStringLiteral(nameArg)) {
      return { kind: "unsupported", reason: "figma.enum() with a non-literal argument" };
    }
    const mapArg = expr.arguments[1];
    if (!mapArg || !ts.isObjectLiteralExpression(mapArg)) {
      return { kind: "unsupported", reason: "figma.enum() second argument is not an object literal" };
    }
    const entries = objectLiteralEntries(mapArg);
    if (entries.length === 0) return { kind: "unsupported", reason: "figma.enum() with no mapped values" };
    const values = {};
    for (const { keyText, node } of entries) {
      if (!ts.isPropertyAssignment(node)) continue; // shorthand -- ambiguous, skip this key
      const init = node.initializer;
      if (init.kind === ts.SyntaxKind.TrueKeyword) values[keyText] = "true";
      else if (init.kind === ts.SyntaxKind.FalseKeyword) values[keyText] = "false";
      else values[keyText] = "__CODE_REF__"; // e.g. ButtonType.PRIMARY -- resolved via our own bindings by key, not this text
    }
    return { kind: "enum", figmaProp: nameArg.text, values };
  }

  return { kind: "unsupported", reason: "not a recognized figma.* call" };
}

// Finds the JSX element returned by `example`'s arrow/function body -- the
// first (and expected only) JsxElement/JsxSelfClosingElement in the body,
// however it's wrapped (parens, block+return, etc).
function findReturnedJsx(fn) {
  const body = fn.body;
  if (!body) return null;
  if (ts.isJsxElement(body) || ts.isJsxSelfClosingElement(body)) return body;
  return findFirst(body, (n) => ts.isJsxElement(n) || ts.isJsxSelfClosingElement(n));
}

function jsxAttributes(jsx) {
  const opening = ts.isJsxElement(jsx) ? jsx.openingElement : jsx;
  return opening.attributes.properties.filter((p) => ts.isJsxAttribute(p));
}

// Parses one `.figma.tsx` file's source text. Returns:
//   { reactComponentName, props: { realPropName: spec }, unsupported: [{propName, reason}] }
// or null if no figma.connect(...) call is found at all.
export function parseFigmaTsx(sourceText, fileName = "component.figma.tsx") {
  const sourceFile = ts.createSourceFile(fileName, sourceText, ts.ScriptTarget.Latest, true, ts.ScriptKind.TSX);

  const connectCall = findFirst(sourceFile, isFigmaConnectCall);
  if (!connectCall) return null;

  const [componentArg, , configArg] = connectCall.arguments;
  const reactComponentName = componentArg && ts.isIdentifier(componentArg) ? componentArg.text : null;
  if (!configArg || !ts.isObjectLiteralExpression(configArg)) return null;

  const configEntries = objectLiteralEntries(configArg);
  const propsEntry = configEntries.find((e) => e.keyText === "props");
  const exampleEntry = configEntries.find((e) => e.keyText === "example");
  if (!propsEntry || !exampleEntry) return null;
  if (!ts.isPropertyAssignment(propsEntry.node) || !ts.isObjectLiteralExpression(propsEntry.node.initializer)) {
    return null;
  }

  // localName -> figma extraction spec
  const byLocalName = {};
  for (const { keyText, node } of objectLiteralEntries(propsEntry.node.initializer)) {
    if (!ts.isPropertyAssignment(node)) continue;
    byLocalName[keyText] = parseFigmaValueExpr(node.initializer);
  }

  if (!ts.isPropertyAssignment(exampleEntry.node)) return null;
  const exampleFn = exampleEntry.node.initializer;
  if (
    !ts.isArrowFunction(exampleFn) &&
    !ts.isFunctionExpression(exampleFn)
  ) {
    return null;
  }
  const param = exampleFn.parameters[0];
  if (!param || !ts.isObjectBindingPattern(param.name)) return null;

  // realJsxAttrParamName is only used to validate the destructure exists;
  // the actual join happens via jsxAttrs below matching Identifier text
  // against these local binding names.
  const localBindingNames = new Set(
    param.name.elements
      .filter((el) => ts.isBindingElement(el) && ts.isIdentifier(el.name))
      .map((el) => el.name.text),
  );

  const jsx = findReturnedJsx(exampleFn);
  if (!jsx) return null;

  const props = {};
  const unsupported = [];
  for (const attr of jsxAttributes(jsx)) {
    const realName = attr.name.text;
    const init = attr.initializer;
    if (!init || !ts.isJsxExpression(init) || !init.expression) {
      unsupported.push({ propName: realName, reason: "JSX attribute has no expression (or a plain string literal)" });
      continue;
    }
    if (!ts.isIdentifier(init.expression)) {
      unsupported.push({ propName: realName, reason: "JSX attribute value is not a simple identifier reference" });
      continue;
    }
    const localName = init.expression.text;
    if (!localBindingNames.has(localName)) {
      unsupported.push({ propName: realName, reason: `references undestructured local '${localName}'` });
      continue;
    }
    const spec = byLocalName[localName];
    if (!spec) {
      unsupported.push({ propName: realName, reason: `no props: entry for local '${localName}'` });
      continue;
    }
    if (spec.kind === "unsupported") {
      unsupported.push({ propName: realName, reason: spec.reason });
      continue;
    }
    props[realName] = spec;
  }

  return { reactComponentName, props, unsupported };
}
