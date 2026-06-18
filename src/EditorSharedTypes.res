type theme =
  | @as("light") Light
  | @as("dark") Dark
type inputSizeV2 =
  | @as("sm") Sm
  | @as("md") Md
  | @as("lg") Lg
type inputStateV2 =
  | @as("default") Default
  | @as("hover") Hover
  | @as("focus") Focus
  | @as("error") Error
  | @as("disabled") Disabled
type numberInputV2Direction =
  | @as("left") Left
  | @as("right") Right
type codeEditorV2Variant =
  | @as("default") Default
  | @as("no-gutter") NoGutter
  | @as("diff") Diff
type codeEditorV2SupportedLanguage =
  | @as("javascript") Javascript
  | @as("typescript") Typescript
  | @as("jsx") Jsx
  | @as("tsx") Tsx
  | @as("json") Json
  | @as("css") Css
  | @as("html") Html
  | @as("markdown") Markdown
  | @as("yaml") Yaml
  | @as("python") Python
  | @as("rust") Rust
  | @as("haskell") Haskell
type editorOption =
  | @as(0) AcceptSuggestionOnCommitCharacter
  | @as(1) AcceptSuggestionOnEnter
  | @as(2) AccessibilitySupport
  | @as(3) AccessibilityPageSize
  | @as(4) AllowOverflow
  | @as(5) AllowVariableLineHeights
  | @as(6) AllowVariableFonts
  | @as(7) AllowVariableFontsInAccessibilityMode
  | @as(8) AriaLabel
  | @as(9) AriaRequired
  | @as(10) AutoClosingBrackets
  | @as(11) AutoClosingComments
  | @as(12) ScreenReaderAnnounceInlineSuggestion
  | @as(13) AutoClosingDelete
  | @as(14) AutoClosingOvertype
  | @as(15) AutoClosingQuotes
  | @as(16) AutoIndent
  | @as(17) AutoIndentOnPaste
  | @as(18) AutoIndentOnPasteWithinString
  | @as(19) AutomaticLayout
  | @as(20) AutoSurround
  | @as(21) BracketPairColorization
  | @as(22) Guides
  | @as(23) CodeLens
  | @as(24) CodeLensFontFamily
  | @as(25) CodeLensFontSize
  | @as(26) ColorDecorators
  | @as(27) ColorDecoratorsLimit
  | @as(28) ColumnSelection
  | @as(29) Comments
  | @as(30) Contextmenu
  | @as(31) CopyWithSyntaxHighlighting
  | @as(32) CursorBlinking
  | @as(33) CursorSmoothCaretAnimation
  | @as(34) CursorStyle
  | @as(35) CursorSurroundingLines
  | @as(36) CursorSurroundingLinesStyle
  | @as(37) CursorWidth
  | @as(38) CursorHeight
  | @as(39) DisableLayerHinting
  | @as(40) DisableMonospaceOptimizations
  | @as(41) DomReadOnly
  | @as(42) DragAndDrop
  | @as(43) DropIntoEditor
  | @as(44) EditContext
  | @as(45) EmptySelectionClipboard
  | @as(46) ExperimentalGpuAcceleration
  | @as(47) ExperimentalWhitespaceRendering
  | @as(48) ExtraEditorClassName
  | @as(49) FastScrollSensitivity
  | @as(50) Find
  | @as(51) FixedOverflowWidgets
  | @as(52) Folding
  | @as(53) FoldingStrategy
  | @as(54) FoldingHighlight
  | @as(55) FoldingImportsByDefault
  | @as(56) FoldingMaximumRegions
  | @as(57) UnfoldOnClickAfterEndOfLine
  | @as(58) FontFamily
  | @as(59) FontInfo
  | @as(60) FontLigatures
  | @as(61) FontSize
  | @as(62) FontWeight
  | @as(63) FontVariations
  | @as(64) FormatOnPaste
  | @as(65) FormatOnType
  | @as(66) GlyphMargin
  | @as(67) GotoLocation
  | @as(68) HideCursorInOverviewRuler
  | @as(69) Hover
  | @as(70) InDiffEditor
  | @as(71) InlineSuggest
  | @as(72) LetterSpacing
  | @as(73) Lightbulb
  | @as(74) LineDecorationsWidth
  | @as(75) LineHeight
  | @as(76) LineNumbers
  | @as(77) LineNumbersMinChars
  | @as(78) LinkedEditing
  | @as(79) Links
  | @as(80) MatchBrackets
  | @as(81) Minimap
  | @as(82) MouseStyle
  | @as(83) MouseWheelScrollSensitivity
  | @as(84) MouseWheelZoom
  | @as(85) MultiCursorMergeOverlapping
  | @as(86) MultiCursorModifier
  | @as(87) MouseMiddleClickAction
  | @as(88) MultiCursorPaste
  | @as(89) MultiCursorLimit
  | @as(90) OccurrencesHighlight
  | @as(91) OccurrencesHighlightDelay
  | @as(92) OvertypeCursorStyle
  | @as(93) OvertypeOnPaste
  | @as(94) OverviewRulerBorder
  | @as(95) OverviewRulerLanes
  | @as(96) Padding
  | @as(97) PasteAs
  | @as(98) ParameterHints
  | @as(99) PeekWidgetDefaultFocus
  | @as(100) Placeholder
  | @as(101) DefinitionLinkOpensInPeek
  | @as(102) QuickSuggestions
  | @as(103) QuickSuggestionsDelay
  | @as(104) ReadOnly
  | @as(105) ReadOnlyMessage
  | @as(106) RenameOnType
  | @as(107) RenderRichScreenReaderContent
  | @as(108) RenderControlCharacters
  | @as(109) RenderFinalNewline
  | @as(110) RenderLineHighlight
  | @as(111) RenderLineHighlightOnlyWhenFocus
  | @as(112) RenderValidationDecorations
  | @as(113) RenderWhitespace
  | @as(114) RevealHorizontalRightPadding
  | @as(115) RoundedSelection
  | @as(116) Rulers
  | @as(117) Scrollbar
  | @as(118) ScrollBeyondLastColumn
  | @as(119) ScrollBeyondLastLine
  | @as(120) ScrollPredominantAxis
  | @as(121) SelectionClipboard
  | @as(122) SelectionHighlight
  | @as(123) SelectionHighlightMaxLength
  | @as(124) SelectionHighlightMultiline
  | @as(125) SelectOnLineNumbers
  | @as(126) ShowFoldingControls
  | @as(127) ShowUnused
  | @as(128) SnippetSuggestions
  | @as(129) SmartSelect
  | @as(130) SmoothScrolling
  | @as(131) StickyScroll
  | @as(132) StickyTabStops
  | @as(133) StopRenderingLineAfter
  | @as(134) Suggest
  | @as(135) SuggestFontSize
  | @as(136) SuggestLineHeight
  | @as(137) SuggestOnTriggerCharacters
  | @as(138) SuggestSelection
  | @as(139) TabCompletion
  | @as(140) TabIndex
  | @as(141) TrimWhitespaceOnDelete
  | @as(142) UnicodeHighlighting
  | @as(143) UnusualLineTerminators
  | @as(144) UseShadowDOM
  | @as(145) UseTabStops
  | @as(146) WordBreak
  | @as(147) WordSegmenterLocales
  | @as(148) WordSeparators
  | @as(149) WordWrap
  | @as(150) WordWrapBreakAfterCharacters
  | @as(151) WordWrapBreakBeforeCharacters
  | @as(152) WordWrapColumn
  | @as(153) WordWrapOverride1
  | @as(154) WordWrapOverride2
  | @as(155) WrappingIndent
  | @as(156) WrappingStrategy
  | @as(157) ShowDeprecated
  | @as(158) InertialScroll
  | @as(159) InlayHints
  | @as(160) WrapOnEscapedLineFeeds
  | @as(161) EffectiveCursorStyle
  | @as(162) EditorClassName
  | @as(163) PixelRatio
  | @as(164) TabFocusMode
  | @as(165) LayoutInfo
  | @as(166) WrappingInfo
  | @as(167) DefaultColorDecorators
  | @as(168) ColorDecoratorsActivatedOn
  | @as(169) InlineCompletionsAccessibilityVerbose
  | @as(170) EffectiveEditContext
  | @as(171) ScrollOnMiddleClick
  | @as(172) EffectiveAllowVariableFonts
type cursorChangeReason =
  | @as(0) NotSet
  | @as(1) ContentFlush
  | @as(2) RecoverFromMarkers
  | @as(3) Explicit
  | @as(4) Paste
  | @as(5) Undo
  | @as(6) Redo
type keyCode =
  | @as(-1) DependsOnKbLayout
  | @as(0) Unknown
  | @as(1) Backspace
  | @as(2) Tab
  | @as(3) Enter
  | @as(4) Shift
  | @as(5) Ctrl
  | @as(6) Alt
  | @as(7) PauseBreak
  | @as(8) CapsLock
  | @as(9) Escape
  | @as(10) Space
  | @as(11) PageUp
  | @as(12) PageDown
  | @as(13) End
  | @as(14) Home
  | @as(15) LeftArrow
  | @as(16) UpArrow
  | @as(17) RightArrow
  | @as(18) DownArrow
  | @as(19) Insert
  | @as(20) Delete
  | @as(21) Digit0
  | @as(22) Digit1
  | @as(23) Digit2
  | @as(24) Digit3
  | @as(25) Digit4
  | @as(26) Digit5
  | @as(27) Digit6
  | @as(28) Digit7
  | @as(29) Digit8
  | @as(30) Digit9
  | @as(31) KeyA
  | @as(32) KeyB
  | @as(33) KeyC
  | @as(34) KeyD
  | @as(35) KeyE
  | @as(36) KeyF
  | @as(37) KeyG
  | @as(38) KeyH
  | @as(39) KeyI
  | @as(40) KeyJ
  | @as(41) KeyK
  | @as(42) KeyL
  | @as(43) KeyM
  | @as(44) KeyN
  | @as(45) KeyO
  | @as(46) KeyP
  | @as(47) KeyQ
  | @as(48) KeyR
  | @as(49) KeyS
  | @as(50) KeyT
  | @as(51) KeyU
  | @as(52) KeyV
  | @as(53) KeyW
  | @as(54) KeyX
  | @as(55) KeyY
  | @as(56) KeyZ
  | @as(57) Meta
  | @as(58) ContextMenu
  | @as(59) F1
  | @as(60) F2
  | @as(61) F3
  | @as(62) F4
  | @as(63) F5
  | @as(64) F6
  | @as(65) F7
  | @as(66) F8
  | @as(67) F9
  | @as(68) F10
  | @as(69) F11
  | @as(70) F12
  | @as(71) F13
  | @as(72) F14
  | @as(73) F15
  | @as(74) F16
  | @as(75) F17
  | @as(76) F18
  | @as(77) F19
  | @as(78) F20
  | @as(79) F21
  | @as(80) F22
  | @as(81) F23
  | @as(82) F24
  | @as(83) NumLock
  | @as(84) ScrollLock
  | @as(85) Semicolon
  | @as(86) Equal
  | @as(87) Comma
  | @as(88) Minus
  | @as(89) Period
  | @as(90) Slash
  | @as(91) Backquote
  | @as(92) BracketLeft
  | @as(93) Backslash
  | @as(94) BracketRight
  | @as(95) Quote
  | @as(96) OEM8
  | @as(97) IntlBackslash
  | @as(98) Numpad0
  | @as(99) Numpad1
  | @as(100) Numpad2
  | @as(101) Numpad3
  | @as(102) Numpad4
  | @as(103) Numpad5
  | @as(104) Numpad6
  | @as(105) Numpad7
  | @as(106) Numpad8
  | @as(107) Numpad9
  | @as(108) NumpadMultiply
  | @as(109) NumpadAdd
  | @as(110) NUMPADSEPARATOR
  | @as(111) NumpadSubtract
  | @as(112) NumpadDecimal
  | @as(113) NumpadDivide
  | @as(114) KEYINCOMPOSITION
  | @as(115) ABNTC1
  | @as(116) ABNTC2
  | @as(117) AudioVolumeMute
  | @as(118) AudioVolumeUp
  | @as(119) AudioVolumeDown
  | @as(120) BrowserSearch
  | @as(121) BrowserHome
  | @as(122) BrowserBack
  | @as(123) BrowserForward
  | @as(124) MediaTrackNext
  | @as(125) MediaTrackPrevious
  | @as(126) MediaStop
  | @as(127) MediaPlayPause
  | @as(128) LaunchMediaPlayer
  | @as(129) LaunchMail
  | @as(130) LaunchApp2
  | @as(131) Clear
  | @as(132) MAXVALUE
type renderMinimap =
  | @as(0) None
  | @as(1) Text
  | @as(2) Blocks
type defaultEndOfLine =
  | @as(1) LF
  | @as(2) CRLF
type endOfLinePreference =
  | @as(0) TextDefined
  | @as(1) LF
  | @as(2) CRLF
type endOfLineSequence =
  | @as(0) LF
  | @as(1) CRLF
type trackedRangeStickiness =
  | @as(0) AlwaysGrowsWhenTypingAtEdges
  | @as(1) NeverGrowsWhenTypingAtEdges
  | @as(2) GrowsOnlyWhenTypingBefore
  | @as(3) GrowsOnlyWhenTypingAfter
type textDirection =
  | @as(0) LTR
  | @as(1) RTL
type cursorSurroundingLinesStyle =
  | @as("all") All
  | @as("default") Default
type renderFinalNewline =
  | @as("off") Off
  | @as("on") On
  | @as("dimmed") Dimmed
type unusualLineTerminators =
  | @as("auto") Auto
  | @as("off") Off
  | @as("prompt") Prompt
type renderValidationDecorations =
  | @as("off") Off
  | @as("on") On
  | @as("editable") Editable
type vertical =
  | @as("auto") Auto
  | @as("hidden") Hidden
  | @as("visible") Visible
type defaultModel =
  | @as("outlineModel") OutlineModel
  | @as("foldingProviderModel") FoldingProviderModel
  | @as("indentationModel") IndentationModel
type autohide =
  | @as("none") None
  | @as("scroll") Scroll
  | @as("mouseover") Mouseover
type size3 =
  | @as("fill") Fill
  | @as("proportional") Proportional
  | @as("fit") Fit
type showSlider =
  | @as("always") Always
  | @as("mouseover") Mouseover
type seedSearchStringFromSelection =
  | @as("always") Always
  | @as("never") Never
  | @as("selection") Selection
type autoFindInSelection =
  | @as("always") Always
  | @as("never") Never
  | @as("multiline") Multiline
type cursorBlinking =
  | @as("solid") Solid
  | @as("blink") Blink
  | @as("smooth") Smooth
  | @as("phase") Phase
  | @as("expand") Expand
type mouseStyle =
  | @as("text") Text
  | @as("default") Default
  | @as("copy") Copy
type cursorSmoothCaretAnimation =
  | @as("off") Off
  | @as("on") On
  | @as("explicit") Explicit
type cursorStyle =
  | @as("block") Block
  | @as("line") Line
  | @as("underline") Underline
  | @as("line-thin") LineThin
  | @as("block-outline") BlockOutline
  | @as("underline-thin") UnderlineThin
type defaultColorDecorators =
  | @as("auto") Auto
  | @as("always") Always
  | @as("never") Never
type wordWrap =
  | @as("off") Off
  | @as("on") On
  | @as("wordWrapColumn") WordWrapColumn
  | @as("bounded") Bounded
type wordWrapOverride1 =
  | @as("inherit") Inherit
  | @as("off") Off
  | @as("on") On
type wrappingIndent =
  | @as("none") None
  | @as("same") Same
  | @as("indent") Indent
  | @as("deepIndent") DeepIndent
type wrappingStrategy =
  | @as("simple") Simple
  | @as("advanced") Advanced
type wordBreak =
  | @as("normal") Normal
  | @as("keepAll") KeepAll
type colorDecoratorsActivatedOn =
  | @as("hover") Hover
  | @as("click") Click
  | @as("clickAndHover") ClickAndHover
type multiCursorModifier =
  | @as("alt") Alt
  | @as("ctrlCmd") CtrlCmd
type multiCursorPaste =
  | @as("full") Full
  | @as("spread") Spread
type mouseMiddleClickAction =
  | @as("default") Default
  | @as("openLink") OpenLink
  | @as("ctrlLeftClick") CtrlLeftClick
type accessibilitySupport =
  | @as("auto") Auto
  | @as("off") Off
  | @as("on") On
type insertMode =
  | @as("replace") Replace
  | @as("insert") Insert
type selectionMode =
  | @as("always") Always
  | @as("never") Never
  | @as("whenTriggerCharacter") WhenTriggerCharacter
  | @as("whenQuickSuggestion") WhenQuickSuggestion
type previewMode =
  | @as("prefix") Prefix
  | @as("subword") Subword
  | @as("subwordSmart") SubwordSmart
type showToolbar =
  | @as("always") Always
  | @as("never") Never
  | @as("onHover") OnHover
type goToLocationValues =
  | @as("peek") Peek
  | @as("gotoAndPeek") GotoAndPeek
  | @as("goto") Goto
type editorAutoClosingStrategy =
  | @as("always") Always
  | @as("never") Never
  | @as("languageDefined") LanguageDefined
  | @as("beforeWhitespace") BeforeWhitespace
type editorAutoClosingEditStrategy =
  | @as("auto") Auto
  | @as("always") Always
  | @as("never") Never
type editorAutoSurroundStrategy =
  | @as("never") Never
  | @as("languageDefined") LanguageDefined
  | @as("quotes") Quotes
  | @as("brackets") Brackets
type autoIndent =
  | @as("none") None
  | @as("full") Full
  | @as("brackets") Brackets
  | @as("advanced") Advanced
  | @as("keep") Keep
type acceptSuggestionOnEnter =
  | @as("off") Off
  | @as("on") On
  | @as("smart") Smart
type snippetSuggestions =
  | @as("none") None
  | @as("top") Top
  | @as("bottom") Bottom
  | @as("inline") Inline
type suggestSelection =
  | @as("first") First
  | @as("recentlyUsed") RecentlyUsed
  | @as("recentlyUsedByPrefix") RecentlyUsedByPrefix
type tabCompletion =
  | @as("off") Off
  | @as("on") On
  | @as("onlySnippets") OnlySnippets
type occurrencesHighlight =
  | @as("off") Off
  | @as("singleFile") SingleFile
  | @as("multiFile") MultiFile
type showLightbulbIconMode =
  | @as("off") Off
  | @as("onCode") OnCode
  | @as("on") On
type foldingStrategy =
  | @as("auto") Auto
  | @as("indentation") Indentation
type showFoldingControls =
  | @as("always") Always
  | @as("never") Never
  | @as("mouseover") Mouseover
type matchBrackets =
  | @as("always") Always
  | @as("never") Never
  | @as("near") Near
type experimentalGpuAcceleration =
  | @as("off") Off
  | @as("on") On
type experimentalWhitespaceRendering =
  | @as("off") Off
  | @as("svg") Svg
  | @as("font") Font
type renderWhitespace =
  | @as("none") None
  | @as("all") All
  | @as("boundary") Boundary
  | @as("selection") Selection
  | @as("trailing") Trailing
type renderLineHighlight =
  | @as("none") None
  | @as("all") All
  | @as("line") Line
  | @as("gutter") Gutter
type peekWidgetDefaultFocus =
  | @as("tree") Tree
  | @as("editor") Editor
type enabled =
  | @as("off") Off
  | @as("on") On
  | @as("offUnlessPressed") OffUnlessPressed
  | @as("onUnlessPressed") OnUnlessPressed
type showDropSelector =
  | @as("never") Never
  | @as("afterDrop") AfterDrop
type showPasteSelector =
  | @as("never") Never
  | @as("afterPaste") AfterPaste
type scrollType =
  | @as(0) Smooth
  | @as(1) Immediate
type positionAffinity =
  | @as(0) Left
  | @as(1) Right
  | @as(2) None
  | @as(3) LeftOfInjectedText
  | @as(4) RightOfInjectedText
type contentWidgetPositionPreference =
  | @as(0) EXACT
  | @as(1) ABOVE
  | @as(2) BELOW
type glyphMarginLane =
  | @as(1) Left
  | @as(2) Center
  | @as(3) Right
type wordBasedSuggestions =
  | @as("off") Off
  | @as("currentDocument") CurrentDocument
  | @as("matchingDocuments") MatchingDocuments
  | @as("allDocuments") AllDocuments
type diffAlgorithm =
  | @as("legacy") Legacy
  | @as("advanced") Advanced
type goToDiff =
  | @as("next") Next
  | @as("previous") Previous
type multiSelectV2SelectionTagType =
  | @as("count") Count
  | @as("text") Text
type type_4 =
  | @as("separator") Separator
  | @as("label") Label
  | @as("item") Item
