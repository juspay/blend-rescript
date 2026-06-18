# Binding report — `@juspay/blend-design-system@0.0.37-beta.3`

**162** components · ✅ **161** usable · 🔍 **1** need review · 🛑 **0** broken

**84** function binding(s) → `BlendDesignSystemBindings.res`.

**2588** shared types deduplicated into **73** `*Types.res` modules (referenced qualified — no per-file redeclaration).

## 📦 Dependencies

| Kind | Package | Provides | Status |
|------|---------|----------|--------|
| required | `@rescript/react + stdlib` | JsxDOM, Dom, React, ReactEvent | ✓ present |
| optional | `rescript-webapi` | File, FileList | ✓ present → used |

## 🔧 Function bindings

Standalone function exports, emitted as positional `@module external` bindings in `BlendDesignSystemBindings.res`.

- `addSnackbarV2`
- `getButtonV2Tokens`
- `getAccordionV2Tokens`
- `getAlertV2Tokens`
- `getAvatarV2Tokens`
- `getBreadcrumbV2Tokens`
- `getChartV2Tokens`
- `getCheckboxV2Tokens`
- `getCodeEditorV2Tokens`
- `getKeyValuePairV2Tokens`
- `getMenuV2Tokens`
- `getMultiSelectV2Tokens`
- `getPopoverV2Tokens`
- `getProgressBarV2Tokens`
- `getRadioV2Tokens`
- `getSingleSelectV2Tokens`
- `getSwitchV2Tokens`
- `getSnackbarV2Tokens`
- `getStatCardV2Tokens`
- `getTabsV2Tokens`
- `getTagV2Tokens`
- `getTextInputV2Tokens`
- `getTimelineTokens`
- `getTooltipV2Tokens`
- `getSidebarV2Tokens`
- `getMobileNavigationV2Tokens`
- `getTopbarTokens`
- `getSidebarTokens`
- `getMobileNavigationTokens`
- `getAccordionToken`
- `getAlertTokens`
- `getAvatarTokens`
- `getAvatarGroupTokens`
- `getBreadcrumbTokens`
- `getButtonTokens`
- `getCardTokens`
- `getChartTokens`
- `getChatInputTokens`
- `getColumnTypeConfig`
- `getTableToken`
- `getCalendarToken`
- `getDirectoryTokens`
- `getTextInputTokens`
- `getNumberInputTokens`
- `getDropdownInputTokens`
- `getSearchInputTokens`
- `getOTPInputTokens`
- `getUnitInputTokens`
- `getMultiValueInputTokens`
- `getKeyValuePairTokens`
- `getMenuTokens`
- `getModalComponentTokens`
- `getMultiSelectTokens`
- `getPopoverTokens`
- `getProgressBarTokens`
- `useSkeletonBase`
- `getSkeletonState`
- `mergeSkeletonProps`
- `getSkeletonDefaults`
- `getSkeletonTokens`
- `getSingleSelectTokens`
- `getSliderTokenStyles`
- `formatSliderValue`
- `parseSliderValue`
- `createSliderRange`
- `buildThumbAriaAttributes`
- `getSliderLabelStyles`
- `addSnackbar`
- `getSnackbarTokens`
- `getStatCardToken`
- `getStepperTokens`
- `getTabsTokens`
- `getTagTokens`
- `getTooltipTokens`
- `getUploadTokens`
- `useTheme`
- `useShadowRoot`
- `getStepperV2Tokens`
- `getTopbarV2Tokens`
- `getMultiValueInputV2Tokens`
- `getNumberInputV2Tokens`
- `getOTPInputV2Tokens`
- `getSearchInputV2Tokens`
- `getChatInputV2Tokens`

## ✅ Usable

These compile and every prop is bound type-safely — use them directly.
_(n loose)_ = some props widened to `string`; they still work, just loosely typed.

