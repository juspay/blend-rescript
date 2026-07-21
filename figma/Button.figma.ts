// source=src/Button.res
// component=Button
//
// This repo is public -- no Figma file URL/key/node-id is recorded here or
// anywhere else in this repo (see figma/README.md). If you need the real
// Figma URL for reference while maintaining this template, keep it in your
// own local notes, not in this file.
//
// All property-name/value knowledge lives in figma/componentMaps/Button.mjs
// (shared with scripts/generate-figma-code-connect.mjs, which produces
// src/Figma/ButtonCodeConnect.res for non-Figma consumers). Edit the map,
// not this file.
import figma from 'figma'
import { renderFromMap } from './engine.mjs'
import ButtonMap from './componentMaps/Button.mjs'

export default renderFromMap(figma.selectedInstance, ButtonMap)
