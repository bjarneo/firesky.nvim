local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Flash.nvim main labels
	hl("FlashLabel", { fg = colors.bg, bg = colors.cursor, bold = true })
	hl("FlashMatch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("FlashCurrent", { fg = colors.bg, bg = colors.warning, bold = true })
	
	-- Flash.nvim prompt and input
	hl("FlashPrompt", { fg = colors.keyword, bold = true })
	hl("FlashPromptIcon", { fg = colors.info })
	hl("FlashCursor", { fg = colors.bg, bg = colors.cursor })
	
	-- Flash.nvim search patterns
	hl("FlashChar", { fg = colors.cursor, bold = true })
	hl("FlashWord", { fg = colors.func, underline = true })
	hl("FlashLine", { bg = colors.bg_highlight })
	
	-- Flash.nvim backdrop (dimmed text)
	hl("FlashBackdrop", { fg = colors.comment })
	
	-- Flash.nvim treesitter integration
	hl("FlashTreesitter", { fg = colors.bg, bg = colors.string_escape, bold = true })
	hl("FlashTreesitterMatch", { fg = colors.string_escape, bg = colors.bg_highlight })
	
	-- Flash.nvim remote operation
	hl("FlashRemote", { fg = colors.bg, bg = colors.hint, bold = true })
	hl("FlashRemoteMatch", { fg = colors.hint, bg = colors.bg_highlight })
	
	-- Flash.nvim continue indicator
	hl("FlashContinue", { fg = colors.warning, italic = true })
	
	-- Flash.nvim jump modes
	hl("FlashJump", { fg = colors.bg, bg = colors.operator, bold = true })
	hl("FlashJumpMatch", { fg = colors.operator, bg = colors.bg_highlight })
	
	-- Flash.nvim search modes
	hl("FlashSearch", { fg = colors.bg, bg = colors.func, bold = true })
	hl("FlashSearchMatch", { fg = colors.func, bg = colors.bg_highlight })
	
	-- Flash.nvim select mode
	hl("FlashSelect", { fg = colors.bg, bg = colors.type, bold = true })
	hl("FlashSelectMatch", { fg = colors.type, bg = colors.bg_highlight })
	
	-- Flash.nvim visual mode
	hl("FlashVisual", { fg = colors.fg, bg = colors.selection_background })
	hl("FlashVisualMatch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	
	-- Flash.nvim yank integration
	hl("FlashYank", { fg = colors.bg, bg = colors.string, bold = true })
	hl("FlashYankMatch", { fg = colors.string, bg = colors.bg_highlight })
	
	-- Flash.nvim error states
	hl("FlashError", { fg = colors.error, bold = true })
	hl("FlashErrorMatch", { fg = colors.bg, bg = colors.error })
	
	-- Flash.nvim multi-window
	hl("FlashMultiWindow", { fg = colors.bg, bg = colors.bright_cyan, bold = true })
	hl("FlashMultiWindowMatch", { fg = colors.bright_cyan, bg = colors.bg_highlight })
	
	-- Flash.nvim incremental search
	hl("FlashIncSearch", { fg = colors.bg, bg = colors.bright_yellow, bold = true })
	hl("FlashIncSearchMatch", { fg = colors.bright_yellow, bg = colors.bg_highlight })
	
	-- Flash.nvim substitute preview
	hl("FlashSubstitute", { fg = colors.bg, bg = colors.git_change, bold = true })
	hl("FlashSubstituteMatch", { fg = colors.git_change, bg = colors.bg_highlight })
	
	-- Flash.nvim diagnostics integration
	hl("FlashDiagnostic", { fg = colors.bg, bg = colors.info, bold = true })
	hl("FlashDiagnosticMatch", { fg = colors.info, bg = colors.bg_highlight })
	
	-- Flash.nvim fold integration
	hl("FlashFold", { fg = colors.comment, italic = true })
	hl("FlashFoldMatch", { fg = colors.bg, bg = colors.comment })
end

return M