- Accordion
- AccordionItem
- AccordionV2
- AccordionV2Item
- Alert
- AlertV2
- Avatar
- AvatarGroup
- AvatarV2
- BlendChartContainer
- BlendChartHeader
- Breadcrumb
- BreadcrumbV2
- Button
- ButtonGroup
- ButtonGroupV2
- ButtonV2
- Card
- ChartContainer
- ChartContainerV2
- ChartHeader
- ChartHeaderV2
- ChartLegends
- Charts
- ChartV2NoData
- ChartV2Skeleton
- ChatInput
- ChatInputV2
- Checkbox
- CheckboxV2
- CodeBlock
- CodeEditor
- CodeEditorV2
- CoreChart
- DataTable  _(3 loose)_
- DateRangePicker
- Directory
- Drawer
- DrawerBody
- DrawerClose
- DrawerContent
- DrawerDescription
- DrawerFooter
- DrawerHeader
- DrawerOverlay
- DrawerPortal
- DrawerTitle
- DrawerTrigger
- DrawerV2
- DrawerV2Body
- DrawerV2Close
- DrawerV2Content
- DrawerV2Description
- DrawerV2Footer
- DrawerV2Header
- DrawerV2NestedRoot
- DrawerV2Overlay
- DrawerV2Portal
- DrawerV2Title
- DrawerV2Trigger
- DropdownInput
- KeyValuePair
- KeyValuePairV2
- Menu
- MenuV2
- MenuV2Content
- MenuV2Item
- MenuV2SubMenu
- MobileChatInputV2
- MobileDrawerPresets
- MobileMultiSelectV2
- MobileSingleSelectV2
- Modal
- MultiSelect
- MultiSelectDrawer
- MultiSelectTrigger
- MultiSelectV2
- MultiSelectV2Menu
- MultiSelectV2MenuActions
- MultiSelectV2MenuHeader
- MultiSelectV2MenuItems
- MultiSelectV2MenuSearch
- MultiSelectV2MenuVirtualList
- MultiSelectV2Skeleton
- MultiSelectV2Trigger
- MultiValueInput
- MultiValueInputV2
- NestedMultiSelectDrawer
- NestedSingleSelectDrawer
- NumberInput
- NumberInputV2
- OTPInput
- OTPInputV2
- Popover
- PopoverV2
- ProgressBar
- ProgressBarV2
- Radio
- RadioGroup
- RadioV2
- SankeyLink
- SankeyNode
- SearchInput
- SearchInputV2
- SelectItemV2
- ShadowAware
- Sidebar
- SidebarV2
- SidebarV2Panel
- SingleSelect
- SingleSelectDrawer
- SingleSelectV2
- SingleSelectV2List
- SingleSelectV2Menu
- SingleSelectV2Search
- SingleSelectV2Skeleton
- SingleSelectV2Trigger
- SingleSelectV2VirtualList
- Skeleton
- SkeletonAvatar
- SkeletonBase
- SkeletonCard
- Slider
- Snackbar
- SnackbarV2
- SplitTag
- StatCard
- StatCardV2
- StatusDrawer
- Stepper
- StepperV2
- Switch
- SwitchGroup
- SwitchV2
- Tabs
- TabsContent
- TabsList
- TabsTrigger
- TabsV2
- TabsV2Content
- TabsV2List
- TabsV2Trigger
- Tag
- TagGroupV2
- TagV2
- TextArea
- TextInput
- ThemeProvider
- Timeline
- TimelineHeader
- TimelineLabel
- TimelineNode
- TimelineShowMore
- TimelineSubstep
- Tooltip
- TooltipV2
- TopbarV2
- TruncatedTextWithTooltipV2
- UnitInput
- Upload
- VirtualList

## ⚪ Loosely typed (widened to `string`)

These resolved to a real but complex type and were widened to `string` (they compile and work). Grouped by type so you can review each pattern once — confirm `string` is acceptable, or it may deserve a tighter mapping.

| Resolved TypeScript type | → emitted | count | example props |
|--------------------------|-----------|-------|---------------|
| `ColumnDefinition<T>[]` | `string` | 1 | columns |
| `keyof T` | `string` | 1 | idField |
| `(keyof T)[]` | `string` | 1 | columnManagerAlwaysSelected |

## 🔍 Needs review

A multi-type prop couldn't be auto-discriminated at runtime (e.g. two object shapes), so an `@unboxed` variant won't work and we **refuse to use `%identity`/unsafe casts**. The prop is emitted as a `string` placeholder with an inline `// ⚠️ REVIEW` comment — bind it by hand or fix the type upstream.

### TextInputV2

| Prop | Real TypeScript |
|------|-----------------|
| `dropdown` | `dropdown?: TextInputV2Dropdown \| TextInputV2Dropdown[];` |

## 🛑 Broken — needs serious component change

These props resolved to `unknown`/`any` (usually a generic `T`). They're emitted as a placeholder so the file still compiles, but **the props will not work as typed** — they need a concrete type upstream, or generic-binding support.

_(none)_ 🎉

