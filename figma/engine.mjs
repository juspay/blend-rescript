// Generic Code Connect template runtime: given a live Figma `instance` and
// a component map (see figma/componentMaps/*.mjs), extracts every mapped
// property and renders it as JuspayRescriptBlend JSX. Each `<Component>.figma.ts`
// file should just call `renderFromMap(figma.selectedInstance, SomeMap)` --
// no per-component getEnum/getString/getBoolean boilerplate needed.
//
// Limitation: at most 3 `instanceSwap`-kind props per component. Nested
// instances need real figma.code interpolation (not string concatenation,
// see mapper.mjs), which requires a fixed number of template slots known at
// authoring time -- 3 covers every Blend component seen so far (icons are
// at most leading + trailing). Raise this if a component genuinely needs
// more.

import figma from 'figma'
import { strAttr, identAttr, boolAttr, exprAttr } from './mapper.mjs'

const extractProp = (instance, codePropName, spec) => {
  // A human deliberately decided this Figma property has no valid code
  // correspondence (see componentMaps/*.mjs header comment) -- respect it.
  if (spec.mapped === false) return ''
  switch (spec.kind) {
    case 'string':
      return strAttr(codePropName, instance.getString(spec.figmaProp))
    case 'bool':
      return boolAttr(codePropName, instance.getBoolean(spec.figmaProp))
    case 'enum':
      return identAttr(codePropName, instance.getEnum(spec.figmaProp, spec.values))
    case 'instanceSwap': {
      const swapped = instance.getInstanceSwap(spec.figmaProp)
      let code
      if (swapped && swapped.type === 'INSTANCE') {
        code = swapped.executeTemplate().example
      }
      return exprAttr(codePropName, code)
    }
    default:
      return ''
  }
}

export const renderFromMap = (instance, map) => {
  const entries = Object.entries(map.props)
  const staticAttrs = entries
    .filter(([, spec]) => spec.kind !== 'instanceSwap')
    .map(([codePropName, spec]) => extractProp(instance, codePropName, spec))
    .filter(Boolean)
    .join('\n      ')

  const exprSlots = entries
    .filter(([, spec]) => spec.kind === 'instanceSwap')
    .map(([codePropName, spec]) => extractProp(instance, codePropName, spec))
  const [expr0 = '', expr1 = '', expr2 = ''] = exprSlots
  if (exprSlots.length > 3) {
    throw new Error(
      `${map.codeComponent}: ${exprSlots.length} instanceSwap props exceeds the 3-slot limit in engine.mjs`,
    )
  }

  return {
    example: figma.code`
    <${map.codeComponent}
      ${staticAttrs}
      ${expr0}
      ${expr1}
      ${expr2}
    />`,
    imports: map.imports ?? [],
    id: map.id ?? map.codeComponent,
    metadata: { nestable: true },
  }
}
