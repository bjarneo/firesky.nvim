local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Mini.nvim general highlights
	hl("MiniCursorword", { bg = colors.bg_highlight })
	hl("MiniCursorwordCurrent", { bg = colors.bg_highlight })
	
	-- Mini.ai text objects
	hl("MiniAiTextObject", { bg = colors.bg_highlight })
	hl("MiniAiTextObjectNext", { fg = colors.info, bg = colors.bg_highlight })
	hl("MiniAiTextObjectLast", { fg = colors.warning, bg = colors.bg_highlight })
	
	-- Mini.animate
	hl("MiniAnimateNormalFloat", { fg = colors.fg, bg = colors.bg_alt })
	hl("MiniAnimateFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("MiniAnimateCursor", { fg = colors.bg, bg = colors.cursor })
	
	-- Mini.bufremove
	hl("MiniBufremove", { fg = colors.warning })
	hl("MiniBufremoveDeleted", { fg = colors.error, strikethrough = true })
	
	-- Mini.clue
	hl("MiniClueTitle", { fg = colors.keyword, bold = true })
	hl("MiniClueDescGroup", { fg = colors.type })
	hl("MiniClueDescSingle", { fg = colors.fg })
	hl("MiniClueNextKey", { fg = colors.cursor, bold = true })
	hl("MiniClueNextKeyWithPostkeys", { fg = colors.warning, bold = true })
	hl("MiniClueSeparator", { fg = colors.border })
	hl("MiniClueChar", { fg = colors.info })
	
	-- Mini.comment
	hl("MiniComment", { fg = colors.comment, italic = true })
	
	-- Mini.completion
	hl("MiniCompletionActiveParameter", { fg = colors.cursor, bg = colors.bg_highlight })
	
	-- Mini.deps
	hl("MiniDepsChangeAdded", { fg = colors.git_add })
	hl("MiniDepsChangeRemoved", { fg = colors.git_delete })
	hl("MiniDepsHint", { fg = colors.hint })
	hl("MiniDepsInfo", { fg = colors.info })
	hl("MiniDepsPlaceholder", { fg = colors.comment })
	hl("MiniDepsTitle", { fg = colors.keyword, bold = true })
	hl("MiniDepsTitleError", { fg = colors.error, bold = true })
	hl("MiniDepsTitleSame", { fg = colors.warning, bold = true })
	hl("MiniDepsTitleUpdate", { fg = colors.git_change, bold = true })
	
	-- Mini.diff
	hl("MiniDiffSignAdd", { fg = colors.git_add })
	hl("MiniDiffSignChange", { fg = colors.git_change })
	hl("MiniDiffSignDelete", { fg = colors.git_delete })
	hl("MiniDiffOverAdd", { fg = colors.bg, bg = colors.git_add })
	hl("MiniDiffOverChange", { fg = colors.bg, bg = colors.git_change })
	hl("MiniDiffOverContext", { fg = colors.fg, bg = colors.bg_alt })
	hl("MiniDiffOverDelete", { fg = colors.bg, bg = colors.git_delete })
	
	-- Mini.files
	hl("MiniFilesBorder", { fg = colors.border })
	hl("MiniFilesBorderModified", { fg = colors.git_change })
	hl("MiniFilesCursorLine", { bg = colors.bg_highlight })
	hl("MiniFilesDirectory", { fg = colors.info, bold = true })
	hl("MiniFilesFile", { fg = colors.fg })
	hl("MiniFilesNormal", { fg = colors.fg, bg = colors.bg })
	hl("MiniFilesTitle", { fg = colors.keyword, bold = true })
	hl("MiniFilesTitleFocused", { fg = colors.cursor, bold = true })
	
	-- Mini.fuzzy
	hl("MiniFuzzyMatching", { fg = colors.cursor, bold = true })
	
	-- Mini.hipatterns
	hl("MiniHipatternsFixme", { fg = colors.bg, bg = colors.error, bold = true })
	hl("MiniHipatternsHack", { fg = colors.bg, bg = colors.warning, bold = true })
	hl("MiniHipatternsNote", { fg = colors.bg, bg = colors.info, bold = true })
	hl("MiniHipatternsTodo", { fg = colors.bg, bg = colors.hint, bold = true })
	
	-- Mini.indentscope
	hl("MiniIndentscopeSymbol", { fg = colors.border })
	hl("MiniIndentscopePrefix", { nocombine = true })
	
	-- Mini.jump
	hl("MiniJump", { fg = colors.bg, bg = colors.cursor, bold = true })
	
	-- Mini.jump2d
	hl("MiniJump2dSpot", { fg = colors.bg, bg = colors.cursor, bold = true })
	hl("MiniJump2dSpotAhead", { fg = colors.bg, bg = colors.hint, bold = true })
	hl("MiniJump2dSpotUnique", { fg = colors.bg, bg = colors.operator, bold = true })
	hl("MiniJump2dDim", { fg = colors.comment })
	
	-- Mini.map
	hl("MiniMapNormal", { fg = colors.fg, bg = colors.bg_alt })
	hl("MiniMapSymbolCount", { fg = colors.number })
	hl("MiniMapSymbolLine", { fg = colors.info })
	hl("MiniMapSymbolView", { fg = colors.cursor, bg = colors.bg_highlight })
	
	-- Mini.notify
	hl("MiniNotifyBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("MiniNotifyNormal", { fg = colors.fg, bg = colors.bg_alt })
	hl("MiniNotifyTitle", { fg = colors.keyword, bold = true })
	
	-- Mini.operators
	hl("MiniOperatorsExchangeFrom", { bg = colors.bg_highlight })
	
	-- Mini.pairs
	hl("MiniPairs", { fg = colors.operator })
	
	-- Mini.pick
	hl("MiniPickBorder", { fg = colors.border })
	hl("MiniPickBorderBusy", { fg = colors.warning })
	hl("MiniPickBorderText", { fg = colors.info })
	hl("MiniPickIconDirectory", { fg = colors.info })
	hl("MiniPickIconFile", { fg = colors.fg })
	hl("MiniPickHeader", { fg = colors.keyword, bold = true })
	hl("MiniPickMatchCurrent", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("MiniPickMatchMarked", { fg = colors.warning, bg = colors.bg_highlight })
	hl("MiniPickMatchRanges", { fg = colors.cursor, bold = true })
	hl("MiniPickNormal", { fg = colors.fg, bg = colors.bg })
	hl("MiniPickPreviewLine", { bg = colors.bg_highlight })
	hl("MiniPickPreviewRegion", { bg = colors.bg_alt })
	hl("MiniPickPrompt", { fg = colors.func, bold = true })
	
	-- Mini.starter
	hl("MiniStarterCurrent", { bg = colors.bg_highlight, nocombine = true })
	hl("MiniStarterFooter", { fg = colors.comment, italic = true })
	hl("MiniStarterHeader", { fg = colors.keyword, bold = true })
	hl("MiniStarterInactive", { fg = colors.comment })
	hl("MiniStarterItem", { fg = colors.fg })
	hl("MiniStarterItemBullet", { fg = colors.operator })
	hl("MiniStarterItemPrefix", { fg = colors.warning })
	hl("MiniStarterSection", { fg = colors.type, bold = true })
	hl("MiniStarterQuery", { fg = colors.cursor })
	
	-- Mini.statusline
	hl("MiniStatuslineDevinfo", { fg = colors.info, bg = colors.bg_alt })
	hl("MiniStatuslineFileinfo", { fg = colors.fg, bg = colors.bg_alt })
	hl("MiniStatuslineFilename", { fg = colors.func, bg = colors.bg })
	hl("MiniStatuslineInactive", { fg = colors.comment, bg = colors.bg })
	hl("MiniStatuslineModeCommand", { fg = colors.bg, bg = colors.warning, bold = true })
	hl("MiniStatuslineModeInsert", { fg = colors.bg, bg = colors.git_add, bold = true })
	hl("MiniStatuslineModeNormal", { fg = colors.bg, bg = colors.info, bold = true })
	hl("MiniStatuslineModeOther", { fg = colors.bg, bg = colors.hint, bold = true })
	hl("MiniStatuslineModeReplace", { fg = colors.bg, bg = colors.error, bold = true })
	hl("MiniStatuslineModeVisual", { fg = colors.bg, bg = colors.type, bold = true })
	
	-- Mini.surround
	hl("MiniSurround", { bg = colors.bg_highlight })
	
	-- Mini.tabline
	hl("MiniTablineCurrent", { fg = colors.fg, bg = colors.bg, bold = true })
	hl("MiniTablineFill", { bg = colors.bg })
	hl("MiniTablineHidden", { fg = colors.comment, bg = colors.bg_alt })
	hl("MiniTablineModifiedCurrent", { fg = colors.warning, bg = colors.bg, bold = true })
	hl("MiniTablineModifiedHidden", { fg = colors.warning, bg = colors.bg_alt })
	hl("MiniTablineModifiedVisible", { fg = colors.warning, bg = colors.bg_alt })
	hl("MiniTablineTabpagesection", { fg = colors.bg, bg = colors.info, bold = true })
	hl("MiniTablineVisible", { fg = colors.fg, bg = colors.bg_alt })
	
	-- Mini.test
	hl("MiniTestEmphasis", { bold = true })
	hl("MiniTestFail", { fg = colors.error, bold = true })
	hl("MiniTestPass", { fg = colors.git_add, bold = true })
	
	-- Mini.trailspace
	hl("MiniTrailspace", { bg = colors.error })
end

return M