type inputsV2FontSizeConfig = {
  sm: string,
  md: string,
  lg: string,
}
type inputsV2ColorConfig = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type inputsV2LabelConfig = {
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
  color: inputsV2ColorConfig,
}
type inputsV2RequiredConfig = {
  color: string,
}
type inputsV2HelpIconConfig = {
  width: inputsV2FontSizeConfig,
  color: inputsV2ColorConfig,
}
type inputLabelsV2Tokens = {
  label: inputsV2LabelConfig,
  subLabel: inputsV2LabelConfig,
  required: inputsV2RequiredConfig,
  helpIcon: inputsV2HelpIconConfig,
}
type inputsV2PlaceholderConfig = {
  transition: string,
  color: inputsV2ColorConfig,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
}
type inputsV2PaddingConfig = {
  top: inputsV2FontSizeConfig,
  right: inputsV2FontSizeConfig,
  bottom: inputsV2FontSizeConfig,
  left: inputsV2FontSizeConfig,
}
type inputsV2InputContainerConfig = {
  gap: string,
  placeholder: inputsV2PlaceholderConfig,
  lineHeight: inputsV2FontSizeConfig,
  fontSize: string,
  fontWeight: string,
  padding: inputsV2PaddingConfig,
  borderRadius: string,
  boxShadow: string,
  border: inputsV2ColorConfig,
  color: inputsV2ColorConfig,
  backgroundColor: inputsV2ColorConfig,
}
type inputsV2ErrorMessageConfig = {
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
  color: string,
}
type inputFooterV2Tokens = {
  hintText: inputsV2LabelConfig,
  errorMessage: inputsV2ErrorMessageConfig,
}
type textAreaV2TokensType = {
  gap: string,
  topContainer: inputLabelsV2Tokens,
  inputContainer: inputsV2InputContainerConfig,
  bottomContainer: inputFooterV2Tokens,
}
type responsiveTextAreaV2Tokens = {
  sm: textAreaV2TokensType,
  lg: textAreaV2TokensType,
}
type inputsV2BackgroundColorConfig = {
  default: string,
  hover: string,
  focus: string,
  error: string,
  disabled: string,
}
type inputsV2OverflowMenuConfig = {
  gap: string,
  backgroundColor: inputsV2BackgroundColorConfig,
  borderRadius: string,
  padding: string,
  top: string,
  right: string,
  maxHeight: string,
}
type inputsV2AttachedFilesContainerConfig = {
  gap: string,
  overflowMenu: inputsV2OverflowMenuConfig,
}
type inputsV2TextConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type inputsV2TagContainerConfig = {
  gap: string,
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  backgroundColor: string,
  text: inputsV2TextConfig,
}
type inputsV2InputConfig = {
  color: string,
  placeholder: string,
  paddingTop: string,
  paddingRight: string,
  paddingLeft: string,
  minHeight: string,
  maxHeight: string,
}
type inputsV2ActionContainerConfig = {
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type inputsV2HeaderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
  textTransform: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  backgroundColor: string,
}
type inputsV2ItemConfig = {
  backgroundColor: inputsV2ColorConfig,
  color: inputsV2ColorConfig,
  fontSize: string,
  fontWeight: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  transition: string,
  cursor: string,
  opacity: inputsV2ColorConfig,
}
type inputsV2TopQueriesContainerConfig = {
  marginRight: string,
  marginLeft: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderTop: string,
  header: inputsV2HeaderConfig,
  item: inputsV2ItemConfig,
}
type inputsV2InputContainerConfig2 = {
  outline: inputsV2ColorConfig,
  boxShadow: inputsV2ColorConfig,
  gap: string,
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  border: string,
  backgroundColor: string,
  input: inputsV2InputConfig,
  actionContainer: inputsV2ActionContainerConfig,
  topQueriesContainer: inputsV2TopQueriesContainerConfig,
}
type inputsV2ContainerConfig = {
  backgroundColor: inputsV2ColorConfig,
  borderRadius: string,
  border: inputsV2ColorConfig,
  gap: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  attachedFilesContainer: inputsV2AttachedFilesContainerConfig,
  tagContainer: inputsV2TagContainerConfig,
  inputContainer: inputsV2InputContainerConfig2,
}
type chatInputV2TokensType = {
  container: inputsV2ContainerConfig,
}
type responsiveChatInputV2TokensType = {
  sm: chatInputV2TokensType,
  lg: chatInputV2TokensType,
}
type stateToken2 = {
  active: string,
  default: string,
  hover: string,
  disabled: string,
  focus: string,
  focusVisible: string,
  selected: string,
}
type singleSelectV2LabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: stateToken2,
}
type singleSelectV2ErrorMessageConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type singleSelectV2RequiredConfig = {
  color: string,
}
type variantToken = {
  container: string,
  @as("no-container") noContainer: string,
}
type sizeToken = {
  sm: variantToken,
  md: variantToken,
  lg: variantToken,
}
type singleSelectV2ContainerConfig = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type variantToken2 = {
  container: singleSelectV2ContainerConfig,
  @as("no-container") noContainer: singleSelectV2ContainerConfig,
}
type sizeToken2 = {
  sm: variantToken2,
  md: variantToken2,
  lg: variantToken2,
}
type triggerStateToken = {
  hover: string,
  error: string,
  focus: string,
  @as("open") open_: string,
  closed: string,
}
type variantToken3 = {
  container: triggerStateToken,
  @as("no-container") noContainer: triggerStateToken,
}
type singleSelectV2SlotConfig = {
  gap: string,
  width: string,
}
type singleSelectV2PlaceholderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type singleSelectV2TriggerConfig = {
  height: sizeToken,
  padding: sizeToken2,
  borderRadius: sizeToken,
  boxShadow: variantToken,
  backgroundColor: variantToken3,
  outline: variantToken3,
  slot: singleSelectV2SlotConfig,
  placeholder: singleSelectV2PlaceholderConfig,
  selectedValue: singleSelectV2PlaceholderConfig,
}
type singleSelectV2ContentConfig = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  boxShadow: string,
}
type singleSelectV2GroupLabelConfig = {
  margin: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  fontSize: string,
  fontWeight: string,
  color: stateToken2,
}
type singleSelectV2SeparatorConfig = {
  color: string,
  height: string,
  margin: string,
}
type singleSelectV2ItemConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
  gap: string,
  backgroundColor: stateToken2,
  groupLabelText: singleSelectV2LabelConfig,
  option: singleSelectV2LabelConfig,
  description: singleSelectV2LabelConfig,
  separator: singleSelectV2SeparatorConfig,
}
type submenuTriggerStateToken = {
  default: string,
  hover: string,
  focus: string,
}
type singleSelectV2TriggerConfig2 = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
  backgroundColor: submenuTriggerStateToken,
}
type singleSelectV2ContentConfig2 = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  boxShadow: string,
}
type singleSelectV2SubmenuConfig = {
  trigger: singleSelectV2TriggerConfig2,
  content: singleSelectV2ContentConfig2,
  optionText: singleSelectV2ErrorMessageConfig,
  iconColor: string,
}
type singleSelectV2MenuConfig = {
  content: singleSelectV2ContentConfig,
  padding: sizeToken2,
  groupLabel: singleSelectV2GroupLabelConfig,
  item: singleSelectV2ItemConfig,
  submenu: singleSelectV2SubmenuConfig,
}
type singleSelectV2HeaderConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderBottom: string,
}
type singleSelectV2MobilePanelConfig = {
  header: singleSelectV2HeaderConfig,
}
type singleSelectV2TokensType = {
  gap: string,
  label: singleSelectV2LabelConfig,
  subLabel: singleSelectV2LabelConfig,
  hintText: singleSelectV2LabelConfig,
  errorMessage: singleSelectV2ErrorMessageConfig,
  required: singleSelectV2RequiredConfig,
  trigger: singleSelectV2TriggerConfig,
  menu: singleSelectV2MenuConfig,
  mobilePanel: singleSelectV2MobilePanelConfig,
}
type responsiveSingleSelectV2Tokens = {
  sm: singleSelectV2TokensType,
  lg: singleSelectV2TokensType,
}
type stateToken3 = {
  active: string,
  default: string,
  hover: string,
  disabled: string,
  focus: string,
  focusVisible: string,
  selected: string,
}
type multiSelectV2LabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: stateToken3,
}
type multiSelectV2ErrorMessageConfig = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type multiSelectV2RequiredConfig = {
  color: string,
}
type variantToken4 = {
  container: string,
  @as("no-container") noContainer: string,
}
type sizeToken3 = {
  sm: variantToken4,
  md: variantToken4,
  lg: variantToken4,
}
type multiSelectV2ContainerConfig = {
  top: string,
  right: string,
  bottom: string,
  left: string,
}
type variantToken5 = {
  container: multiSelectV2ContainerConfig,
  @as("no-container") noContainer: multiSelectV2ContainerConfig,
}
type sizeToken4 = {
  sm: variantToken5,
  md: variantToken5,
  lg: variantToken5,
}
type triggerStateToken2 = {
  hover: string,
  error: string,
  focus: string,
  @as("open") open_: string,
  closed: string,
}
type variantToken6 = {
  container: triggerStateToken2,
  @as("no-container") noContainer: triggerStateToken2,
}
type multiSelectV2SlotConfig = {
  gap: string,
  width: string,
}
type multiSelectV2CountConfig = {
  color: string,
  backgroundColor: string,
  fontWeight: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type selectionTagTypeToken = {
  count: multiSelectV2CountConfig,
  text: multiSelectV2CountConfig,
}
type contextSelectionTagConfig = {
  container: selectionTagTypeToken,
  @as("no-container") noContainer: selectionTagTypeToken,
  marginLeft: string,
  borderRadius: string,
}
type multiSelectV2ChevronConfig = {
  gap: string,
  width: string,
  height: string,
  iconSize?: float,
}
type multiSelectV2ClearButtonConfig = {
  backgroundColor: triggerStateToken2,
  outline: triggerStateToken2,
  color: string,
  width?: string,
}
type multiSelectV2FloatingLabelConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type multiSelectV2PlaceholderConfig = {
  color: string,
  fontSize: string,
  fontWeight: string,
}
type multiSelectV2TriggerConfig = {
  height: sizeToken3,
  padding: sizeToken4,
  borderRadius: sizeToken3,
  boxShadow: variantToken4,
  backgroundColor: variantToken6,
  outline: variantToken6,
  slot: multiSelectV2SlotConfig,
  selectionTag: contextSelectionTagConfig,
  chevron: multiSelectV2ChevronConfig,
  clearButton?: multiSelectV2ClearButtonConfig,
  floatingLabel: multiSelectV2FloatingLabelConfig,
  placeholder: multiSelectV2PlaceholderConfig,
  selectedValue: multiSelectV2PlaceholderConfig,
}
type multiSelectV2ScrollConfig = {
  height: string,
  maxHeight: string,
}
type multiSelectV2HeaderConfig = {
  backgroundColor: string,
  borderBottom: string,
  selectAllRowPaddingLeft: string,
  selectAllRowPaddingRight: string,
}
type multiSelectV2SelectAllConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderRadius: string,
}
type multiSelectV2ActionsConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  gap: string,
  backgroundColor: string,
  borderTop: string,
}
type multiSelectV2OptionsLabelConfig = {
  fontSize: string,
  fontWeight: string,
  color: stateToken3,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type multiSelectV2SeperatorConfig = {
  color: string,
  height: string,
  margin: string,
}
type multiSelectV2ItemConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
  gap: string,
  backgroundColor: stateToken3,
  optionsLabel: multiSelectV2OptionsLabelConfig,
  option: multiSelectV2LabelConfig,
  description: multiSelectV2LabelConfig,
  seperator: multiSelectV2SeperatorConfig,
}
type multiSelectV2MenuConfig = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  padding: sizeToken4,
  minWidth: string,
  scroll: multiSelectV2ScrollConfig,
  header: multiSelectV2HeaderConfig,
  selectAll: multiSelectV2SelectAllConfig,
  list: multiSelectV2FloatingLabelConfig,
  actions: multiSelectV2ActionsConfig,
  item: multiSelectV2ItemConfig,
}
type multiSelectV2TriggerConfig2 = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  margin: string,
  borderRadius: string,
}
type multiSelectV2ContentConfig = {
  borderRadius: string,
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
}
type multiSelectV2SubMenuConfig = {
  trigger: multiSelectV2TriggerConfig2,
  content: multiSelectV2ContentConfig,
}
type multiSelectV2HeaderConfig2 = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  borderBottom: string,
}
type multiSelectV2SearchConfig = {
  paddingTop: string,
  paddingRight: string,
  paddingBottom: string,
  paddingLeft: string,
  marginTop: string,
  marginBottom: string,
}
type multiSelectV2ContentConfig2 = {
  gap: string,
}
type multiSelectV2DrawerConfig = {
  header: multiSelectV2HeaderConfig2,
  search: multiSelectV2SearchConfig,
  content: multiSelectV2ContentConfig2,
}
type multiSelectV2TokensType = {
  gap: string,
  label: multiSelectV2LabelConfig,
  subLabel: multiSelectV2LabelConfig,
  hintText: multiSelectV2LabelConfig,
  errorMessage: multiSelectV2ErrorMessageConfig,
  required: multiSelectV2RequiredConfig,
  trigger: multiSelectV2TriggerConfig,
  menu: multiSelectV2MenuConfig,
  subMenu: multiSelectV2SubMenuConfig,
  drawer: multiSelectV2DrawerConfig,
}
type responsiveMultiSelectV2Tokens = {
  sm: multiSelectV2TokensType,
  lg: multiSelectV2TokensType,
}
type inputsV2PlaceholderConfig2 = {
  color: inputsV2ColorConfig,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  lineHeight: inputsV2FontSizeConfig,
}
type inputsV2InputContainerConfig3 = {
  gap: string,
  placeholder: inputsV2PlaceholderConfig2,
  inputText: inputsV2LabelConfig,
  borderRadius: inputsV2FontSizeConfig,
  boxShadow: string,
  padding: inputsV2PaddingConfig,
  border: inputsV2ColorConfig,
  backgroundColor: inputsV2ColorConfig,
}
type textInputV2TokensType = {
  gap: string,
  topContainer: inputLabelsV2Tokens,
  inputContainer: inputsV2InputContainerConfig3,
  bottomContainer: inputFooterV2Tokens,
}
type responsiveTextInputV2Tokens = {
  sm: textInputV2TokensType,
  lg: textInputV2TokensType,
}
type codeEditorV2IconConfig = {
  width: string,
}
type codeEditorV2TextConfig = {
  fontSize: string,
  fontWeight: string,
  lineHeight: string,
  color: string,
}
type codeEditorV2HeaderConfig = {
  backgroundColor: string,
  borderBottom: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  gap: string,
  icon: codeEditorV2IconConfig,
  text: codeEditorV2TextConfig,
}
type codeEditorV2BackgroundColorConfig = {
  added: string,
  removed: string,
  unchanged: string,
}
type codeEditorV2GutterConfig = {
  width: string,
  color: string,
  backgroundColor: codeEditorV2BackgroundColorConfig,
  borderLeft: codeEditorV2BackgroundColorConfig,
  borderColor: codeEditorV2BackgroundColorConfig,
}
type codeEditorV2CodeConfig = {
  fontFamily: string,
  fontSize: string,
  lineHeight: string,
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
}
type codeEditorV2HighlightedLineConfig = {
  backgroundColor: codeEditorV2BackgroundColorConfig,
}
type codeEditorV2KeywordConfig = {
  color: string,
}
type codeEditorV2SyntaxConfig = {
  keyword: codeEditorV2KeywordConfig,
  function: codeEditorV2KeywordConfig,
  string: codeEditorV2KeywordConfig,
  number: codeEditorV2KeywordConfig,
  operator: codeEditorV2KeywordConfig,
  variable: codeEditorV2KeywordConfig,
  comment: codeEditorV2KeywordConfig,
  text: codeEditorV2KeywordConfig,
}
type codeEditorV2BodyConfig = {
  paddingTop: string,
  paddingBottom: string,
  paddingLeft: string,
  paddingRight: string,
  backgroundColor: string,
  gutter: codeEditorV2GutterConfig,
  code: codeEditorV2CodeConfig,
  highlightedLine: codeEditorV2HighlightedLineConfig,
  syntax: codeEditorV2SyntaxConfig,
}
type codeEditorV2Tokens = {
  backgroundColor: string,
  border: string,
  borderRadius: string,
  boxShadow: string,
  theme: theme,
  header: codeEditorV2HeaderConfig,
  body: codeEditorV2BodyConfig,
}
type responsiveCodeEditorV2Tokens = {
  sm: codeEditorV2Tokens,
  lg: codeEditorV2Tokens,
}
type inputsV2PlaceholderColorConfig = {
  default: string,
  focus: string,
  hover: string,
  error: string,
  disabled: string,
}
type inputsV2CloseButtonConfig = {
  width: string,
}
type inputsV2LeftSlotConfig = {
  width: string,
  height: string,
}
type inputsV2SlotAlignTopConfig = {
  withTags: string,
  withoutTags: string,
}
type inputsV2InputContainerConfig4 = {
  offSet: float,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  gap: string,
  borderRadius?: string,
  boxShadow: inputsV2ColorConfig,
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  border: inputsV2ColorConfig,
  color: inputsV2ColorConfig,
  placeholderColor: inputsV2PlaceholderColorConfig,
  backgroundColor: inputsV2ColorConfig,
  closeButton: inputsV2CloseButtonConfig,
  leftSlot: inputsV2LeftSlotConfig,
  rightSlot: inputsV2LeftSlotConfig,
  slotAlignTop: inputsV2SlotAlignTopConfig,
}
type multiValueInputV2TokensType = {
  gap: string,
  borderRadius: string,
  topContainer: inputLabelsV2Tokens,
  inputContainer: inputsV2InputContainerConfig4,
  bottomContainer: inputFooterV2Tokens,
}
type responsiveMultiValueInputV2Tokens = {
  sm: multiValueInputV2TokensType,
  lg: multiValueInputV2TokensType,
}
type inputsV2WidthConfig = {
  sm: string,
  md: string,
  lg: string,
}
type inputsV2IconConfig = {
  color: inputsV2BackgroundColorConfig,
  width: inputsV2WidthConfig,
}
type inputsV2StepperButtonConfig = {
  width: inputsV2FontSizeConfig,
  backgroundColor: inputsV2ColorConfig,
  icon: inputsV2IconConfig,
}
type inputsV2LeftConfig = {
  width: inputsV2WidthConfig,
  height: inputsV2WidthConfig,
  margin: inputsV2WidthConfig,
}
type inputsV2SlotConfig = {
  left: inputsV2LeftConfig,
  right: inputsV2LeftConfig,
}
type inputsV2InputContainerConfig5 = {
  placeholder: inputsV2PlaceholderConfig2,
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  color: inputsV2ColorConfig,
  borderRadius: inputsV2FontSizeConfig,
  boxShadow: string,
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  border: inputsV2ColorConfig,
  lineHeight: inputsV2FontSizeConfig,
  backgroundColor: inputsV2ColorConfig,
  stepperButton: inputsV2StepperButtonConfig,
  slot: inputsV2SlotConfig,
}
type inputsV2UnitConfig = {
  fontSize: inputsV2FontSizeConfig,
  fontWeight: inputsV2FontSizeConfig,
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  borderRadius: inputsV2FontSizeConfig,
  border: inputsV2ColorConfig,
  color: inputsV2ColorConfig,
}
type floatingLabelsV2Tokens = {
  placeholder: inputsV2PlaceholderConfig2,
  required: inputsV2RequiredConfig,
}
type numberInputV2TokensType = {
  gap: string,
  topContainer: inputLabelsV2Tokens,
  inputContainer: inputsV2InputContainerConfig5,
  unit: inputsV2UnitConfig,
  floatingLabels: floatingLabelsV2Tokens,
  bottomContainer: inputFooterV2Tokens,
}
type responsiveNumberInputV2Tokens = {
  sm: numberInputV2TokensType,
  lg: numberInputV2TokensType,
}
type inputsV2InputConfig2 = {
  height: string,
  width: string,
  fontSize: string,
  fontWeight: string,
  color: inputsV2ColorConfig,
  borderRadius: string,
  border: inputsV2ColorConfig,
  backgroundColor: inputsV2ColorConfig,
}
type inputsV2InputContainerConfig6 = {
  gap: string,
  input: inputsV2InputConfig2,
}
type otpInputV2TokensType = {
  gap: string,
  topContainer: inputLabelsV2Tokens,
  inputContainer: inputsV2InputContainerConfig6,
  bottomContainer: inputFooterV2Tokens,
}
type responsiveOTPInputV2Tokens = {
  sm: otpInputV2TokensType,
  lg: otpInputV2TokensType,
}
type inputsV2LabelConfig2 = {
  fontSize: string,
  fontWeight: string,
  color: inputsV2ColorConfig,
}
type inputsV2ErrorMessageConfig2 = {
  fontSize: string,
  fontWeight: string,
  color: string,
}
type inputsV2LeftConfig2 = {
  top: string,
  left: string,
  bottom: string,
}
type inputsV2RightConfig = {
  top: string,
  right: string,
  bottom: string,
}
type inputsV2SlotConfig2 = {
  left: inputsV2LeftConfig2,
  right: inputsV2RightConfig,
  transition: string,
  transform: string,
  color: inputsV2ColorConfig,
}
type inputsV2InputContainerConfig7 = {
  paddingTop: inputsV2FontSizeConfig,
  paddingRight: inputsV2FontSizeConfig,
  paddingBottom: inputsV2FontSizeConfig,
  paddingLeft: inputsV2FontSizeConfig,
  borderRadius: string,
  borderBottom: inputsV2ColorConfig,
  outline: string,
  boxShadow: string,
  color: inputsV2ColorConfig,
  placeholderColor: inputsV2ColorConfig,
  fontSize: string,
  fontWeight: string,
  slot: inputsV2SlotConfig2,
}
type inputsV2IconConfig2 = {
  color: inputsV2ColorConfig,
  width: string,
}
type searchInputV2TokensType = {
  gap: string,
  label: inputsV2LabelConfig2,
  subLabel: inputsV2LabelConfig2,
  hintText: inputsV2LabelConfig2,
  errorMessage: inputsV2ErrorMessageConfig2,
  required: inputsV2RequiredConfig,
  inputContainer: inputsV2InputContainerConfig7,
  icon: inputsV2IconConfig2,
}
type responsiveSearchInputV2Tokens = {
  sm: searchInputV2TokensType,
  lg: searchInputV2TokensType,
}
type inputsV2AttachmentButtonDimensionsConfig = {
  width: string,
  height: string,
  border: string,
  borderRadius: string,
  backgroundColor: inputsV2ColorConfig,
  color: string,
}
type contextInputContainerConfig = {
  border: inputsV2ColorConfig,
  borderRadius: inputsV2ColorConfig,
  boxShadow: inputsV2ColorConfig,
  paddingLeft: string,
  paddingTop: string,
  paddingBottom: string,
  lineHeight: string,
  fontSize: string,
  fontWeight: string,
  color: string,
  placeholder: inputsV2RequiredConfig,
  backgroundColor: string,
  width: string,
  height: string,
  minHeight: string,
  maxHeight: string,
  minWidth: string,
  maxWidth: string,
}
type inputsV2SecondaryActionConfig = {
  width: string,
  height: string,
  borderRadius: string,
  right: string,
  bottom: string,
  backgroundColor: inputsV2ColorConfig,
  color: string,
}
type chatInputV2MobileTokensType = {
  gap: string,
  attachmentButtonDimensions: inputsV2AttachmentButtonDimensionsConfig,
  inputContainer: contextInputContainerConfig,
  secondaryAction: inputsV2SecondaryActionConfig,
}
type componentTokenType = {
  @as("TAGS") tAGS?: TagsTypes.responsiveTagTokens,
  @as("SEARCH_INPUT") sEARCH_INPUT?: InputsTypes.responsiveSearchInputTokens,
  @as("TEXT_AREA") tEXT_AREA?: InputsTypes.responsiveTextAreaTokens,
  @as("TEXT_AREA_V2") tEXT_AREA_V2?: responsiveTextAreaV2Tokens,
  @as("RADIO") rADIO?: RadioTypes.responsiveRadioTokens,
  @as("SWITCH") sWITCH?: SwitchTypes.responsiveSwitchTokens,
  @as("TEXT_INPUT") tEXT_INPUT?: InputsTypes.responsiveTextInputTokens,
  @as("NUMBER_INPUT") nUMBER_INPUT?: InputsTypes.responsiveNumberInputTokens,
  @as("ALERT") aLERT?: AlertTypes.responsiveAlertTokens,
  @as("OTP_INPUT") oTP_INPUT?: InputsTypes.responsiveOTPInputTokens,
  @as("TOOLTIP") tOOLTIP?: TooltipTypes.responsiveTooltipTokens,
  @as("UNIT_INPUT") uNIT_INPUT?: InputsTypes.responsiveUnitInputTokens,
  @as("MULTI_VALUE_INPUT") mULTI_VALUE_INPUT?: InputsTypes.responsiveMultiValueInputTokens,
  @as("DROPDOWN_INPUT") dROPDOWN_INPUT?: InputsTypes.responsiveDropdownInputTokens,
  @as("CHECKBOX") cHECKBOX?: CheckboxTypes.responsiveCheckboxTokens,
  @as("TABS") tABS?: TabsTypes.responsiveTabsTokens,
  @as("BUTTON") bUTTON?: ButtonTypes.responsiveButtonTokens,
  @as("MODAL") mODAL?: ModalTypes.responsiveModalTokens,
  @as("BREADCRUMB") bREADCRUMB?: BreadcrumbTypes.responsiveBreadcrumbTokens,
  @as("POPOVER") pOPOVER?: PopoverTypes.responsivePopoverTokens,
  @as("MENU") mENU?: MenuTypes.responsiveMenuTokensType,
  @as("MENU_V2") mENU_V2?: MenuV2Types.responsiveMenuV2TokensType,
  @as("MULTI_SELECT") mULTI_SELECT?: MultiSelectTypes.responsiveMultiSelectTokens,
  @as("SINGLE_SELECT") sINGLE_SELECT?: SingleSelectTypes.responsiveSingleSelectTokens,
  @as("TABLE") tABLE?: DataTableTypes.responsiveTableTokens,
  @as("CALENDAR") cALENDAR?: DateRangePickerTypes.responsiveCalendarTokens,
  @as("ACCORDION") aCCORDION?: AccordionTypes.responsiveAccordionTokens,
  @as("STAT_CARD") sTAT_CARD?: StatCardTypes.responsiveStatCardTokens,
  @as("PROGRESS_BAR") pROGRESS_BAR?: ProgressBarTypes.responsiveProgressBarTokens,
  @as("DRAWER") dRAWER?: DrawerTypes.responsiveDrawerTokens,
  @as("CHARTS") cHARTS?: ChartsTypes.responsiveChartTokens,
  @as("SNACKBAR") sNACKBAR?: SnackbarTypes.responsiveSnackbarTokens,
  @as("STEPPER") sTEPPER?: StepperTypes.responsiveStepperTokens,
  @as("KEYVALUEPAIR") kEYVALUEPAIR?: KeyValuePairTypes.responsiveKeyValuePairTokens,
  @as("CARD") cARD?: CardTypes.responsiveCardTokens,
  @as("SKELETON") sKELETON?: SkeletonTypes.responsiveSkeletonTokens,
  @as("TOPBAR") tOPBAR?: TopbarTypes.responsiveTopbarTokens,
  @as("TOPBARV2") tOPBARV2?: TopbarV2Types.responsiveTopbarV2Tokens,
  @as("AVATAR") aVATAR?: AvatarTypes.responsiveAvatarTokens,
  @as("AVATAR_GROUP") aVATAR_GROUP?: AvatarGroupTypes.responsiveAvatarGroupTokens,
  @as("SIDEBAR") sIDEBAR?: SidebarTypes.responsiveSidebarTokens,
  @as("DIRECTORY") dIRECTORY?: DirectoryTypes.responsiveDirectoryTokens,
  @as("MOBILE_NAVIGATION") mOBILE_NAVIGATION?: SidebarTypes.responsiveMobileNavigationTokens,
  @as("MOBILE_NAVIGATION_V2")
  mOBILE_NAVIGATION_V2?: SidebarV2Types.responsiveMobileNavigationV2Tokens,
  @as("UPLOAD") uPLOAD?: UploadTypes.responsiveUploadTokens,
  @as("CODE_BLOCK") cODE_BLOCK?: CodeBlockTypes.responsiveCodeBlockTokens,
  @as("CHAT_INPUT") cHAT_INPUT?: ChatInputTypes.responsiveChatInputTokensType,
  @as("CHAT_INPUTV2") cHAT_INPUTV2?: responsiveChatInputV2TokensType,
  @as("TIMELINE") tIMELINE?: TimelineTypes.responsiveTimelineTokens,
  @as("BUTTONV2") bUTTONV2?: ButtonV2Types.responsiveButtonV2Tokens,
  @as("TAGV2") tAGV2?: TagV2Types.responsiveTagV2Tokens,
  @as("ALERTV2") aLERTV2?: AlertV2Types.responsiveAlertV2Tokens,
  @as("ACCORDIONV2") aCCORDIONV2?: AccordionV2Types.responsiveAccordionV2Tokens,
  @as("SNACKBARV2") sNACKBARV2?: SnackbarV2Types.responsiveSnackbarV2Tokens,
  @as("SWITCHV2") sWITCHV2?: SelectorV2Types.responsiveSwitchV2Tokens,
  @as("SINGLE_SELECT_V2") sINGLE_SELECT_V2?: responsiveSingleSelectV2Tokens,
  @as("MULTI_SELECT_V2") mULTI_SELECT_V2?: responsiveMultiSelectV2Tokens,
  @as("AVATARV2") aVATARV2?: AvatarV2Types.responsiveAvatarV2Tokens,
  @as("TEXT_INPUTV2") tEXT_INPUTV2?: responsiveTextInputV2Tokens,
  @as("CHARTSV2") cHARTSV2?: ChartsV2Types.responsiveChartV2Tokens,
  @as("CHECKBOXV2") cHECKBOXV2?: SelectorV2Types.responsiveCheckboxV2Tokens,
  @as("KEYVALUEPAIRV2") kEYVALUEPAIRV2?: KeyValuePairV2Types.responsiveKeyValuePairV2Tokens,
  @as("STATCARDV2") sTATCARDV2?: StatCardV2Types.responsiveStatCardV2Tokens,
  @as("TOOLTIPV2") tOOLTIPV2?: TooltipV2Types.responsiveTooltipV2Tokens,
  @as("RADIOV2") rADIOV2?: SelectorV2Types.responsiveRadioV2Tokens,
  @as("POPOVERV2") pOPOVERV2?: PopoverV2Types.responsivePopoverV2Tokens,
  @as("SIDEBARV2") sIDEBARV2?: SidebarV2Types.responsiveSidebarV2Tokens,
  @as("TABSV2") tABSV2?: TabsV2Types.responsiveTabsV2Tokens,
  @as("BREADCRUMBV2") bREADCRUMBV2?: BreadcrumbV2Types.responsiveBreadcrumbV2Tokens,
  @as("CODEEDITORV2") cODEEDITORV2?: responsiveCodeEditorV2Tokens,
  @as("PROGRESS_BARV2") pROGRESS_BARV2?: ProgressBarV2Types.responsiveProgressBarV2Tokens,
  @as("MULTI_VALUE_INPUT_V2") mULTI_VALUE_INPUT_V2?: responsiveMultiValueInputV2Tokens,
  @as("NUMBER_INPUT_V2") nUMBER_INPUT_V2?: responsiveNumberInputV2Tokens,
  @as("OTP_INPUTV2") oTP_INPUTV2?: responsiveOTPInputV2Tokens,
  @as("BADGE") bADGE?: BadgeTypes.responsiveBadgeTokens,
  @as("SEARCH_INPUT_V2") sEARCH_INPUT_V2?: responsiveSearchInputV2Tokens,
  @as("CHAT_INPUTV2_MOBILE") cHAT_INPUTV2_MOBILE?: chatInputV2MobileTokensType,
  @as("STEPPERV2") sTEPPERV2?: StepperV2Types.responsiveStepperV2Tokens,
}
type contextComponentTokensConfig = {
  @as("TAGS") tAGS: TagsTypes.responsiveTagTokens,
  @as("SEARCH_INPUT") sEARCH_INPUT: InputsTypes.responsiveSearchInputTokens,
  @as("TEXT_AREA") tEXT_AREA: InputsTypes.responsiveTextAreaTokens,
  @as("TEXT_AREA_V2") tEXT_AREA_V2: responsiveTextAreaV2Tokens,
  @as("RADIO") rADIO: RadioTypes.responsiveRadioTokens,
  @as("SWITCH") sWITCH: SwitchTypes.responsiveSwitchTokens,
  @as("TEXT_INPUT") tEXT_INPUT: InputsTypes.responsiveTextInputTokens,
  @as("NUMBER_INPUT") nUMBER_INPUT: InputsTypes.responsiveNumberInputTokens,
  @as("ALERT") aLERT: AlertTypes.responsiveAlertTokens,
  @as("OTP_INPUT") oTP_INPUT: InputsTypes.responsiveOTPInputTokens,
  @as("TOOLTIP") tOOLTIP: TooltipTypes.responsiveTooltipTokens,
  @as("UNIT_INPUT") uNIT_INPUT: InputsTypes.responsiveUnitInputTokens,
  @as("MULTI_VALUE_INPUT") mULTI_VALUE_INPUT: InputsTypes.responsiveMultiValueInputTokens,
  @as("DROPDOWN_INPUT") dROPDOWN_INPUT: InputsTypes.responsiveDropdownInputTokens,
  @as("CHECKBOX") cHECKBOX: CheckboxTypes.responsiveCheckboxTokens,
  @as("TABS") tABS: TabsTypes.responsiveTabsTokens,
  @as("BUTTON") bUTTON: ButtonTypes.responsiveButtonTokens,
  @as("MODAL") mODAL: ModalTypes.responsiveModalTokens,
  @as("BREADCRUMB") bREADCRUMB: BreadcrumbTypes.responsiveBreadcrumbTokens,
  @as("POPOVER") pOPOVER: PopoverTypes.responsivePopoverTokens,
  @as("MENU") mENU: MenuTypes.responsiveMenuTokensType,
  @as("MENU_V2") mENU_V2: MenuV2Types.responsiveMenuV2TokensType,
  @as("MULTI_SELECT") mULTI_SELECT: MultiSelectTypes.responsiveMultiSelectTokens,
  @as("SINGLE_SELECT") sINGLE_SELECT: SingleSelectTypes.responsiveSingleSelectTokens,
  @as("TABLE") tABLE: DataTableTypes.responsiveTableTokens,
  @as("CALENDAR") cALENDAR: DateRangePickerTypes.responsiveCalendarTokens,
  @as("ACCORDION") aCCORDION: AccordionTypes.responsiveAccordionTokens,
  @as("STAT_CARD") sTAT_CARD: StatCardTypes.responsiveStatCardTokens,
  @as("PROGRESS_BAR") pROGRESS_BAR: ProgressBarTypes.responsiveProgressBarTokens,
  @as("DRAWER") dRAWER: DrawerTypes.responsiveDrawerTokens,
  @as("CHARTS") cHARTS: ChartsTypes.responsiveChartTokens,
  @as("SNACKBAR") sNACKBAR: SnackbarTypes.responsiveSnackbarTokens,
  @as("STEPPER") sTEPPER: StepperTypes.responsiveStepperTokens,
  @as("KEYVALUEPAIR") kEYVALUEPAIR: KeyValuePairTypes.responsiveKeyValuePairTokens,
  @as("CARD") cARD: CardTypes.responsiveCardTokens,
  @as("SKELETON") sKELETON: SkeletonTypes.responsiveSkeletonTokens,
  @as("TOPBAR") tOPBAR: TopbarTypes.responsiveTopbarTokens,
  @as("TOPBARV2") tOPBARV2: TopbarV2Types.responsiveTopbarV2Tokens,
  @as("AVATAR") aVATAR: AvatarTypes.responsiveAvatarTokens,
  @as("AVATAR_GROUP") aVATAR_GROUP: AvatarGroupTypes.responsiveAvatarGroupTokens,
  @as("SIDEBAR") sIDEBAR: SidebarTypes.responsiveSidebarTokens,
  @as("DIRECTORY") dIRECTORY: DirectoryTypes.responsiveDirectoryTokens,
  @as("MOBILE_NAVIGATION") mOBILE_NAVIGATION: SidebarTypes.responsiveMobileNavigationTokens,
  @as("MOBILE_NAVIGATION_V2")
  mOBILE_NAVIGATION_V2: SidebarV2Types.responsiveMobileNavigationV2Tokens,
  @as("UPLOAD") uPLOAD: UploadTypes.responsiveUploadTokens,
  @as("CODE_BLOCK") cODE_BLOCK: CodeBlockTypes.responsiveCodeBlockTokens,
  @as("CHAT_INPUT") cHAT_INPUT: ChatInputTypes.responsiveChatInputTokensType,
  @as("CHAT_INPUTV2") cHAT_INPUTV2: responsiveChatInputV2TokensType,
  @as("TIMELINE") tIMELINE: TimelineTypes.responsiveTimelineTokens,
  @as("BUTTONV2") bUTTONV2: ButtonV2Types.responsiveButtonV2Tokens,
  @as("TAGV2") tAGV2: TagV2Types.responsiveTagV2Tokens,
  @as("ALERTV2") aLERTV2: AlertV2Types.responsiveAlertV2Tokens,
  @as("ACCORDIONV2") aCCORDIONV2: AccordionV2Types.responsiveAccordionV2Tokens,
  @as("SNACKBARV2") sNACKBARV2: SnackbarV2Types.responsiveSnackbarV2Tokens,
  @as("SWITCHV2") sWITCHV2: SelectorV2Types.responsiveSwitchV2Tokens,
  @as("SINGLE_SELECT_V2") sINGLE_SELECT_V2: responsiveSingleSelectV2Tokens,
  @as("MULTI_SELECT_V2") mULTI_SELECT_V2: responsiveMultiSelectV2Tokens,
  @as("AVATARV2") aVATARV2: AvatarV2Types.responsiveAvatarV2Tokens,
  @as("TEXT_INPUTV2") tEXT_INPUTV2: responsiveTextInputV2Tokens,
  @as("CHARTSV2") cHARTSV2: ChartsV2Types.responsiveChartV2Tokens,
  @as("CHECKBOXV2") cHECKBOXV2: SelectorV2Types.responsiveCheckboxV2Tokens,
  @as("KEYVALUEPAIRV2") kEYVALUEPAIRV2: KeyValuePairV2Types.responsiveKeyValuePairV2Tokens,
  @as("STATCARDV2") sTATCARDV2: StatCardV2Types.responsiveStatCardV2Tokens,
  @as("TOOLTIPV2") tOOLTIPV2: TooltipV2Types.responsiveTooltipV2Tokens,
  @as("RADIOV2") rADIOV2: SelectorV2Types.responsiveRadioV2Tokens,
  @as("POPOVERV2") pOPOVERV2: PopoverV2Types.responsivePopoverV2Tokens,
  @as("SIDEBARV2") sIDEBARV2: SidebarV2Types.responsiveSidebarV2Tokens,
  @as("TABSV2") tABSV2: TabsV2Types.responsiveTabsV2Tokens,
  @as("BREADCRUMBV2") bREADCRUMBV2: BreadcrumbV2Types.responsiveBreadcrumbV2Tokens,
  @as("CODEEDITORV2") cODEEDITORV2: responsiveCodeEditorV2Tokens,
  @as("PROGRESS_BARV2") pROGRESS_BARV2: ProgressBarV2Types.responsiveProgressBarV2Tokens,
  @as("MULTI_VALUE_INPUT_V2") mULTI_VALUE_INPUT_V2: responsiveMultiValueInputV2Tokens,
  @as("NUMBER_INPUT_V2") nUMBER_INPUT_V2: responsiveNumberInputV2Tokens,
  @as("OTP_INPUTV2") oTP_INPUTV2: responsiveOTPInputV2Tokens,
  @as("BADGE") bADGE: BadgeTypes.responsiveBadgeTokens,
  @as("SEARCH_INPUT_V2") sEARCH_INPUT_V2: responsiveSearchInputV2Tokens,
  @as("CHAT_INPUTV2_MOBILE") cHAT_INPUTV2_MOBILE: chatInputV2MobileTokensType,
  @as("STEPPERV2") sTEPPERV2: StepperV2Types.responsiveStepperV2Tokens,
}
type themeContextType = {
  foundationTokens: string,
  componentTokens: contextComponentTokensConfig,
  breakpoints: BreakpointsTypes.breakpointType,
  theme: string,
}
type shadowRootContextType = {
  shadowRoot: Nullable.t<Dom.shadowRoot>,
  target: Nullable.t<Dom.element>,
}
type inputsV2ErrorConfig = {
  show: bool,
  message?: string,
}
type inputsV2LeftSlotConfig2 = {
  slot: React.element,
  maxHeight?: string,
}
type rec singleSelectV2ItemType = {
  label: string,
  value: string,
  checked?: bool,
  subLabel?: string,
  slot1?: React.element,
  slot2?: React.element,
  slot3?: React.element,
  slot4?: React.element,
  disabled?: bool,
  onClick?: unit => unit,
  tooltip?: React.element,
  tooltipProps?: SelectV2Types.selectV2TooltipProps,
  disableTruncation?: bool,
  subMenu?: array<singleSelectV2ItemType>,
}
type singleSelectV2GroupType = {
  groupLabel?: string,
  items: array<singleSelectV2ItemType>,
  showSeparator?: bool,
}
type selectV2SearchConfig = {
  show?: bool,
  placeholder?: string,
}
type selectV2MenuPosition = {
  alignment?: SelectV2Types.selectV2Alignment,
  side?: SelectV2Types.selectV2Side,
  sideOffset?: float,
  alignOffset?: float,
}
type selectV2MenuDimensions = {
  minWidth?: string,
  maxWidth?: string,
  maxHeight?: string,
}
type selectV2TriggerDimensions = {
  minWidth?: string,
  maxWidth?: string,
  width?: string,
}
type selectV2ErrorState = {
  show?: bool,
  message?: string,
}
type singleSelectV2Props = {
  label?: string,
  subLabel?: string,
  hintText?: string,
  required?: bool,
  helpIconText?: string,
  placeholder: string,
  size?: SelectV2Types.selectV2Size,
  variant?: SelectV2Types.selectV2Variant,
  items: array<singleSelectV2GroupType>,
  selected: string,
  onSelect: string => unit,
  search?: selectV2SearchConfig,
  slot?: React.element,
  customTrigger?: React.element,
  @as("open") open_?: bool,
  onOpenChange?: bool => unit,
  usePanelOnMobile?: bool,
  menuPosition?: selectV2MenuPosition,
  menuDimensions?: selectV2MenuDimensions,
  triggerDimensions?: selectV2TriggerDimensions,
  inline?: bool,
  error?: selectV2ErrorState,
  enableVirtualization?: bool,
  virtualListItemHeight?: float,
  virtualListOverscan?: float,
  onEndReached?: unit => unit,
  endReachedThreshold?: float,
  hasMore?: bool,
  loadingComponent?: React.element,
  skeleton?: SelectV2Types.selectV2SkeletonProps,
  allowCustomValue?: bool,
  customValueLabel?: string,
  singleSelectGroupPosition?: ButtonTypes.buttonGroupPosition,
}
type embeddedSingleSelectOptions = {
  fieldLabel?: string,
  fieldDisabled: bool,
  singleSelectV2Size: SelectV2Types.selectV2Size,
  menuAlignment: SelectV2Types.selectV2Alignment,
  menuSideOffset: float,
  menuAlignOffset: float,
  defaultSingleSelectGroupPosition: TagsTypes.splitTagPosition,
}
type inputsV2ErrorConfig2 = {
  show: bool,
}
type inputsV2V0Config = {
  isSmallScreenWithLargeSize: bool,
  inputFocusedOrWithValue: bool,
  paddingTop: float,
  paddingBottom: float,
}
type inputsV2ValueConfig = {
  top: float,
  bottom: float,
}
type inputsV2TagsConfig = {
  value: array<string>,
  size: TagsTypes.tagSize,
  shape: TagsTypes.tagShape,
  variant: TagsTypes.tagVariant,
}
type inputsV2SlotConfig3 = {
  left?: React.element,
  right?: React.element,
}
type inputsV2LabelConfig3 = {
  text: string,
  subtext?: string,
}
type codeEditorV2HeaderConfig2 = {
  showHeader?: bool,
  title?: string,
  leftSlot?: React.element,
  rightSlot?: React.element,
  showCopyButton?: bool,
}
type editorMetrics = {
  fontSize: float,
  lineHeight: float,
  verticalPadding: float,
  codePaddingLeft: float,
  gutterWidth: float,
  lineDecorationsWidth: float,
  lineNumbersMinChars: float,
  scrollbarSize: float,
}
type codeEditorV2ValueConfig = {
  minHeight?: string,
  maxHeight?: string,
  height?: string,
}
type codeEditorV2ValueConfig2 = {
  top: string,
  left: string,
}
type iDisposable = {
  dispose: unit => unit,
}
type iRange = {
  startLineNumber: float,
  startColumn: float,
  endLineNumber: float,
  endColumn: float,
}
type iModelContentChange = {
  range: iRange,
  rangeOffset: float,
  rangeLength: float,
  text: string,
}
type iModelContentChangedEvent = {
  changes: array<iModelContentChange>,
  eol: string,
  versionId: float,
  isUndoing: bool,
  isRedoing: bool,
  isFlush: bool,
  isEolChange: bool,
  detailedReasonsChangeLengths: array<float>,
}
type iModelLanguageChangedEvent = {
  oldLanguage: string,
  newLanguage: string,
  source: string,
}
type iModelOptionsChangedEvent = {
  tabSize: bool,
  indentSize: bool,
  insertSpaces: bool,
  trimAutoWhitespace: bool,
}
type configurationChangedEvent = {
  hasChanged: editorOption => bool,
}
type rec position2 = {
  lineNumber: float,
  column: float,
  @as("with") with_: (option<string>, option<string>) => position2,
  delta: (option<string>, option<string>) => position2,
  equals: string => string,
  isBefore: string => string,
  isBeforeOrEqual: string => string,
  clone: unit => position2,
  toString: unit => string,
  toJSON: unit => string,
}
type iCursorPositionChangedEvent = {
  position: position2,
  secondaryPositions: array<position2>,
  reason: cursorChangeReason,
  source: string,
}
type rec selection = {
  selectionStartLineNumber: float,
  selectionStartColumn: float,
  positionLineNumber: float,
  positionColumn: float,
  toString: unit => string,
  equalsSelection: string => string,
  getDirection: unit => string,
  setEndPosition: (string, string) => selection,
  getPosition: unit => string,
  getSelectionStart: unit => string,
  setStartPosition: (string, string) => selection,
  startLineNumber: float,
  startColumn: float,
  endLineNumber: float,
  endColumn: float,
  isEmpty: unit => string,
  containsPosition: string => string,
  containsRange: string => string,
  strictContainsRange: string => string,
  plusRange: string => string,
  intersectRanges: string => string,
  equalsRange: string => string,
  getEndPosition: unit => string,
  getStartPosition: unit => string,
  collapseToStart: unit => string,
  collapseToEnd: unit => string,
  delta: string => string,
  isSingleLine: unit => string,
  toJSON: unit => string,
}
type iCursorSelectionChangedEvent = {
  selection: selection,
  secondarySelections: array<selection>,
  modelVersionId: float,
  oldSelections: Nullable.t<array<selection>>,
  oldModelVersionId: float,
  source: string,
  reason: cursorChangeReason,
}
type rec uri = {
  scheme: string,
  authority: string,
  path: string,
  query: string,
  fragment: string,
  fsPath: string,
  @as("with") with_: string => uri,
  toString: option<string> => string,
  toJSON: unit => string,
}
type iModelChangedEvent = {
  oldModelUrl: Nullable.t<uri>,
  newModelUrl: Nullable.t<uri>,
}
type iModelDecorationsChangedEvent = {
  affectsMinimap: bool,
  affectsOverviewRuler: bool,
  affectsGlyphMargin: bool,
  affectsLineNumber: bool,
}
type rec range = {
  startLineNumber: float,
  startColumn: float,
  endLineNumber: float,
  endColumn: float,
  isEmpty: unit => string,
  containsPosition: string => string,
  containsRange: string => string,
  strictContainsRange: string => string,
  plusRange: string => range,
  intersectRanges: string => Nullable.t<range>,
  equalsRange: string => string,
  getEndPosition: unit => string,
  getStartPosition: unit => string,
  toString: unit => string,
  setEndPosition: (string, string) => range,
  setStartPosition: (string, string) => range,
  collapseToStart: unit => range,
  collapseToEnd: unit => range,
  delta: string => range,
  isSingleLine: unit => string,
  toJSON: unit => string,
}
type iPasteEvent = {
  range: range,
  languageId: Nullable.t<string>,
  clipboardEvent?: Dom.event,
}
type iMouseEvent = {
  browserEvent: Dom.event,
  leftButton: bool,
  middleButton: bool,
  rightButton: bool,
  buttons: float,
  target: Dom.element,
  detail: float,
  posx: float,
  posy: float,
  ctrlKey: bool,
  shiftKey: bool,
  altKey: bool,
  metaKey: bool,
  timestamp: float,
  defaultPrevented: bool,
  preventDefault: unit => unit,
  stopPropagation: unit => unit,
}
type iMouseTargetUnknown = {
  @as("type") type_: string,
  element: string,
  position: string,
  mouseColumn: string,
  range: string,
}
type iMouseTargetTextarea = {
  @as("type") type_: string,
  position: string,
  range: string,
  element: string,
  mouseColumn: string,
}
type iMouseTargetMargin = {
  @as("type") type_: string,
  position: string,
  range: string,
  detail: string,
  element: string,
  mouseColumn: string,
}
type iMouseTargetOutsideEditor = {
  @as("type") type_: string,
  outsidePosition: string,
  outsideDistance: string,
  element: string,
  position: string,
  mouseColumn: string,
  range: string,
}
module IMouseTarget = {
  type t
  external fromIMouseTargetUnknown: iMouseTargetUnknown => t = "%identity"
  external fromIMouseTargetTextarea: iMouseTargetTextarea => t = "%identity"
  external fromIMouseTargetMargin: iMouseTargetMargin => t = "%identity"
  external fromIMouseTargetViewZone: iMouseTargetMargin => t = "%identity"
  external fromIMouseTargetContentText: iMouseTargetMargin => t = "%identity"
  external fromIMouseTargetContentEmpty: iMouseTargetMargin => t = "%identity"
  external fromIMouseTargetContentWidget: iMouseTargetMargin => t = "%identity"
  external fromIMouseTargetOverlayWidget: iMouseTargetMargin => t = "%identity"
  external fromIMouseTargetScrollbar: iMouseTargetTextarea => t = "%identity"
  external fromIMouseTargetOverviewRuler: iMouseTargetUnknown => t = "%identity"
  external fromIMouseTargetOutsideEditor: iMouseTargetOutsideEditor => t = "%identity"
}
type iEditorMouseEvent = {
  event: iMouseEvent,
  target: IMouseTarget.t,
}
type iKeyboardEvent = {
  _standardKeyboardEventBrand: bool,
  browserEvent: Dom.event,
  target: Dom.element,
  ctrlKey: bool,
  shiftKey: bool,
  altKey: bool,
  metaKey: bool,
  altGraphKey: bool,
  keyCode: keyCode,
  code: string,
  equals: float => bool,
  preventDefault: unit => unit,
  stopPropagation: unit => unit,
}
type editorMinimapLayoutInfo = {
  renderMinimap: renderMinimap,
  minimapLeft: float,
  minimapWidth: float,
  minimapHeightIsEditorHeight: bool,
  minimapIsSampling: bool,
  minimapScale: float,
  minimapLineHeight: float,
  minimapCanvasInnerWidth: float,
  minimapCanvasInnerHeight: float,
  minimapCanvasOuterWidth: float,
  minimapCanvasOuterHeight: float,
}
type overviewRulerPosition = {
  width: float,
  height: float,
  top: float,
  right: float,
}
type editorLayoutInfo = {
  width: float,
  height: float,
  glyphMarginLeft: float,
  glyphMarginWidth: float,
  glyphMarginDecorationLaneCount: float,
  lineNumbersLeft: float,
  lineNumbersWidth: float,
  decorationsLeft: float,
  decorationsWidth: float,
  contentLeft: float,
  contentWidth: float,
  minimap: editorMinimapLayoutInfo,
  viewportColumn: float,
  isWordWrapMinified: bool,
  isViewportWrapping: bool,
  wrappingColumn: float,
  verticalScrollbarWidth: float,
  horizontalScrollbarHeight: float,
  overviewRuler: overviewRulerPosition,
}
type iContentSizeChangedEvent = {
  contentWidth: float,
  contentHeight: float,
  contentWidthChanged: bool,
  contentHeightChanged: bool,
}
type iScrollEvent = {
  scrollTop: float,
  scrollLeft: float,
  scrollWidth: float,
  scrollHeight: float,
  scrollTopChanged: bool,
  scrollLeftChanged: bool,
  scrollWidthChanged: bool,
  scrollHeightChanged: bool,
}
type iPosition = {
  lineNumber: float,
  column: float,
}
type iCursorState = {
  inSelectionMode: bool,
  selectionStart: iPosition,
  position: iPosition,
}
type iViewState = {
  scrollTop?: float,
  scrollTopWithoutViewZones?: float,
  scrollLeft: float,
  firstPosition: iPosition,
  firstPositionDeltaTop: float,
}
type iCodeEditorViewState = {
  cursorState: array<iCursorState>,
  viewState: iViewState,
  contributionsState: Dict.t<string>,
}
type bracketPairColorizationOptions = {
  enabled: bool,
  independentColorPoolPerBracketType: bool,
}
type textModelResolvedOptions = {
  _textModelResolvedOptionsBrand: string,
  tabSize: float,
  indentSize: float,
  insertSpaces: bool,
  defaultEOL: defaultEndOfLine,
  trimAutoWhitespace: bool,
  bracketPairColorizationOptions: bracketPairColorizationOptions,
  originalIndentSize: CommonTypes.tabSizeOrNumber,
}
type iTextSnapshot = {
  read: unit => Nullable.t<string>,
}
type findMatch = {
  _findMatchBrand: string,
  range: range,
  matches: array<string>,
}
type iWordAtPosition = {
  word: string,
  startColumn: float,
  endColumn: float,
}
type iModelDecorationOverviewRulerOptions = {
  position: string,
  color?: string,
  darkColor?: string,
}
type iModelDecorationMinimapOptions = {
  position: string,
  sectionHeaderStyle?: string,
  sectionHeaderText?: string,
  color?: string,
  darkColor?: string,
}
type iModelDecorationGlyphMarginOptions = {
  position: glyphMarginLane,
  persistLane?: bool,
}
type injectedTextOptions = {
  content: string,
  inlineClassName?: string,
  inlineClassNameAffectsLetterSpacing?: string,
  attachedData?: string,
  cursorStops?: string,
}
type iModelDecorationOptions = {
  stickiness?: trackedRangeStickiness,
  className?: Nullable.t<string>,
  shouldFillLineOnLineBreak?: Nullable.t<bool>,
  blockClassName?: Nullable.t<string>,
  blockIsAfterEnd?: Nullable.t<bool>,
  blockDoesNotCollapse?: Nullable.t<bool>,
  blockPadding?: Nullable.t<(string, string, string, string)>,
  glyphMarginHoverMessage?: string,
  hoverMessage?: string,
  lineNumberHoverMessage?: string,
  isWholeLine?: bool,
  showIfCollapsed?: bool,
  zIndex?: int,
  overviewRuler?: Nullable.t<iModelDecorationOverviewRulerOptions>,
  minimap?: Nullable.t<iModelDecorationMinimapOptions>,
  glyphMarginClassName?: Nullable.t<string>,
  glyphMargin?: Nullable.t<iModelDecorationGlyphMarginOptions>,
  lineHeight?: Nullable.t<float>,
  fontFamily?: Nullable.t<string>,
  fontSize?: Nullable.t<string>,
  fontWeight?: Nullable.t<string>,
  fontStyle?: Nullable.t<string>,
  linesDecorationsClassName?: Nullable.t<string>,
  linesDecorationsTooltip?: Nullable.t<string>,
  lineNumberClassName?: Nullable.t<string>,
  firstLineDecorationClassName?: Nullable.t<string>,
  marginClassName?: Nullable.t<string>,
  inlineClassName?: Nullable.t<string>,
  inlineClassNameAffectsLetterSpacing?: bool,
  beforeContentClassName?: Nullable.t<string>,
  afterContentClassName?: Nullable.t<string>,
  after?: Nullable.t<injectedTextOptions>,
  before?: Nullable.t<injectedTextOptions>,
  textDirection?: Nullable.t<textDirection>,
}
type iModelDeltaDecoration = {
  range: iRange,
  options: iModelDecorationOptions,
}
type iModelDecoration = {
  id: string,
  ownerId: float,
  range: range,
  options: iModelDecorationOptions,
}
type iTextModelUpdateOptions = {
  tabSize?: float,
  indentSize?: CommonTypes.tabSizeOrNumber,
  insertSpaces?: bool,
  trimAutoWhitespace?: bool,
  bracketColorizationOptions?: bracketPairColorizationOptions,
}
type iIdentifiedSingleEditOperation = {
  range: iRange,
  text: Nullable.t<string>,
  forceMoveMarkers?: bool,
}
type iTextModel<'a> = {
  uri: uri,
  id: string,
  getOptions: unit => textModelResolvedOptions,
  getVersionId: unit => float,
  getAlternativeVersionId: unit => float,
  setValue: string => unit,
  getValue: (option<endOfLinePreference>, option<bool>) => string,
  createSnapshot: option<bool> => iTextSnapshot,
  getValueLength: (option<endOfLinePreference>, option<bool>) => float,
  getValueInRange: (iRange, option<endOfLinePreference>) => string,
  getValueLengthInRange: (iRange, option<endOfLinePreference>) => float,
  getCharacterCountInRange: (iRange, option<endOfLinePreference>) => float,
  getLineCount: unit => float,
  getLineContent: float => string,
  getLineLength: float => float,
  getLinesContent: unit => array<string>,
  getEOL: unit => string,
  getEndOfLineSequence: unit => endOfLineSequence,
  getLineMinColumn: float => float,
  getLineMaxColumn: float => float,
  getLineFirstNonWhitespaceColumn: float => float,
  getLineLastNonWhitespaceColumn: float => float,
  validatePosition: iPosition => position2,
  modifyPosition: (iPosition, float) => position2,
  validateRange: iRange => range,
  isValidRange: iRange => bool,
  getOffsetAt: iPosition => float,
  getPositionAt: float => position2,
  getFullModelRange: unit => range,
  isDisposed: unit => bool,
  findMatches: string,
  findNextMatch: (string, iPosition, bool, bool, Nullable.t<string>, bool) => Nullable.t<findMatch>,
  findPreviousMatch: (
    string,
    iPosition,
    bool,
    bool,
    Nullable.t<string>,
    bool,
  ) => Nullable.t<findMatch>,
  getLanguageId: unit => string,
  getWordAtPosition: iPosition => Nullable.t<iWordAtPosition>,
  getWordUntilPosition: iPosition => iWordAtPosition,
  deltaDecorations: (array<string>, array<iModelDeltaDecoration>, option<float>) => array<string>,
  getDecorationOptions: string => Nullable.t<iModelDecorationOptions>,
  getDecorationRange: string => Nullable.t<range>,
  getLineDecorations: (float, option<float>, option<bool>, option<bool>) => array<iModelDecoration>,
  getLinesDecorations: (
    float,
    float,
    option<float>,
    option<bool>,
    option<bool>,
  ) => array<iModelDecoration>,
  getDecorationsInRange: (
    iRange,
    option<float>,
    option<bool>,
    option<bool>,
    option<bool>,
    option<bool>,
  ) => array<iModelDecoration>,
  getAllDecorations: (option<float>, option<bool>, option<bool>) => array<iModelDecoration>,
  getAllMarginDecorations: option<float> => array<iModelDecoration>,
  getOverviewRulerDecorations: (
    option<float>,
    option<bool>,
    option<bool>,
  ) => array<iModelDecoration>,
  getInjectedTextDecorations: option<float> => array<iModelDecoration>,
  getCustomLineHeightsDecorations: option<float> => array<iModelDecoration>,
  normalizeIndentation: string => string,
  updateOptions: iTextModelUpdateOptions => unit,
  detectIndentation: (bool, float) => unit,
  pushStackElement: unit => unit,
  popStackElement: unit => unit,
  pushEditOperations: (
    Nullable.t<array<selection>>,
    array<iIdentifiedSingleEditOperation>,
    array<string> => Nullable.t<array<string>>,
  ) => Nullable.t<array<selection>>,
  pushEOL: endOfLineSequence => unit,
  applyEdits: string,
  setEOL: endOfLineSequence => unit,
  undo: unit => 'a,
  canUndo: unit => bool,
  redo: unit => 'a,
  canRedo: unit => bool,
  onDidChangeContent: iModelContentChangedEvent => unit => iDisposable,
  onDidChangeDecorations: (iModelDecorationsChangedEvent => string, option<string>) => iDisposable,
  onDidChangeOptions: (iModelOptionsChangedEvent => string, option<string>) => iDisposable,
  onDidChangeLanguage: (iModelLanguageChangedEvent => string, option<string>) => iDisposable,
  onDidChangeLanguageConfiguration: (JSON.t => string, option<string>) => iDisposable,
  onDidChangeAttached: (string => string, option<string>) => iDisposable,
  onWillDispose: (string => string, option<string>) => iDisposable,
  dispose: unit => unit,
  isAttachedToEditor: unit => bool,
}
type iComputedEditorOptions = {
  get: string => JSON.t,
}
type iRulerOption = {
  column: float,
  color: Nullable.t<string>,
}
module RulersTarget = {
  type t
  external fromNumber: float => t = "%identity"
  external fromIRulerOption: iRulerOption => t = "%identity"
}
type markdownStringTrustedOptions = {
  enabledCommands: array<string>,
}
module IsTrustedTarget = {
  type t
  external fromBool: bool => t = "%identity"
  external fromMarkdownStringTrustedOptions: markdownStringTrustedOptions => t = "%identity"
}
type uriComponents = {
  scheme: string,
  authority?: string,
  path?: string,
  query?: string,
  fragment?: string,
}
type iMarkdownString = {
  value: string,
  isTrusted?: IsTrustedTarget.t,
  supportThemeIcons?: bool,
  supportHtml?: bool,
  baseUri?: uriComponents,
  uris?: Dict.t<uriComponents>,
}
type iEditorScrollbarOptions = {
  arrowSize?: float,
  vertical?: vertical,
  horizontal?: vertical,
  useShadows?: bool,
  verticalHasArrows?: bool,
  horizontalHasArrows?: bool,
  handleMouseWheel?: bool,
  alwaysConsumeMouseWheel?: bool,
  horizontalScrollbarSize?: float,
  verticalScrollbarSize?: float,
  verticalSliderSize?: float,
  horizontalSliderSize?: float,
  scrollByPage?: bool,
  ignoreHorizontalScrollbarInContentHeight?: bool,
}
type iEditorStickyScrollOptions = {
  enabled?: bool,
  maxLineCount?: float,
  defaultModel?: defaultModel,
  scrollWithEditor?: bool,
}
type iEditorMinimapOptions = {
  enabled?: bool,
  autohide?: autohide,
  side?: TagsTypes.splitTagPosition,
  size?: size3,
  showSlider?: showSlider,
  renderCharacters?: bool,
  maxColumn?: float,
  scale?: float,
  showRegionSectionHeaders?: bool,
  showMarkSectionHeaders?: bool,
  markSectionHeaderRegex?: string,
  sectionHeaderFontSize?: float,
  sectionHeaderLetterSpacing?: float,
}
type iEditorFindOptions = {
  cursorMoveOnType?: bool,
  findOnType?: bool,
  seedSearchStringFromSelection?: seedSearchStringFromSelection,
  autoFindInSelection?: autoFindInSelection,
  addExtraSpaceOnTop?: bool,
  loop?: bool,
}
type iEditorHoverOptions = {
  enabled?: bool,
  delay?: float,
  sticky?: bool,
  hidingDelay?: float,
  above?: bool,
}
type iEditorCommentsOptions = {
  insertSpace?: bool,
  ignoreEmptyLines?: bool,
}
type iSuggestOptions = {
  insertMode?: insertMode,
  filterGraceful?: bool,
  snippetsPreventQuickSuggestions?: bool,
  localityBonus?: bool,
  shareSuggestSelections?: bool,
  selectionMode?: selectionMode,
  showIcons?: bool,
  showStatusBar?: bool,
  preview?: bool,
  previewMode?: previewMode,
  showInlineDetails?: bool,
  showMethods?: bool,
  showFunctions?: bool,
  showConstructors?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  showFields?: bool,
  showVariables?: bool,
  showClasses?: bool,
  showStructs?: bool,
  showInterfaces?: bool,
  showModules?: bool,
  showProperties?: bool,
  showEvents?: bool,
  showOperators?: bool,
  showUnits?: bool,
  showValues?: bool,
  showConstants?: bool,
  showEnums?: bool,
  showEnumMembers?: bool,
  showKeywords?: bool,
  showWords?: bool,
  showColors?: bool,
  showFiles?: bool,
  showReferences?: bool,
  showFolders?: bool,
  showTypeParameters?: bool,
  showIssues?: bool,
  showUsers?: bool,
  showSnippets?: bool,
}
type iInlineSuggestOptions = {
  enabled?: bool,
  mode?: previewMode,
  showToolbar?: showToolbar,
  syntaxHighlightingEnabled?: bool,
  suppressSuggestions?: bool,
  minShowDelay?: float,
  suppressInSnippetMode?: bool,
  keepOnBlur?: bool,
  fontFamily?: string,
}
type iSmartSelectOptions = {
  selectLeadingAndTrailingWhitespace?: bool,
  selectSubwords?: bool,
}
type iGotoLocationOptions = {
  multiple?: goToLocationValues,
  multipleDefinitions?: goToLocationValues,
  multipleTypeDefinitions?: goToLocationValues,
  multipleDeclarations?: goToLocationValues,
  multipleImplementations?: goToLocationValues,
  multipleReferences?: goToLocationValues,
  multipleTests?: goToLocationValues,
  alternativeDefinitionCommand?: string,
  alternativeTypeDefinitionCommand?: string,
  alternativeDeclarationCommand?: string,
  alternativeImplementationCommand?: string,
  alternativeReferenceCommand?: string,
  alternativeTestsCommand?: string,
}
type iQuickSuggestionsOptions = {
  other?: CommonTypes.boolOrInlineOrOffOrOn,
  comments?: CommonTypes.boolOrInlineOrOffOrOn,
  strings?: CommonTypes.boolOrInlineOrOffOrOn,
}
module QuickSuggestionsTarget = {
  type t
  external fromBool: bool => t = "%identity"
  external fromIQuickSuggestionsOptions: iQuickSuggestionsOptions => t = "%identity"
}
type iEditorPaddingOptions = {
  top?: float,
  bottom?: float,
}
type iEditorParameterHintOptions = {
  enabled?: bool,
  cycle?: bool,
}
type iEditorLightbulbOptions = {
  enabled?: showLightbulbIconMode,
}
type iEditorInlayHintsOptions = {
  enabled?: enabled,
  fontSize?: float,
  fontFamily?: string,
  padding?: bool,
  maximumLength?: float,
}
type iGuidesOptions = {
  bracketPairs?: CommonTypes.boolOrActive,
  bracketPairsHorizontal?: CommonTypes.boolOrActive,
  highlightActiveBracketPair?: bool,
  indentation?: bool,
  highlightActiveIndentation?: CommonTypes.boolOrAlways,
}
type iUnicodeHighlightOptions = {
  nonBasicASCII?: CommonTypes.boolOrInUntrustedWorkspace,
  invisibleCharacters?: bool,
  ambiguousCharacters?: bool,
  includeComments?: CommonTypes.boolOrInUntrustedWorkspace,
  includeStrings?: CommonTypes.boolOrInUntrustedWorkspace,
  allowedCharacters?: Dict.t<bool>,
  allowedLocales?: Dict.t<bool>,
}
type iBracketPairColorizationOptions = {
  enabled?: bool,
  independentColorPoolPerBracketType?: bool,
}
type iDropIntoEditorOptions = {
  enabled?: bool,
  showDropSelector?: showDropSelector,
}
type iPasteAsOptions = {
  enabled?: bool,
  showPasteSelector?: showPasteSelector,
}
type iEditorOptions = {
  inDiffEditor?: bool,
  allowVariableLineHeights?: bool,
  allowVariableFonts?: bool,
  allowVariableFontsInAccessibilityMode?: bool,
  ariaLabel?: string,
  ariaRequired?: bool,
  screenReaderAnnounceInlineSuggestion?: bool,
  tabIndex?: int,
  rulers?: array<RulersTarget.t>,
  wordSegmenterLocales?: CommonTypes.stringOrStringArray,
  wordSeparators?: string,
  selectionClipboard?: bool,
  lineNumbers?: CommonTypes.lineNumbers,
  cursorSurroundingLines?: float,
  cursorSurroundingLinesStyle?: cursorSurroundingLinesStyle,
  renderFinalNewline?: renderFinalNewline,
  unusualLineTerminators?: unusualLineTerminators,
  selectOnLineNumbers?: bool,
  lineNumbersMinChars?: float,
  glyphMargin?: bool,
  lineDecorationsWidth?: CommonTypes.stringOrNumber,
  revealHorizontalRightPadding?: float,
  roundedSelection?: bool,
  extraEditorClassName?: string,
  readOnly?: bool,
  readOnlyMessage?: iMarkdownString,
  domReadOnly?: bool,
  linkedEditing?: bool,
  renameOnType?: bool,
  renderValidationDecorations?: renderValidationDecorations,
  scrollbar?: iEditorScrollbarOptions,
  stickyScroll?: iEditorStickyScrollOptions,
  minimap?: iEditorMinimapOptions,
  find?: iEditorFindOptions,
  fixedOverflowWidgets?: bool,
  allowOverflow?: bool,
  overviewRulerLanes?: float,
  overviewRulerBorder?: bool,
  cursorBlinking?: cursorBlinking,
  mouseWheelZoom?: bool,
  mouseStyle?: mouseStyle,
  cursorSmoothCaretAnimation?: cursorSmoothCaretAnimation,
  cursorStyle?: cursorStyle,
  overtypeCursorStyle?: cursorStyle,
  overtypeOnPaste?: bool,
  cursorWidth?: float,
  cursorHeight?: float,
  fontLigatures?: CommonTypes.boolOrString,
  fontVariations?: CommonTypes.boolOrString,
  defaultColorDecorators?: defaultColorDecorators,
  disableLayerHinting?: bool,
  disableMonospaceOptimizations?: bool,
  hideCursorInOverviewRuler?: bool,
  scrollBeyondLastLine?: bool,
  scrollOnMiddleClick?: bool,
  scrollBeyondLastColumn?: float,
  smoothScrolling?: bool,
  automaticLayout?: bool,
  wordWrap?: wordWrap,
  wordWrapOverride1?: wordWrapOverride1,
  wordWrapOverride2?: wordWrapOverride1,
  wordWrapColumn?: float,
  wrappingIndent?: wrappingIndent,
  wrappingStrategy?: wrappingStrategy,
  wrapOnEscapedLineFeeds?: bool,
  wordWrapBreakBeforeCharacters?: string,
  wordWrapBreakAfterCharacters?: string,
  wordBreak?: wordBreak,
  stopRenderingLineAfter?: float,
  hover?: iEditorHoverOptions,
  links?: bool,
  colorDecorators?: bool,
  colorDecoratorsActivatedOn?: colorDecoratorsActivatedOn,
  colorDecoratorsLimit?: float,
  comments?: iEditorCommentsOptions,
  contextmenu?: bool,
  mouseWheelScrollSensitivity?: float,
  fastScrollSensitivity?: float,
  scrollPredominantAxis?: bool,
  inertialScroll?: bool,
  columnSelection?: bool,
  multiCursorModifier?: multiCursorModifier,
  multiCursorMergeOverlapping?: bool,
  multiCursorPaste?: multiCursorPaste,
  multiCursorLimit?: float,
  mouseMiddleClickAction?: mouseMiddleClickAction,
  accessibilitySupport?: accessibilitySupport,
  accessibilityPageSize?: float,
  suggest?: iSuggestOptions,
  inlineSuggest?: iInlineSuggestOptions,
  smartSelect?: iSmartSelectOptions,
  gotoLocation?: iGotoLocationOptions,
  quickSuggestions?: QuickSuggestionsTarget.t,
  quickSuggestionsDelay?: float,
  padding?: iEditorPaddingOptions,
  parameterHints?: iEditorParameterHintOptions,
  autoClosingBrackets?: editorAutoClosingStrategy,
  autoClosingComments?: editorAutoClosingStrategy,
  autoClosingQuotes?: editorAutoClosingStrategy,
  autoClosingDelete?: editorAutoClosingEditStrategy,
  autoClosingOvertype?: editorAutoClosingEditStrategy,
  autoSurround?: editorAutoSurroundStrategy,
  autoIndent?: autoIndent,
  autoIndentOnPaste?: bool,
  autoIndentOnPasteWithinString?: bool,
  stickyTabStops?: bool,
  formatOnType?: bool,
  formatOnPaste?: bool,
  dragAndDrop?: bool,
  suggestOnTriggerCharacters?: bool,
  acceptSuggestionOnEnter?: acceptSuggestionOnEnter,
  acceptSuggestionOnCommitCharacter?: bool,
  snippetSuggestions?: snippetSuggestions,
  emptySelectionClipboard?: bool,
  copyWithSyntaxHighlighting?: bool,
  suggestSelection?: suggestSelection,
  suggestFontSize?: float,
  suggestLineHeight?: float,
  tabCompletion?: tabCompletion,
  selectionHighlight?: bool,
  selectionHighlightMultiline?: bool,
  selectionHighlightMaxLength?: float,
  occurrencesHighlight?: occurrencesHighlight,
  occurrencesHighlightDelay?: float,
  codeLens?: bool,
  codeLensFontFamily?: string,
  codeLensFontSize?: float,
  lightbulb?: iEditorLightbulbOptions,
  codeActionsOnSaveTimeout?: float,
  folding?: bool,
  foldingStrategy?: foldingStrategy,
  foldingHighlight?: bool,
  foldingImportsByDefault?: bool,
  foldingMaximumRegions?: float,
  showFoldingControls?: showFoldingControls,
  unfoldOnClickAfterEndOfLine?: bool,
  matchBrackets?: matchBrackets,
  experimentalGpuAcceleration?: experimentalGpuAcceleration,
  experimentalWhitespaceRendering?: experimentalWhitespaceRendering,
  renderWhitespace?: renderWhitespace,
  renderControlCharacters?: bool,
  renderLineHighlight?: renderLineHighlight,
  renderLineHighlightOnlyWhenFocus?: bool,
  useTabStops?: bool,
  trimWhitespaceOnDelete?: bool,
  fontFamily?: string,
  fontWeight?: string,
  fontSize?: float,
  lineHeight?: float,
  letterSpacing?: float,
  showUnused?: bool,
  peekWidgetDefaultFocus?: peekWidgetDefaultFocus,
  placeholder?: string,
  definitionLinkOpensInPeek?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  inlayHints?: iEditorInlayHintsOptions,
  useShadowDOM?: bool,
  guides?: iGuidesOptions,
  unicodeHighlight?: iUnicodeHighlightOptions,
  bracketPairColorization?: iBracketPairColorizationOptions,
  dropIntoEditor?: iDropIntoEditorOptions,
  editContext?: bool,
  renderRichScreenReaderContent?: bool,
  pasteAs?: iPasteAsOptions,
  tabFocusMode?: bool,
  inlineCompletionsAccessibilityVerbose?: bool,
}
type editorGetValueConfig = {
  preserveBOM: bool,
  lineEnding: string,
}
type iNewScrollPosition = {
  scrollLeft?: float,
  scrollTop?: float,
}
type iLocalizedString = {
  original: string,
  value: string,
}
module DescriptionTarget = {
  type t
  external fromString: string => t = "%identity"
  external fromILocalizedString: iLocalizedString => t = "%identity"
  external fromUnit: unit => t = "%identity"
  let none: t = fromUnit()
}
type iCommandMetadata = {
  description: DescriptionTarget.t,
}
type iEditorAction = {
  id: string,
  label: string,
  alias: string,
  metadata?: iCommandMetadata,
  isSupported: unit => bool,
  run: option<JSON.t> => promise<unit>,
}
type iEditOperationBuilder = {
  addEditOperation: (iRange, Nullable.t<string>, option<bool>) => unit,
  addTrackedEditOperation: (iRange, Nullable.t<string>, option<bool>) => unit,
  trackSelection: (selection, option<bool>) => string,
}
type iValidEditOperation = {
  range: range,
  text: string,
}
type iCursorStateComputerData = {
  getInverseEditOperations: unit => array<iValidEditOperation>,
  getTrackedSelection: string => selection,
}
type iCommand<'a> = {
  getEditOperations: (iTextModel<'a>, iEditOperationBuilder) => unit,
  computeCursorState: (iTextModel<'a>, iCursorStateComputerData) => selection,
}
@unboxed
type executeEdits =
  Arr(array<selection>) | Fn(array<iValidEditOperation> => Nullable.t<array<selection>>)
type iContentWidgetPosition = {
  position: Nullable.t<iPosition>,
  secondaryPosition?: Nullable.t<iPosition>,
  preference: array<string>,
  positionAffinity?: positionAffinity,
}
type iDimension = {
  width: float,
  height: float,
}
type iContentWidgetRenderedCoordinate = {
  top: float,
  left: float,
}
type iContentWidget = {
  allowEditorOverflow?: bool,
  suppressMouseDown?: bool,
  getId: unit => string,
  getDomNode: unit => Dom.element,
  getPosition: unit => Nullable.t<iContentWidgetPosition>,
  beforeRender?: unit => Nullable.t<iDimension>,
  afterRender?: (
    Nullable.t<contentWidgetPositionPreference>,
    Nullable.t<iContentWidgetRenderedCoordinate>,
  ) => unit,
}
type iOverlayWidgetPosition = {
  preference: string,
  stackOridinal?: float,
}
type iOverlayWidget = {
  onDidLayout?: (string => string, option<string>) => iDisposable,
  allowEditorOverflow?: bool,
  getId: unit => string,
  getDomNode: unit => Dom.element,
  getPosition: unit => Nullable.t<iOverlayWidgetPosition>,
  getMinContentWidthInPx?: unit => float,
}
type iGlyphMarginWidgetPosition = {
  lane: glyphMarginLane,
  zIndex: int,
  range: iRange,
}
type iGlyphMarginWidget = {
  getId: unit => string,
  getDomNode: unit => Dom.element,
  getPosition: unit => iGlyphMarginWidgetPosition,
}
type iViewZone = {
  afterLineNumber: float,
  afterColumn?: float,
  afterColumnAffinity?: positionAffinity,
  showInHiddenAreas?: bool,
  ordinal?: float,
  suppressMouseDown?: bool,
  heightInLines?: float,
  heightInPx?: float,
  minWidthInPx?: float,
  domNode: Dom.element,
  marginDomNode?: Nullable.t<Dom.element>,
  onDomNodeTop?: float => unit,
  onComputedHeight?: float => unit,
}
type iViewZoneChangeAccessor = {
  addZone: iViewZone => string,
  removeZone: string => unit,
  layoutZone: string => unit,
}
type editorGetScrolledVisiblePositionConfig = {
  top: float,
  left: float,
  height: float,
}
type iSelection = {
  selectionStartLineNumber: float,
  selectionStartColumn: float,
  positionLineNumber: float,
  positionColumn: float,
}
module SetSelection = {
  type t
  external asSelection: t => (iRange, option<string>) => unit = "%identity"
  external asSelection2: t => (range, option<string>) => unit = "%identity"
  external asSelection3: t => (iSelection, option<string>) => unit = "%identity"
  external asSelection4: t => (selection, option<string>) => unit = "%identity"
}
type iEditorDecorationsCollection = {
  onDidChange: (iModelDecorationsChangedEvent => string, option<string>) => iDisposable,
  length: float,
  getRange: float => Nullable.t<range>,
  getRanges: unit => array<range>,
  has: iModelDecoration => bool,
  set: array<iModelDeltaDecoration> => array<string>,
  append: array<iModelDeltaDecoration> => array<string>,
  clear: unit => unit,
}
type iCodeEditor<'a> = {
  onDidChangeModelContent: (iModelContentChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModelLanguage: (iModelLanguageChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModelLanguageConfiguration: (JSON.t => string, option<string>) => iDisposable,
  onDidChangeModelOptions: (iModelOptionsChangedEvent => string, option<string>) => iDisposable,
  onDidChangeConfiguration: (configurationChangedEvent => string, option<string>) => iDisposable,
  onDidChangeCursorPosition: (iCursorPositionChangedEvent => string, option<string>) => iDisposable,
  onDidChangeCursorSelection: (
    iCursorSelectionChangedEvent => string,
    option<string>,
  ) => iDisposable,
  onWillChangeModel: (iModelChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModel: (iModelChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModelDecorations: (
    iModelDecorationsChangedEvent => string,
    option<string>,
  ) => iDisposable,
  onDidFocusEditorText: (string => string, option<string>) => iDisposable,
  onDidBlurEditorText: (string => string, option<string>) => iDisposable,
  onDidFocusEditorWidget: (string => string, option<string>) => iDisposable,
  onDidBlurEditorWidget: (string => string, option<string>) => iDisposable,
  inComposition: bool,
  onDidCompositionStart: (string => string, option<string>) => iDisposable,
  onDidCompositionEnd: (string => string, option<string>) => iDisposable,
  onDidAttemptReadOnlyEdit: (string => string, option<string>) => iDisposable,
  onDidPaste: (iPasteEvent => string, option<string>) => iDisposable,
  onMouseUp: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onMouseDown: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onContextMenu: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onMouseMove: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onMouseLeave: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onKeyUp: (iKeyboardEvent => string, option<string>) => iDisposable,
  onKeyDown: (iKeyboardEvent => string, option<string>) => iDisposable,
  onDidLayoutChange: (editorLayoutInfo => string, option<string>) => iDisposable,
  onDidContentSizeChange: (iContentSizeChangedEvent => string, option<string>) => iDisposable,
  onDidScrollChange: (iScrollEvent => string, option<string>) => iDisposable,
  onDidChangeHiddenAreas: (string => string, option<string>) => iDisposable,
  onBeginUpdate: (string => string, option<string>) => iDisposable,
  onEndUpdate: (string => string, option<string>) => iDisposable,
  saveViewState: unit => Nullable.t<iCodeEditorViewState>,
  restoreViewState: Nullable.t<iCodeEditorViewState> => unit,
  hasWidgetFocus: unit => bool,
  getContribution: string => string,
  getModel: unit => Nullable.t<iTextModel<'a>>,
  setModel: Nullable.t<iTextModel<'a>> => unit,
  getOptions: unit => iComputedEditorOptions,
  getOption: string => JSON.t,
  getRawOptions: unit => iEditorOptions,
  getValue: option<editorGetValueConfig> => string,
  setValue: string => unit,
  getContentWidth: unit => float,
  getScrollWidth: unit => float,
  getScrollLeft: unit => float,
  getContentHeight: unit => float,
  getScrollHeight: unit => float,
  getScrollTop: unit => float,
  setScrollLeft: (float, option<scrollType>) => unit,
  setScrollTop: (float, option<scrollType>) => unit,
  setScrollPosition: (iNewScrollPosition, option<scrollType>) => unit,
  hasPendingScrollAnimation: unit => bool,
  getAction: string => Nullable.t<iEditorAction>,
  executeCommand: (Nullable.t<string>, iCommand<'a>) => unit,
  pushUndoStop: unit => bool,
  popUndoStop: unit => bool,
  executeEdits: (
    Nullable.t<string>,
    array<iIdentifiedSingleEditOperation>,
    option<executeEdits>,
  ) => bool,
  executeCommands: (Nullable.t<string>, array<iCommand<'a>>) => unit,
  getLineDecorations: float => Nullable.t<array<iModelDecoration>>,
  getDecorationsInRange: range => Nullable.t<array<iModelDecoration>>,
  getFontSizeAtPosition: iPosition => Nullable.t<string>,
  deltaDecorations: (array<string>, array<iModelDeltaDecoration>) => array<string>,
  removeDecorations: array<string> => unit,
  getLayoutInfo: unit => editorLayoutInfo,
  getVisibleRanges: unit => array<range>,
  getTopForLineNumber: (float, option<bool>) => float,
  getBottomForLineNumber: float => float,
  getTopForPosition: (float, float) => float,
  getLineHeightForPosition: iPosition => float,
  writeScreenReaderContent: string => unit,
  getContainerDomNode: unit => Dom.element,
  getDomNode: unit => Nullable.t<Dom.element>,
  addContentWidget: iContentWidget => unit,
  layoutContentWidget: iContentWidget => unit,
  removeContentWidget: iContentWidget => unit,
  addOverlayWidget: iOverlayWidget => unit,
  layoutOverlayWidget: iOverlayWidget => unit,
  removeOverlayWidget: iOverlayWidget => unit,
  addGlyphMarginWidget: iGlyphMarginWidget => unit,
  layoutGlyphMarginWidget: iGlyphMarginWidget => unit,
  removeGlyphMarginWidget: iGlyphMarginWidget => unit,
  changeViewZones: iViewZoneChangeAccessor => unit => unit,
  getOffsetForColumn: (float, float) => float,
  render: option<bool> => unit,
  getTargetAtClientPoint: (float, float) => IMouseTarget.t,
  getScrolledVisiblePosition: iPosition => Nullable.t<editorGetScrolledVisiblePositionConfig>,
  applyFontInfo: Dom.element => unit,
  setBanner: (Nullable.t<Dom.element>, float) => unit,
  handleInitialized?: unit => unit,
  onDidDispose: unit => unit => iDisposable,
  dispose: unit => unit,
  getId: unit => string,
  getEditorType: unit => string,
  updateOptions: iEditorOptions => unit,
  layout: (option<iDimension>, option<bool>) => unit,
  focus: unit => unit,
  hasTextFocus: unit => bool,
  getSupportedActions: unit => array<iEditorAction>,
  getVisibleColumnFromPosition: iPosition => float,
  getPosition: unit => Nullable.t<position2>,
  setPosition: (iPosition, option<string>) => unit,
  revealLine: (float, option<scrollType>) => unit,
  revealLineInCenter: (float, option<scrollType>) => unit,
  revealLineInCenterIfOutsideViewport: (float, option<scrollType>) => unit,
  revealLineNearTop: (float, option<scrollType>) => unit,
  revealPosition: (iPosition, option<scrollType>) => unit,
  revealPositionInCenter: (iPosition, option<scrollType>) => unit,
  revealPositionInCenterIfOutsideViewport: (iPosition, option<scrollType>) => unit,
  revealPositionNearTop: (iPosition, option<scrollType>) => unit,
  getSelection: unit => Nullable.t<selection>,
  getSelections: unit => Nullable.t<array<selection>>,
  setSelection: SetSelection.t,
  setSelections: (array<iSelection>, option<string>) => unit,
  revealLines: (float, float, option<scrollType>) => unit,
  revealLinesInCenter: (float, float, option<scrollType>) => unit,
  revealLinesInCenterIfOutsideViewport: (float, float, option<scrollType>) => unit,
  revealLinesNearTop: (float, float, option<scrollType>) => unit,
  revealRange: (iRange, option<scrollType>) => unit,
  revealRangeInCenter: (iRange, option<scrollType>) => unit,
  revealRangeAtTop: (iRange, option<scrollType>) => unit,
  revealRangeInCenterIfOutsideViewport: (iRange, option<scrollType>) => unit,
  revealRangeNearTop: (iRange, option<scrollType>) => unit,
  revealRangeNearTopIfOutsideViewport: (iRange, option<scrollType>) => unit,
  trigger: (Nullable.t<string>, string, string) => unit,
  createDecorationsCollection: option<array<iModelDeltaDecoration>> => iEditorDecorationsCollection,
}
type editorValueConfig = {
  inDiffEditor?: bool,
  allowVariableLineHeights?: bool,
  allowVariableFonts?: bool,
  allowVariableFontsInAccessibilityMode?: bool,
  ariaLabel?: string,
  ariaRequired?: bool,
  screenReaderAnnounceInlineSuggestion?: bool,
  tabIndex?: int,
  rulers?: array<string>,
  wordSegmenterLocales?: CommonTypes.stringOrStringArray,
  wordSeparators?: string,
  selectionClipboard?: bool,
  lineNumbers?: CommonTypes.lineNumbers,
  cursorSurroundingLines?: float,
  cursorSurroundingLinesStyle?: cursorSurroundingLinesStyle,
  renderFinalNewline?: renderFinalNewline,
  unusualLineTerminators?: unusualLineTerminators,
  selectOnLineNumbers?: bool,
  lineNumbersMinChars?: float,
  glyphMargin?: bool,
  lineDecorationsWidth?: CommonTypes.stringOrNumber,
  revealHorizontalRightPadding?: float,
  roundedSelection?: bool,
  extraEditorClassName?: string,
  readOnly?: bool,
  readOnlyMessage?: iMarkdownString,
  domReadOnly?: bool,
  linkedEditing?: bool,
  renameOnType?: bool,
  renderValidationDecorations?: renderValidationDecorations,
  scrollbar?: iEditorScrollbarOptions,
  stickyScroll?: iEditorStickyScrollOptions,
  minimap?: iEditorMinimapOptions,
  find?: iEditorFindOptions,
  fixedOverflowWidgets?: bool,
  allowOverflow?: bool,
  overviewRulerLanes?: float,
  overviewRulerBorder?: bool,
  cursorBlinking?: cursorBlinking,
  mouseWheelZoom?: bool,
  mouseStyle?: mouseStyle,
  cursorSmoothCaretAnimation?: cursorSmoothCaretAnimation,
  cursorStyle?: cursorStyle,
  overtypeCursorStyle?: cursorStyle,
  overtypeOnPaste?: bool,
  cursorWidth?: float,
  cursorHeight?: float,
  fontLigatures?: CommonTypes.boolOrString,
  fontVariations?: CommonTypes.boolOrString,
  defaultColorDecorators?: defaultColorDecorators,
  disableLayerHinting?: bool,
  disableMonospaceOptimizations?: bool,
  hideCursorInOverviewRuler?: bool,
  scrollBeyondLastLine?: bool,
  scrollOnMiddleClick?: bool,
  scrollBeyondLastColumn?: float,
  smoothScrolling?: bool,
  automaticLayout?: bool,
  wordWrap?: wordWrap,
  wordWrapOverride1?: wordWrapOverride1,
  wordWrapOverride2?: wordWrapOverride1,
  wordWrapColumn?: float,
  wrappingIndent?: wrappingIndent,
  wrappingStrategy?: wrappingStrategy,
  wrapOnEscapedLineFeeds?: bool,
  wordWrapBreakBeforeCharacters?: string,
  wordWrapBreakAfterCharacters?: string,
  wordBreak?: wordBreak,
  stopRenderingLineAfter?: float,
  hover?: iEditorHoverOptions,
  links?: bool,
  colorDecorators?: bool,
  colorDecoratorsActivatedOn?: colorDecoratorsActivatedOn,
  colorDecoratorsLimit?: float,
  comments?: iEditorCommentsOptions,
  contextmenu?: bool,
  mouseWheelScrollSensitivity?: float,
  fastScrollSensitivity?: float,
  scrollPredominantAxis?: bool,
  inertialScroll?: bool,
  columnSelection?: bool,
  multiCursorModifier?: multiCursorModifier,
  multiCursorMergeOverlapping?: bool,
  multiCursorPaste?: multiCursorPaste,
  multiCursorLimit?: float,
  mouseMiddleClickAction?: mouseMiddleClickAction,
  accessibilitySupport?: accessibilitySupport,
  accessibilityPageSize?: float,
  suggest?: iSuggestOptions,
  inlineSuggest?: iInlineSuggestOptions,
  smartSelect?: iSmartSelectOptions,
  gotoLocation?: iGotoLocationOptions,
  quickSuggestions?: string,
  quickSuggestionsDelay?: float,
  padding?: iEditorPaddingOptions,
  parameterHints?: iEditorParameterHintOptions,
  autoClosingBrackets?: editorAutoClosingStrategy,
  autoClosingComments?: editorAutoClosingStrategy,
  autoClosingQuotes?: editorAutoClosingStrategy,
  autoClosingDelete?: editorAutoClosingEditStrategy,
  autoClosingOvertype?: editorAutoClosingEditStrategy,
  autoSurround?: editorAutoSurroundStrategy,
  autoIndent?: autoIndent,
  autoIndentOnPaste?: bool,
  autoIndentOnPasteWithinString?: bool,
  stickyTabStops?: bool,
  formatOnType?: bool,
  formatOnPaste?: bool,
  dragAndDrop?: bool,
  suggestOnTriggerCharacters?: bool,
  acceptSuggestionOnEnter?: acceptSuggestionOnEnter,
  acceptSuggestionOnCommitCharacter?: bool,
  snippetSuggestions?: snippetSuggestions,
  emptySelectionClipboard?: bool,
  copyWithSyntaxHighlighting?: bool,
  suggestSelection?: suggestSelection,
  suggestFontSize?: float,
  suggestLineHeight?: float,
  tabCompletion?: tabCompletion,
  selectionHighlight?: bool,
  selectionHighlightMultiline?: bool,
  selectionHighlightMaxLength?: float,
  occurrencesHighlight?: occurrencesHighlight,
  occurrencesHighlightDelay?: float,
  codeLens?: bool,
  codeLensFontFamily?: string,
  codeLensFontSize?: float,
  lightbulb?: iEditorLightbulbOptions,
  codeActionsOnSaveTimeout?: float,
  folding?: bool,
  foldingStrategy?: foldingStrategy,
  foldingHighlight?: bool,
  foldingImportsByDefault?: bool,
  foldingMaximumRegions?: float,
  showFoldingControls?: showFoldingControls,
  unfoldOnClickAfterEndOfLine?: bool,
  matchBrackets?: matchBrackets,
  experimentalGpuAcceleration?: experimentalGpuAcceleration,
  experimentalWhitespaceRendering?: experimentalWhitespaceRendering,
  renderWhitespace?: renderWhitespace,
  renderControlCharacters?: bool,
  renderLineHighlight?: renderLineHighlight,
  renderLineHighlightOnlyWhenFocus?: bool,
  useTabStops?: bool,
  trimWhitespaceOnDelete?: bool,
  fontFamily?: string,
  fontWeight?: string,
  fontSize?: float,
  lineHeight?: float,
  letterSpacing?: float,
  showUnused?: bool,
  peekWidgetDefaultFocus?: peekWidgetDefaultFocus,
  placeholder?: string,
  definitionLinkOpensInPeek?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  inlayHints?: iEditorInlayHintsOptions,
  useShadowDOM?: bool,
  guides?: iGuidesOptions,
  unicodeHighlight?: iUnicodeHighlightOptions,
  bracketPairColorization?: iBracketPairColorizationOptions,
  dropIntoEditor?: iDropIntoEditorOptions,
  editContext?: bool,
  renderRichScreenReaderContent?: bool,
  pasteAs?: iPasteAsOptions,
  tabFocusMode?: bool,
  inlineCompletionsAccessibilityVerbose?: bool,
}
type iContextKey = {
  set: string => unit,
  reset: unit => unit,
  get: unit => string,
}
type iActionDescriptor<'a, 'b> = {
  id: string,
  label: string,
  precondition?: string,
  keybindings?: array<float>,
  keybindingContext?: string,
  contextMenuGroupId?: string,
  contextMenuOrder?: float,
  run: (iCodeEditor<'a>, array<'b>) => 'a,
}
type codeEditorV2UpdateOptionsConfig = {
  inDiffEditor?: bool,
  allowVariableLineHeights?: bool,
  allowVariableFonts?: bool,
  allowVariableFontsInAccessibilityMode?: bool,
  ariaLabel?: string,
  ariaRequired?: bool,
  screenReaderAnnounceInlineSuggestion?: bool,
  tabIndex?: int,
  rulers?: array<string>,
  wordSegmenterLocales?: CommonTypes.stringOrStringArray,
  wordSeparators?: string,
  selectionClipboard?: bool,
  lineNumbers?: string,
  cursorSurroundingLines?: float,
  cursorSurroundingLinesStyle?: cursorSurroundingLinesStyle,
  renderFinalNewline?: renderFinalNewline,
  unusualLineTerminators?: unusualLineTerminators,
  selectOnLineNumbers?: bool,
  lineNumbersMinChars?: float,
  glyphMargin?: bool,
  lineDecorationsWidth?: CommonTypes.stringOrNumber,
  revealHorizontalRightPadding?: float,
  roundedSelection?: bool,
  extraEditorClassName?: string,
  readOnly?: bool,
  readOnlyMessage?: iMarkdownString,
  domReadOnly?: bool,
  linkedEditing?: bool,
  renameOnType?: bool,
  renderValidationDecorations?: renderValidationDecorations,
  scrollbar?: iEditorScrollbarOptions,
  stickyScroll?: iEditorStickyScrollOptions,
  minimap?: iEditorMinimapOptions,
  find?: iEditorFindOptions,
  fixedOverflowWidgets?: bool,
  allowOverflow?: bool,
  overviewRulerLanes?: float,
  overviewRulerBorder?: bool,
  cursorBlinking?: cursorBlinking,
  mouseWheelZoom?: bool,
  mouseStyle?: mouseStyle,
  cursorSmoothCaretAnimation?: cursorSmoothCaretAnimation,
  cursorStyle?: cursorStyle,
  overtypeCursorStyle?: cursorStyle,
  overtypeOnPaste?: bool,
  cursorWidth?: float,
  cursorHeight?: float,
  fontLigatures?: CommonTypes.boolOrString,
  fontVariations?: CommonTypes.boolOrString,
  defaultColorDecorators?: defaultColorDecorators,
  disableLayerHinting?: bool,
  disableMonospaceOptimizations?: bool,
  hideCursorInOverviewRuler?: bool,
  scrollBeyondLastLine?: bool,
  scrollOnMiddleClick?: bool,
  scrollBeyondLastColumn?: float,
  smoothScrolling?: bool,
  automaticLayout?: bool,
  wordWrap?: wordWrap,
  wordWrapOverride1?: wordWrapOverride1,
  wordWrapOverride2?: wordWrapOverride1,
  wordWrapColumn?: float,
  wrappingIndent?: wrappingIndent,
  wrappingStrategy?: wrappingStrategy,
  wrapOnEscapedLineFeeds?: bool,
  wordWrapBreakBeforeCharacters?: string,
  wordWrapBreakAfterCharacters?: string,
  wordBreak?: wordBreak,
  stopRenderingLineAfter?: float,
  hover?: iEditorHoverOptions,
  links?: bool,
  colorDecorators?: bool,
  colorDecoratorsActivatedOn?: colorDecoratorsActivatedOn,
  colorDecoratorsLimit?: float,
  comments?: iEditorCommentsOptions,
  contextmenu?: bool,
  mouseWheelScrollSensitivity?: float,
  fastScrollSensitivity?: float,
  scrollPredominantAxis?: bool,
  inertialScroll?: bool,
  columnSelection?: bool,
  multiCursorModifier?: multiCursorModifier,
  multiCursorMergeOverlapping?: bool,
  multiCursorPaste?: multiCursorPaste,
  multiCursorLimit?: float,
  mouseMiddleClickAction?: mouseMiddleClickAction,
  accessibilitySupport?: accessibilitySupport,
  accessibilityPageSize?: float,
  suggest?: iSuggestOptions,
  inlineSuggest?: iInlineSuggestOptions,
  smartSelect?: iSmartSelectOptions,
  gotoLocation?: iGotoLocationOptions,
  quickSuggestions?: string,
  quickSuggestionsDelay?: float,
  padding?: iEditorPaddingOptions,
  parameterHints?: iEditorParameterHintOptions,
  autoClosingBrackets?: editorAutoClosingStrategy,
  autoClosingComments?: editorAutoClosingStrategy,
  autoClosingQuotes?: editorAutoClosingStrategy,
  autoClosingDelete?: editorAutoClosingEditStrategy,
  autoClosingOvertype?: editorAutoClosingEditStrategy,
  autoSurround?: editorAutoSurroundStrategy,
  autoIndent?: autoIndent,
  autoIndentOnPaste?: bool,
  autoIndentOnPasteWithinString?: bool,
  stickyTabStops?: bool,
  formatOnType?: bool,
  formatOnPaste?: bool,
  dragAndDrop?: bool,
  suggestOnTriggerCharacters?: bool,
  acceptSuggestionOnEnter?: acceptSuggestionOnEnter,
  acceptSuggestionOnCommitCharacter?: bool,
  snippetSuggestions?: snippetSuggestions,
  emptySelectionClipboard?: bool,
  copyWithSyntaxHighlighting?: bool,
  suggestSelection?: suggestSelection,
  suggestFontSize?: float,
  suggestLineHeight?: float,
  tabCompletion?: tabCompletion,
  selectionHighlight?: bool,
  selectionHighlightMultiline?: bool,
  selectionHighlightMaxLength?: float,
  occurrencesHighlight?: occurrencesHighlight,
  occurrencesHighlightDelay?: float,
  codeLens?: bool,
  codeLensFontFamily?: string,
  codeLensFontSize?: float,
  lightbulb?: iEditorLightbulbOptions,
  codeActionsOnSaveTimeout?: float,
  folding?: bool,
  foldingStrategy?: foldingStrategy,
  foldingHighlight?: bool,
  foldingImportsByDefault?: bool,
  foldingMaximumRegions?: float,
  showFoldingControls?: showFoldingControls,
  unfoldOnClickAfterEndOfLine?: bool,
  matchBrackets?: matchBrackets,
  experimentalGpuAcceleration?: experimentalGpuAcceleration,
  experimentalWhitespaceRendering?: experimentalWhitespaceRendering,
  renderWhitespace?: renderWhitespace,
  renderControlCharacters?: bool,
  renderLineHighlight?: renderLineHighlight,
  renderLineHighlightOnlyWhenFocus?: bool,
  useTabStops?: bool,
  trimWhitespaceOnDelete?: bool,
  fontFamily?: string,
  fontWeight?: string,
  fontSize?: float,
  lineHeight?: float,
  letterSpacing?: float,
  showUnused?: bool,
  peekWidgetDefaultFocus?: peekWidgetDefaultFocus,
  placeholder?: string,
  definitionLinkOpensInPeek?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  inlayHints?: iEditorInlayHintsOptions,
  useShadowDOM?: bool,
  guides?: iGuidesOptions,
  unicodeHighlight?: iUnicodeHighlightOptions,
  bracketPairColorization?: iBracketPairColorizationOptions,
  dropIntoEditor?: iDropIntoEditorOptions,
  editContext?: bool,
  renderRichScreenReaderContent?: bool,
  pasteAs?: iPasteAsOptions,
  tabFocusMode?: bool,
  inlineCompletionsAccessibilityVerbose?: bool,
  tabSize?: float,
  insertSpaces?: bool,
  detectIndentation?: bool,
  trimAutoWhitespace?: bool,
  largeFileOptimizations?: bool,
  wordBasedSuggestions?: wordBasedSuggestions,
  wordBasedSuggestionsOnlySameLanguage?: bool,
  @as("semanticHighlighting.enabled")
  semanticHighlighting_enabled?: CommonTypes.boolOrConfiguredByTheme,
  stablePeek?: bool,
  maxTokenizationLineLength?: float,
  theme?: string,
  autoDetectHighContrast?: bool,
}
type iStandaloneCodeEditor<'a, 'b> = {
  updateOptions: codeEditorV2UpdateOptionsConfig => unit,
  addCommand: (float, array<string> => unit, option<string>) => Nullable.t<string>,
  createContextKey: (string, string) => iContextKey,
  addAction: iActionDescriptor<'a, 'b> => iDisposable,
  onDidChangeModelContent: (iModelContentChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModelLanguage: (iModelLanguageChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModelLanguageConfiguration: (JSON.t => string, option<string>) => iDisposable,
  onDidChangeModelOptions: (iModelOptionsChangedEvent => string, option<string>) => iDisposable,
  onDidChangeConfiguration: (configurationChangedEvent => string, option<string>) => iDisposable,
  onDidChangeCursorPosition: (iCursorPositionChangedEvent => string, option<string>) => iDisposable,
  onDidChangeCursorSelection: (
    iCursorSelectionChangedEvent => string,
    option<string>,
  ) => iDisposable,
  onWillChangeModel: (iModelChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModel: (iModelChangedEvent => string, option<string>) => iDisposable,
  onDidChangeModelDecorations: (
    iModelDecorationsChangedEvent => string,
    option<string>,
  ) => iDisposable,
  onDidFocusEditorText: (string => string, option<string>) => iDisposable,
  onDidBlurEditorText: (string => string, option<string>) => iDisposable,
  onDidFocusEditorWidget: (string => string, option<string>) => iDisposable,
  onDidBlurEditorWidget: (string => string, option<string>) => iDisposable,
  inComposition: bool,
  onDidCompositionStart: (string => string, option<string>) => iDisposable,
  onDidCompositionEnd: (string => string, option<string>) => iDisposable,
  onDidAttemptReadOnlyEdit: (string => string, option<string>) => iDisposable,
  onDidPaste: (iPasteEvent => string, option<string>) => iDisposable,
  onMouseUp: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onMouseDown: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onContextMenu: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onMouseMove: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onMouseLeave: (iEditorMouseEvent => string, option<string>) => iDisposable,
  onKeyUp: (iKeyboardEvent => string, option<string>) => iDisposable,
  onKeyDown: (iKeyboardEvent => string, option<string>) => iDisposable,
  onDidLayoutChange: (editorLayoutInfo => string, option<string>) => iDisposable,
  onDidContentSizeChange: (iContentSizeChangedEvent => string, option<string>) => iDisposable,
  onDidScrollChange: (iScrollEvent => string, option<string>) => iDisposable,
  onDidChangeHiddenAreas: (string => string, option<string>) => iDisposable,
  onBeginUpdate: (string => string, option<string>) => iDisposable,
  onEndUpdate: (string => string, option<string>) => iDisposable,
  saveViewState: unit => Nullable.t<iCodeEditorViewState>,
  restoreViewState: Nullable.t<iCodeEditorViewState> => unit,
  hasWidgetFocus: unit => bool,
  getContribution: string => string,
  getModel: unit => Nullable.t<iTextModel<'a>>,
  setModel: Nullable.t<iTextModel<'a>> => unit,
  getOptions: unit => iComputedEditorOptions,
  getOption: string => JSON.t,
  getRawOptions: unit => iEditorOptions,
  getValue: option<editorGetValueConfig> => string,
  setValue: string => unit,
  getContentWidth: unit => float,
  getScrollWidth: unit => float,
  getScrollLeft: unit => float,
  getContentHeight: unit => float,
  getScrollHeight: unit => float,
  getScrollTop: unit => float,
  setScrollLeft: (float, option<scrollType>) => unit,
  setScrollTop: (float, option<scrollType>) => unit,
  setScrollPosition: (iNewScrollPosition, option<scrollType>) => unit,
  hasPendingScrollAnimation: unit => bool,
  getAction: string => Nullable.t<iEditorAction>,
  executeCommand: (Nullable.t<string>, iCommand<'a>) => unit,
  pushUndoStop: unit => bool,
  popUndoStop: unit => bool,
  executeEdits: (Nullable.t<string>, array<iIdentifiedSingleEditOperation>, option<string>) => bool,
  executeCommands: (Nullable.t<string>, array<iCommand<'a>>) => unit,
  getLineDecorations: float => Nullable.t<array<iModelDecoration>>,
  getDecorationsInRange: range => Nullable.t<array<iModelDecoration>>,
  getFontSizeAtPosition: iPosition => Nullable.t<string>,
  deltaDecorations: (array<string>, array<iModelDeltaDecoration>) => array<string>,
  removeDecorations: array<string> => unit,
  getLayoutInfo: unit => editorLayoutInfo,
  getVisibleRanges: unit => array<range>,
  getTopForLineNumber: (float, option<bool>) => float,
  getBottomForLineNumber: float => float,
  getTopForPosition: (float, float) => float,
  getLineHeightForPosition: iPosition => float,
  writeScreenReaderContent: string => unit,
  getContainerDomNode: unit => Dom.element,
  getDomNode: unit => Nullable.t<Dom.element>,
  addContentWidget: iContentWidget => unit,
  layoutContentWidget: iContentWidget => unit,
  removeContentWidget: iContentWidget => unit,
  addOverlayWidget: iOverlayWidget => unit,
  layoutOverlayWidget: iOverlayWidget => unit,
  removeOverlayWidget: iOverlayWidget => unit,
  addGlyphMarginWidget: iGlyphMarginWidget => unit,
  layoutGlyphMarginWidget: iGlyphMarginWidget => unit,
  removeGlyphMarginWidget: iGlyphMarginWidget => unit,
  changeViewZones: iViewZoneChangeAccessor => unit => unit,
  getOffsetForColumn: (float, float) => float,
  render: option<bool> => unit,
  getTargetAtClientPoint: (float, float) => IMouseTarget.t,
  getScrolledVisiblePosition: iPosition => Nullable.t<editorGetScrolledVisiblePositionConfig>,
  applyFontInfo: Dom.element => unit,
  setBanner: (Nullable.t<Dom.element>, float) => unit,
  handleInitialized?: unit => unit,
  onDidDispose: unit => unit => iDisposable,
  dispose: unit => unit,
  getId: unit => string,
  getEditorType: unit => string,
  layout: (option<iDimension>, option<bool>) => unit,
  focus: unit => unit,
  hasTextFocus: unit => bool,
  getSupportedActions: unit => array<iEditorAction>,
  getVisibleColumnFromPosition: iPosition => float,
  getPosition: unit => Nullable.t<position2>,
  setPosition: (iPosition, option<string>) => unit,
  revealLine: (float, option<scrollType>) => unit,
  revealLineInCenter: (float, option<scrollType>) => unit,
  revealLineInCenterIfOutsideViewport: (float, option<scrollType>) => unit,
  revealLineNearTop: (float, option<scrollType>) => unit,
  revealPosition: (iPosition, option<scrollType>) => unit,
  revealPositionInCenter: (iPosition, option<scrollType>) => unit,
  revealPositionInCenterIfOutsideViewport: (iPosition, option<scrollType>) => unit,
  revealPositionNearTop: (iPosition, option<scrollType>) => unit,
  getSelection: unit => Nullable.t<selection>,
  getSelections: unit => Nullable.t<array<selection>>,
  setSelection: SetSelection.t,
  setSelections: (array<iSelection>, option<string>) => unit,
  revealLines: (float, float, option<scrollType>) => unit,
  revealLinesInCenter: (float, float, option<scrollType>) => unit,
  revealLinesInCenterIfOutsideViewport: (float, float, option<scrollType>) => unit,
  revealLinesNearTop: (float, float, option<scrollType>) => unit,
  revealRange: (iRange, option<scrollType>) => unit,
  revealRangeInCenter: (iRange, option<scrollType>) => unit,
  revealRangeAtTop: (iRange, option<scrollType>) => unit,
  revealRangeInCenterIfOutsideViewport: (iRange, option<scrollType>) => unit,
  revealRangeNearTop: (iRange, option<scrollType>) => unit,
  revealRangeNearTopIfOutsideViewport: (iRange, option<scrollType>) => unit,
  trigger: (Nullable.t<string>, string, string) => unit,
  createDecorationsCollection: option<array<iModelDeltaDecoration>> => iEditorDecorationsCollection,
}
type iDiffEditorViewState = {
  original: Nullable.t<iCodeEditorViewState>,
  modified: Nullable.t<iCodeEditorViewState>,
  modelState?: JSON.t,
}
type iDiffEditorModel<'a> = {
  original: iTextModel<'a>,
  modified: iTextModel<'a>,
}
type iDiffEditorViewModel<'a> = {
  model: iDiffEditorModel<'a>,
  waitForDiff: unit => promise<unit>,
  dispose: unit => unit,
}
module SetModel = {
  type t
  external fromIDiffEditorModel: iDiffEditorModel<'a> => t = "%identity"
  external fromIDiffEditorViewModel: iDiffEditorViewModel<'a> => t = "%identity"
}
type iCharChange = {
  originalStartColumn: float,
  originalEndColumn: float,
  modifiedStartColumn: float,
  modifiedEndColumn: float,
  originalStartLineNumber: float,
  originalEndLineNumber: float,
  modifiedStartLineNumber: float,
  modifiedEndLineNumber: float,
}
type iLineChange = {
  charChanges?: array<iCharChange>,
  originalStartLineNumber: float,
  originalEndLineNumber: float,
  modifiedStartLineNumber: float,
  modifiedEndLineNumber: float,
}
type editorExperimentalConfig = {
  showMoves?: bool,
  showEmptyDecorations?: bool,
  useTrueInlineView?: bool,
}
type editorHideUnchangedRegionsConfig = {
  enabled?: bool,
  revealLineCount?: float,
  minimumLineCount?: float,
  contextLineCount?: float,
}
type iDiffEditorOptions = {
  inDiffEditor?: bool,
  allowVariableLineHeights?: bool,
  allowVariableFonts?: bool,
  allowVariableFontsInAccessibilityMode?: bool,
  ariaLabel?: string,
  ariaRequired?: bool,
  screenReaderAnnounceInlineSuggestion?: bool,
  tabIndex?: int,
  rulers?: array<string>,
  wordSegmenterLocales?: CommonTypes.stringOrStringArray,
  wordSeparators?: string,
  selectionClipboard?: bool,
  lineNumbers?: CommonTypes.lineNumbers,
  cursorSurroundingLines?: float,
  cursorSurroundingLinesStyle?: cursorSurroundingLinesStyle,
  renderFinalNewline?: renderFinalNewline,
  unusualLineTerminators?: unusualLineTerminators,
  selectOnLineNumbers?: bool,
  lineNumbersMinChars?: float,
  glyphMargin?: bool,
  lineDecorationsWidth?: CommonTypes.stringOrNumber,
  revealHorizontalRightPadding?: float,
  roundedSelection?: bool,
  extraEditorClassName?: string,
  readOnly?: bool,
  readOnlyMessage?: iMarkdownString,
  domReadOnly?: bool,
  linkedEditing?: bool,
  renameOnType?: bool,
  renderValidationDecorations?: renderValidationDecorations,
  scrollbar?: iEditorScrollbarOptions,
  stickyScroll?: iEditorStickyScrollOptions,
  minimap?: iEditorMinimapOptions,
  find?: iEditorFindOptions,
  fixedOverflowWidgets?: bool,
  allowOverflow?: bool,
  overviewRulerLanes?: float,
  overviewRulerBorder?: bool,
  cursorBlinking?: cursorBlinking,
  mouseWheelZoom?: bool,
  mouseStyle?: mouseStyle,
  cursorSmoothCaretAnimation?: cursorSmoothCaretAnimation,
  cursorStyle?: cursorStyle,
  overtypeCursorStyle?: cursorStyle,
  overtypeOnPaste?: bool,
  cursorWidth?: float,
  cursorHeight?: float,
  fontLigatures?: CommonTypes.boolOrString,
  fontVariations?: CommonTypes.boolOrString,
  defaultColorDecorators?: defaultColorDecorators,
  disableLayerHinting?: bool,
  disableMonospaceOptimizations?: bool,
  hideCursorInOverviewRuler?: bool,
  scrollBeyondLastLine?: bool,
  scrollOnMiddleClick?: bool,
  scrollBeyondLastColumn?: float,
  smoothScrolling?: bool,
  automaticLayout?: bool,
  wordWrap?: wordWrap,
  wordWrapOverride1?: wordWrapOverride1,
  wordWrapOverride2?: wordWrapOverride1,
  wordWrapColumn?: float,
  wrappingIndent?: wrappingIndent,
  wrappingStrategy?: wrappingStrategy,
  wrapOnEscapedLineFeeds?: bool,
  wordWrapBreakBeforeCharacters?: string,
  wordWrapBreakAfterCharacters?: string,
  wordBreak?: wordBreak,
  stopRenderingLineAfter?: float,
  hover?: iEditorHoverOptions,
  links?: bool,
  colorDecorators?: bool,
  colorDecoratorsActivatedOn?: colorDecoratorsActivatedOn,
  colorDecoratorsLimit?: float,
  comments?: iEditorCommentsOptions,
  contextmenu?: bool,
  mouseWheelScrollSensitivity?: float,
  fastScrollSensitivity?: float,
  scrollPredominantAxis?: bool,
  inertialScroll?: bool,
  columnSelection?: bool,
  multiCursorModifier?: multiCursorModifier,
  multiCursorMergeOverlapping?: bool,
  multiCursorPaste?: multiCursorPaste,
  multiCursorLimit?: float,
  mouseMiddleClickAction?: mouseMiddleClickAction,
  accessibilitySupport?: accessibilitySupport,
  accessibilityPageSize?: float,
  suggest?: iSuggestOptions,
  inlineSuggest?: iInlineSuggestOptions,
  smartSelect?: iSmartSelectOptions,
  gotoLocation?: iGotoLocationOptions,
  quickSuggestions?: string,
  quickSuggestionsDelay?: float,
  padding?: iEditorPaddingOptions,
  parameterHints?: iEditorParameterHintOptions,
  autoClosingBrackets?: editorAutoClosingStrategy,
  autoClosingComments?: editorAutoClosingStrategy,
  autoClosingQuotes?: editorAutoClosingStrategy,
  autoClosingDelete?: editorAutoClosingEditStrategy,
  autoClosingOvertype?: editorAutoClosingEditStrategy,
  autoSurround?: editorAutoSurroundStrategy,
  autoIndent?: autoIndent,
  autoIndentOnPaste?: bool,
  autoIndentOnPasteWithinString?: bool,
  stickyTabStops?: bool,
  formatOnType?: bool,
  formatOnPaste?: bool,
  dragAndDrop?: bool,
  suggestOnTriggerCharacters?: bool,
  acceptSuggestionOnEnter?: acceptSuggestionOnEnter,
  acceptSuggestionOnCommitCharacter?: bool,
  snippetSuggestions?: snippetSuggestions,
  emptySelectionClipboard?: bool,
  copyWithSyntaxHighlighting?: bool,
  suggestSelection?: suggestSelection,
  suggestFontSize?: float,
  suggestLineHeight?: float,
  tabCompletion?: tabCompletion,
  selectionHighlight?: bool,
  selectionHighlightMultiline?: bool,
  selectionHighlightMaxLength?: float,
  occurrencesHighlight?: occurrencesHighlight,
  occurrencesHighlightDelay?: float,
  codeLens?: bool,
  codeLensFontFamily?: string,
  codeLensFontSize?: float,
  lightbulb?: iEditorLightbulbOptions,
  codeActionsOnSaveTimeout?: float,
  folding?: bool,
  foldingStrategy?: foldingStrategy,
  foldingHighlight?: bool,
  foldingImportsByDefault?: bool,
  foldingMaximumRegions?: float,
  showFoldingControls?: showFoldingControls,
  unfoldOnClickAfterEndOfLine?: bool,
  matchBrackets?: matchBrackets,
  experimentalGpuAcceleration?: experimentalGpuAcceleration,
  experimentalWhitespaceRendering?: experimentalWhitespaceRendering,
  renderWhitespace?: renderWhitespace,
  renderControlCharacters?: bool,
  renderLineHighlight?: renderLineHighlight,
  renderLineHighlightOnlyWhenFocus?: bool,
  useTabStops?: bool,
  trimWhitespaceOnDelete?: bool,
  fontFamily?: string,
  fontWeight?: string,
  fontSize?: float,
  lineHeight?: float,
  letterSpacing?: float,
  showUnused?: bool,
  peekWidgetDefaultFocus?: peekWidgetDefaultFocus,
  placeholder?: string,
  definitionLinkOpensInPeek?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  inlayHints?: iEditorInlayHintsOptions,
  useShadowDOM?: bool,
  guides?: iGuidesOptions,
  unicodeHighlight?: iUnicodeHighlightOptions,
  bracketPairColorization?: iBracketPairColorizationOptions,
  dropIntoEditor?: iDropIntoEditorOptions,
  editContext?: bool,
  renderRichScreenReaderContent?: bool,
  pasteAs?: iPasteAsOptions,
  tabFocusMode?: bool,
  inlineCompletionsAccessibilityVerbose?: bool,
  enableSplitViewResizing?: bool,
  splitViewDefaultRatio?: float,
  renderSideBySide?: bool,
  renderSideBySideInlineBreakpoint?: float,
  useInlineViewWhenSpaceIsLimited?: bool,
  compactMode?: bool,
  maxComputationTime?: float,
  maxFileSize?: float,
  ignoreTrimWhitespace?: bool,
  renderIndicators?: bool,
  renderMarginRevertIcon?: bool,
  renderGutterMenu?: bool,
  originalEditable?: bool,
  diffCodeLens?: bool,
  renderOverviewRuler?: bool,
  diffWordWrap?: wordWrapOverride1,
  diffAlgorithm?: diffAlgorithm,
  accessibilityVerbose?: bool,
  experimental?: editorExperimentalConfig,
  isInEmbeddedEditor?: bool,
  onlyShowAccessibleDiffViewer?: bool,
  hideUnchangedRegions?: editorHideUnchangedRegionsConfig,
}
type iStandaloneDiffEditor<'a, 'b> = {
  addCommand: (float, array<'a> => unit, option<string>) => Nullable.t<string>,
  createContextKey: (string, string) => iContextKey,
  addAction: iActionDescriptor<'a, 'b> => iDisposable,
  getOriginalEditor: unit => iStandaloneCodeEditor<'a, 'b>,
  getModifiedEditor: unit => iStandaloneCodeEditor<'a, 'b>,
  getContainerDomNode: unit => Dom.element,
  onDidUpdateDiff: (string => string, option<string>) => iDisposable,
  onDidChangeModel: (string => string, option<string>) => iDisposable,
  saveViewState: unit => Nullable.t<iDiffEditorViewState>,
  restoreViewState: Nullable.t<iDiffEditorViewState> => unit,
  getModel: unit => Nullable.t<iDiffEditorModel<'a>>,
  createViewModel: iDiffEditorModel<'a> => iDiffEditorViewModel<'a>,
  setModel: SetModel.t => unit,
  getLineChanges: unit => Nullable.t<array<iLineChange>>,
  updateOptions: iDiffEditorOptions => unit,
  goToDiff: goToDiff => unit,
  revealFirstDiff: unit => JSON.t,
  accessibleDiffViewerNext: unit => unit,
  accessibleDiffViewerPrev: unit => unit,
  handleInitialized: unit => unit,
  onDidDispose: unit => unit => iDisposable,
  dispose: unit => unit,
  getId: unit => string,
  getEditorType: unit => string,
  layout: (option<iDimension>, option<bool>) => unit,
  focus: unit => unit,
  hasTextFocus: unit => bool,
  getSupportedActions: unit => array<iEditorAction>,
  getVisibleColumnFromPosition: iPosition => float,
  getPosition: unit => Nullable.t<position2>,
  setPosition: (iPosition, option<string>) => unit,
  revealLine: (float, option<scrollType>) => unit,
  revealLineInCenter: (float, option<scrollType>) => unit,
  revealLineInCenterIfOutsideViewport: (float, option<scrollType>) => unit,
  revealLineNearTop: (float, option<scrollType>) => unit,
  revealPosition: (iPosition, option<scrollType>) => unit,
  revealPositionInCenter: (iPosition, option<scrollType>) => unit,
  revealPositionInCenterIfOutsideViewport: (iPosition, option<scrollType>) => unit,
  revealPositionNearTop: (iPosition, option<scrollType>) => unit,
  getSelection: unit => Nullable.t<selection>,
  getSelections: unit => Nullable.t<array<selection>>,
  setSelection: SetSelection.t,
  setSelections: (array<iSelection>, option<string>) => unit,
  revealLines: (float, float, option<scrollType>) => unit,
  revealLinesInCenter: (float, float, option<scrollType>) => unit,
  revealLinesInCenterIfOutsideViewport: (float, float, option<scrollType>) => unit,
  revealLinesNearTop: (float, float, option<scrollType>) => unit,
  revealRange: (iRange, option<scrollType>) => unit,
  revealRangeInCenter: (iRange, option<scrollType>) => unit,
  revealRangeAtTop: (iRange, option<scrollType>) => unit,
  revealRangeInCenterIfOutsideViewport: (iRange, option<scrollType>) => unit,
  revealRangeNearTop: (iRange, option<scrollType>) => unit,
  revealRangeNearTopIfOutsideViewport: (iRange, option<scrollType>) => unit,
  trigger: (Nullable.t<string>, string, string) => unit,
  createDecorationsCollection: option<array<iModelDeltaDecoration>> => iEditorDecorationsCollection,
}
type iStandaloneEditorConstructionOptions<'a> = {
  model?: Nullable.t<iTextModel<'a>>,
  value?: string,
  language?: string,
  theme?: string,
  autoDetectHighContrast?: bool,
  accessibilityHelpUrl?: string,
  ariaContainerElement?: Dom.element,
  dimension?: iDimension,
  overflowWidgetsDomNode?: Dom.element,
  inDiffEditor?: bool,
  allowVariableLineHeights?: bool,
  allowVariableFonts?: bool,
  allowVariableFontsInAccessibilityMode?: bool,
  ariaLabel?: string,
  ariaRequired?: bool,
  screenReaderAnnounceInlineSuggestion?: bool,
  tabIndex?: int,
  rulers?: array<string>,
  wordSegmenterLocales?: CommonTypes.stringOrStringArray,
  wordSeparators?: string,
  selectionClipboard?: bool,
  lineNumbers?: CommonTypes.lineNumbers,
  cursorSurroundingLines?: float,
  cursorSurroundingLinesStyle?: cursorSurroundingLinesStyle,
  renderFinalNewline?: renderFinalNewline,
  unusualLineTerminators?: unusualLineTerminators,
  selectOnLineNumbers?: bool,
  lineNumbersMinChars?: float,
  glyphMargin?: bool,
  lineDecorationsWidth?: CommonTypes.stringOrNumber,
  revealHorizontalRightPadding?: float,
  roundedSelection?: bool,
  extraEditorClassName?: string,
  readOnly?: bool,
  readOnlyMessage?: iMarkdownString,
  domReadOnly?: bool,
  linkedEditing?: bool,
  renameOnType?: bool,
  renderValidationDecorations?: renderValidationDecorations,
  scrollbar?: iEditorScrollbarOptions,
  stickyScroll?: iEditorStickyScrollOptions,
  minimap?: iEditorMinimapOptions,
  find?: iEditorFindOptions,
  fixedOverflowWidgets?: bool,
  allowOverflow?: bool,
  overviewRulerLanes?: float,
  overviewRulerBorder?: bool,
  cursorBlinking?: cursorBlinking,
  mouseWheelZoom?: bool,
  mouseStyle?: mouseStyle,
  cursorSmoothCaretAnimation?: cursorSmoothCaretAnimation,
  cursorStyle?: cursorStyle,
  overtypeCursorStyle?: cursorStyle,
  overtypeOnPaste?: bool,
  cursorWidth?: float,
  cursorHeight?: float,
  fontLigatures?: CommonTypes.boolOrString,
  fontVariations?: CommonTypes.boolOrString,
  defaultColorDecorators?: defaultColorDecorators,
  disableLayerHinting?: bool,
  disableMonospaceOptimizations?: bool,
  hideCursorInOverviewRuler?: bool,
  scrollBeyondLastLine?: bool,
  scrollOnMiddleClick?: bool,
  scrollBeyondLastColumn?: float,
  smoothScrolling?: bool,
  automaticLayout?: bool,
  wordWrap?: wordWrap,
  wordWrapOverride1?: wordWrapOverride1,
  wordWrapOverride2?: wordWrapOverride1,
  wordWrapColumn?: float,
  wrappingIndent?: wrappingIndent,
  wrappingStrategy?: wrappingStrategy,
  wrapOnEscapedLineFeeds?: bool,
  wordWrapBreakBeforeCharacters?: string,
  wordWrapBreakAfterCharacters?: string,
  wordBreak?: wordBreak,
  stopRenderingLineAfter?: float,
  hover?: iEditorHoverOptions,
  links?: bool,
  colorDecorators?: bool,
  colorDecoratorsActivatedOn?: colorDecoratorsActivatedOn,
  colorDecoratorsLimit?: float,
  comments?: iEditorCommentsOptions,
  contextmenu?: bool,
  mouseWheelScrollSensitivity?: float,
  fastScrollSensitivity?: float,
  scrollPredominantAxis?: bool,
  inertialScroll?: bool,
  columnSelection?: bool,
  multiCursorModifier?: multiCursorModifier,
  multiCursorMergeOverlapping?: bool,
  multiCursorPaste?: multiCursorPaste,
  multiCursorLimit?: float,
  mouseMiddleClickAction?: mouseMiddleClickAction,
  accessibilitySupport?: accessibilitySupport,
  accessibilityPageSize?: float,
  suggest?: iSuggestOptions,
  inlineSuggest?: iInlineSuggestOptions,
  smartSelect?: iSmartSelectOptions,
  gotoLocation?: iGotoLocationOptions,
  quickSuggestions?: string,
  quickSuggestionsDelay?: float,
  padding?: iEditorPaddingOptions,
  parameterHints?: iEditorParameterHintOptions,
  autoClosingBrackets?: editorAutoClosingStrategy,
  autoClosingComments?: editorAutoClosingStrategy,
  autoClosingQuotes?: editorAutoClosingStrategy,
  autoClosingDelete?: editorAutoClosingEditStrategy,
  autoClosingOvertype?: editorAutoClosingEditStrategy,
  autoSurround?: editorAutoSurroundStrategy,
  autoIndent?: autoIndent,
  autoIndentOnPaste?: bool,
  autoIndentOnPasteWithinString?: bool,
  stickyTabStops?: bool,
  formatOnType?: bool,
  formatOnPaste?: bool,
  dragAndDrop?: bool,
  suggestOnTriggerCharacters?: bool,
  acceptSuggestionOnEnter?: acceptSuggestionOnEnter,
  acceptSuggestionOnCommitCharacter?: bool,
  snippetSuggestions?: snippetSuggestions,
  emptySelectionClipboard?: bool,
  copyWithSyntaxHighlighting?: bool,
  suggestSelection?: suggestSelection,
  suggestFontSize?: float,
  suggestLineHeight?: float,
  tabCompletion?: tabCompletion,
  selectionHighlight?: bool,
  selectionHighlightMultiline?: bool,
  selectionHighlightMaxLength?: float,
  occurrencesHighlight?: occurrencesHighlight,
  occurrencesHighlightDelay?: float,
  codeLens?: bool,
  codeLensFontFamily?: string,
  codeLensFontSize?: float,
  lightbulb?: iEditorLightbulbOptions,
  codeActionsOnSaveTimeout?: float,
  folding?: bool,
  foldingStrategy?: foldingStrategy,
  foldingHighlight?: bool,
  foldingImportsByDefault?: bool,
  foldingMaximumRegions?: float,
  showFoldingControls?: showFoldingControls,
  unfoldOnClickAfterEndOfLine?: bool,
  matchBrackets?: matchBrackets,
  experimentalGpuAcceleration?: experimentalGpuAcceleration,
  experimentalWhitespaceRendering?: experimentalWhitespaceRendering,
  renderWhitespace?: renderWhitespace,
  renderControlCharacters?: bool,
  renderLineHighlight?: renderLineHighlight,
  renderLineHighlightOnlyWhenFocus?: bool,
  useTabStops?: bool,
  trimWhitespaceOnDelete?: bool,
  fontFamily?: string,
  fontWeight?: string,
  fontSize?: float,
  lineHeight?: float,
  letterSpacing?: float,
  showUnused?: bool,
  peekWidgetDefaultFocus?: peekWidgetDefaultFocus,
  placeholder?: string,
  definitionLinkOpensInPeek?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  inlayHints?: iEditorInlayHintsOptions,
  useShadowDOM?: bool,
  guides?: iGuidesOptions,
  unicodeHighlight?: iUnicodeHighlightOptions,
  bracketPairColorization?: iBracketPairColorizationOptions,
  dropIntoEditor?: iDropIntoEditorOptions,
  editContext?: bool,
  renderRichScreenReaderContent?: bool,
  pasteAs?: iPasteAsOptions,
  tabFocusMode?: bool,
  inlineCompletionsAccessibilityVerbose?: bool,
  tabSize?: float,
  insertSpaces?: bool,
  detectIndentation?: bool,
  trimAutoWhitespace?: bool,
  largeFileOptimizations?: bool,
  wordBasedSuggestions?: wordBasedSuggestions,
  wordBasedSuggestionsOnlySameLanguage?: bool,
  @as("semanticHighlighting.enabled")
  semanticHighlighting_enabled?: CommonTypes.boolOrConfiguredByTheme,
  stablePeek?: bool,
  maxTokenizationLineLength?: float,
}
type iDiffEditorConstructionOptions = {
  overflowWidgetsDomNode?: Dom.element,
  originalAriaLabel?: string,
  modifiedAriaLabel?: string,
  inDiffEditor?: bool,
  allowVariableLineHeights?: bool,
  allowVariableFonts?: bool,
  allowVariableFontsInAccessibilityMode?: bool,
  ariaLabel?: string,
  ariaRequired?: bool,
  screenReaderAnnounceInlineSuggestion?: bool,
  tabIndex?: int,
  rulers?: array<string>,
  wordSegmenterLocales?: CommonTypes.stringOrStringArray,
  wordSeparators?: string,
  selectionClipboard?: bool,
  lineNumbers?: CommonTypes.lineNumbers,
  cursorSurroundingLines?: float,
  cursorSurroundingLinesStyle?: cursorSurroundingLinesStyle,
  renderFinalNewline?: renderFinalNewline,
  unusualLineTerminators?: unusualLineTerminators,
  selectOnLineNumbers?: bool,
  lineNumbersMinChars?: float,
  glyphMargin?: bool,
  lineDecorationsWidth?: CommonTypes.stringOrNumber,
  revealHorizontalRightPadding?: float,
  roundedSelection?: bool,
  extraEditorClassName?: string,
  readOnly?: bool,
  readOnlyMessage?: iMarkdownString,
  domReadOnly?: bool,
  linkedEditing?: bool,
  renameOnType?: bool,
  renderValidationDecorations?: renderValidationDecorations,
  scrollbar?: iEditorScrollbarOptions,
  stickyScroll?: iEditorStickyScrollOptions,
  minimap?: iEditorMinimapOptions,
  find?: iEditorFindOptions,
  fixedOverflowWidgets?: bool,
  allowOverflow?: bool,
  overviewRulerLanes?: float,
  overviewRulerBorder?: bool,
  cursorBlinking?: cursorBlinking,
  mouseWheelZoom?: bool,
  mouseStyle?: mouseStyle,
  cursorSmoothCaretAnimation?: cursorSmoothCaretAnimation,
  cursorStyle?: cursorStyle,
  overtypeCursorStyle?: cursorStyle,
  overtypeOnPaste?: bool,
  cursorWidth?: float,
  cursorHeight?: float,
  fontLigatures?: CommonTypes.boolOrString,
  fontVariations?: CommonTypes.boolOrString,
  defaultColorDecorators?: defaultColorDecorators,
  disableLayerHinting?: bool,
  disableMonospaceOptimizations?: bool,
  hideCursorInOverviewRuler?: bool,
  scrollBeyondLastLine?: bool,
  scrollOnMiddleClick?: bool,
  scrollBeyondLastColumn?: float,
  smoothScrolling?: bool,
  automaticLayout?: bool,
  wordWrap?: wordWrap,
  wordWrapOverride1?: wordWrapOverride1,
  wordWrapOverride2?: wordWrapOverride1,
  wordWrapColumn?: float,
  wrappingIndent?: wrappingIndent,
  wrappingStrategy?: wrappingStrategy,
  wrapOnEscapedLineFeeds?: bool,
  wordWrapBreakBeforeCharacters?: string,
  wordWrapBreakAfterCharacters?: string,
  wordBreak?: wordBreak,
  stopRenderingLineAfter?: float,
  hover?: iEditorHoverOptions,
  links?: bool,
  colorDecorators?: bool,
  colorDecoratorsActivatedOn?: colorDecoratorsActivatedOn,
  colorDecoratorsLimit?: float,
  comments?: iEditorCommentsOptions,
  contextmenu?: bool,
  mouseWheelScrollSensitivity?: float,
  fastScrollSensitivity?: float,
  scrollPredominantAxis?: bool,
  inertialScroll?: bool,
  columnSelection?: bool,
  multiCursorModifier?: multiCursorModifier,
  multiCursorMergeOverlapping?: bool,
  multiCursorPaste?: multiCursorPaste,
  multiCursorLimit?: float,
  mouseMiddleClickAction?: mouseMiddleClickAction,
  accessibilitySupport?: accessibilitySupport,
  accessibilityPageSize?: float,
  suggest?: iSuggestOptions,
  inlineSuggest?: iInlineSuggestOptions,
  smartSelect?: iSmartSelectOptions,
  gotoLocation?: iGotoLocationOptions,
  quickSuggestions?: string,
  quickSuggestionsDelay?: float,
  padding?: iEditorPaddingOptions,
  parameterHints?: iEditorParameterHintOptions,
  autoClosingBrackets?: editorAutoClosingStrategy,
  autoClosingComments?: editorAutoClosingStrategy,
  autoClosingQuotes?: editorAutoClosingStrategy,
  autoClosingDelete?: editorAutoClosingEditStrategy,
  autoClosingOvertype?: editorAutoClosingEditStrategy,
  autoSurround?: editorAutoSurroundStrategy,
  autoIndent?: autoIndent,
  autoIndentOnPaste?: bool,
  autoIndentOnPasteWithinString?: bool,
  stickyTabStops?: bool,
  formatOnType?: bool,
  formatOnPaste?: bool,
  dragAndDrop?: bool,
  suggestOnTriggerCharacters?: bool,
  acceptSuggestionOnEnter?: acceptSuggestionOnEnter,
  acceptSuggestionOnCommitCharacter?: bool,
  snippetSuggestions?: snippetSuggestions,
  emptySelectionClipboard?: bool,
  copyWithSyntaxHighlighting?: bool,
  suggestSelection?: suggestSelection,
  suggestFontSize?: float,
  suggestLineHeight?: float,
  tabCompletion?: tabCompletion,
  selectionHighlight?: bool,
  selectionHighlightMultiline?: bool,
  selectionHighlightMaxLength?: float,
  occurrencesHighlight?: occurrencesHighlight,
  occurrencesHighlightDelay?: float,
  codeLens?: bool,
  codeLensFontFamily?: string,
  codeLensFontSize?: float,
  lightbulb?: iEditorLightbulbOptions,
  codeActionsOnSaveTimeout?: float,
  folding?: bool,
  foldingStrategy?: foldingStrategy,
  foldingHighlight?: bool,
  foldingImportsByDefault?: bool,
  foldingMaximumRegions?: float,
  showFoldingControls?: showFoldingControls,
  unfoldOnClickAfterEndOfLine?: bool,
  matchBrackets?: matchBrackets,
  experimentalGpuAcceleration?: experimentalGpuAcceleration,
  experimentalWhitespaceRendering?: experimentalWhitespaceRendering,
  renderWhitespace?: renderWhitespace,
  renderControlCharacters?: bool,
  renderLineHighlight?: renderLineHighlight,
  renderLineHighlightOnlyWhenFocus?: bool,
  useTabStops?: bool,
  trimWhitespaceOnDelete?: bool,
  fontFamily?: string,
  fontWeight?: string,
  fontSize?: float,
  lineHeight?: float,
  letterSpacing?: float,
  showUnused?: bool,
  peekWidgetDefaultFocus?: peekWidgetDefaultFocus,
  placeholder?: string,
  definitionLinkOpensInPeek?: bool,
  showDeprecated?: bool,
  matchOnWordStartOnly?: bool,
  inlayHints?: iEditorInlayHintsOptions,
  useShadowDOM?: bool,
  guides?: iGuidesOptions,
  unicodeHighlight?: iUnicodeHighlightOptions,
  bracketPairColorization?: iBracketPairColorizationOptions,
  dropIntoEditor?: iDropIntoEditorOptions,
  editContext?: bool,
  renderRichScreenReaderContent?: bool,
  pasteAs?: iPasteAsOptions,
  tabFocusMode?: bool,
  inlineCompletionsAccessibilityVerbose?: bool,
  enableSplitViewResizing?: bool,
  splitViewDefaultRatio?: float,
  renderSideBySide?: bool,
  renderSideBySideInlineBreakpoint?: float,
  useInlineViewWhenSpaceIsLimited?: bool,
  compactMode?: bool,
  maxComputationTime?: float,
  maxFileSize?: float,
  ignoreTrimWhitespace?: bool,
  renderIndicators?: bool,
  renderMarginRevertIcon?: bool,
  renderGutterMenu?: bool,
  originalEditable?: bool,
  diffCodeLens?: bool,
  renderOverviewRuler?: bool,
  diffWordWrap?: wordWrapOverride1,
  diffAlgorithm?: diffAlgorithm,
  accessibilityVerbose?: bool,
  experimental?: editorExperimentalConfig,
  isInEmbeddedEditor?: bool,
  onlyShowAccessibleDiffViewer?: bool,
  hideUnchangedRegions?: editorHideUnchangedRegionsConfig,
  dimension?: iDimension,
}
type copyFeedbackTimeoutRef = {
  ...JsxDOM.domProps,
}
type rec multiSelectV2ItemType = {
  label: string,
  value: string,
  checked?: bool,
  subLabel?: string,
  slot1?: React.element,
  slot2?: React.element,
  slot3?: React.element,
  slot4?: React.element,
  disabled?: bool,
  onClick?: unit => unit,
  tooltip?: React.element,
  tooltipProps?: SelectV2Types.selectV2TooltipProps,
  disableTruncation?: bool,
  alwaysSelected?: bool,
  subMenu?: array<multiSelectV2ItemType>,
}
type multiSelectV2GroupType = {
  groupLabel?: string,
  items: array<multiSelectV2ItemType>,
  showSeparator?: bool,
}
type multiSelectV2PrimaryActionConfig = {
  text: string,
  onClick: array<string> => unit,
  disabled?: bool,
  loading?: bool,
}
type multiSelectV2SecondaryActionConfig = {
  text: string,
  onClick: unit => unit,
  disabled?: bool,
  loading?: bool,
}
type flattenedMultiSelectV2Item = {
  id: string,
  @as("type") type_: type_4,
  item?: multiSelectV2ItemType,
  label?: string,
  groupId?: float,
}
type multiSelectV2ValueConfig = {
  borderRadius: string,
  borderRight?: string,
}
type multiSelectV2ValueConfig2 = {
  allSelected: bool,
  someSelected: bool,
}
type flattenedItem = {
  id: string,
  @as("type") type_: type_4,
  item?: singleSelectV2ItemType,
  label?: string,
  groupId?: float,
}
type virtualItemShape = {
  key: string,
  index: int,
  start: float,
}
type singleSelectV2ValueConfig = {
  borderRadius: string,
  borderRight?: string,
}
type singleSelectV2OptionsConfig = {
  hasLabel?: bool,
  hasHintText?: bool,
  hasErrorMessage?: bool,
  needsMenuId?: bool,
}
type singleSelectV2ValueConfig2 = {
  labelId?: string,
  hintTextId?: string,
  errorMessageId?: string,
  menuId?: string,
}
type extractedAriaProps = {
  @as("aria-describedby") ariaDescribedby?: string,
  @as("aria-label") ariaLabel?: string,
  @as("aria-labelledby") ariaLabelledby?: string,
  restProps: Dict.t<JSON.t>,
}
type singleSelectV2OptionsConfig2 = {
  error?: bool,
  ariaLabelledBy?: string,
  ariaDescribedBy?: string,
  ariaLabel?: string,
  restProps?: Dict.t<JSON.t>,
}
type ariaAttributes = {
  @as("aria-describedby") ariaDescribedby?: string,
  @as("aria-label") ariaLabel?: string,
  @as("aria-labelledby") ariaLabelledby?: string,
  @as("aria-invalid") ariaInvalid?: bool,
}
type accessibilitySetupOptions = {
  name?: string,
  generatedId: string,
  label?: string,
  hintText?: string,
  error?: bool,
  errorMessage?: string,
  rest?: Dict.t<JSON.t>,
  prefix?: string,
  needsMenuId?: bool,
}
type accessibilitySetupResult = {
  uniqueName: string,
  labelId?: string,
  hintTextId?: string,
  errorMessageId?: string,
  menuId?: string,
  ariaAttributes: ariaAttributes,
}
type chatInputV2TopQuery = {
  id: string,
  text: string,
}
type chatInputV2AttachedFile = {
  id: string,
  name: string,
  @as("type") type_: ChatInputTypes.type_,
  size?: float,
  url?: string,
  preview?: string,
}
