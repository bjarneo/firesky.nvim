local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Diffview.nvim file panel
	hl("DiffviewFilePanelTitle", { fg = colors.keyword, bold = true })
	hl("DiffviewFilePanelCounter", { fg = colors.number })
	hl("DiffviewFilePanelFileName", { fg = colors.fg })
	hl("DiffviewFilePanelPath", { fg = colors.comment })
	hl("DiffviewFilePanelInsertions", { fg = colors.git_add })
	hl("DiffviewFilePanelDeletions", { fg = colors.git_delete })
	hl("DiffviewFilePanelRootPath", { fg = colors.info, bold = true })
	hl("DiffviewFilePanelSelected", { fg = colors.cursor, bg = colors.bg_highlight })
	hl("DiffviewFilePanelConflicts", { fg = colors.error, bold = true })
	
	-- Diffview.nvim status symbols
	hl("DiffviewStatusAdded", { fg = colors.git_add })
	hl("DiffviewStatusUntracked", { fg = colors.git_add })
	hl("DiffviewStatusModified", { fg = colors.git_change })
	hl("DiffviewStatusRenamed", { fg = colors.func })
	hl("DiffviewStatusCopied", { fg = colors.hint })
	hl("DiffviewStatusTypeChange", { fg = colors.type })
	hl("DiffviewStatusDeleted", { fg = colors.git_delete })
	hl("DiffviewStatusBroken", { fg = colors.error })
	hl("DiffviewStatusIgnored", { fg = colors.comment })
	hl("DiffviewStatusUnknown", { fg = colors.warning })
	
	-- Diffview.nvim diff highlights
	hl("DiffviewDiffAdd", { bg = colors.git_add, fg = colors.bg })
	hl("DiffviewDiffAddText", { bg = colors.bright_green, fg = colors.bg })
	hl("DiffviewDiffDelete", { bg = colors.git_delete, fg = colors.bg })
	hl("DiffviewDiffDeleteText", { bg = colors.bright_red, fg = colors.bg })
	hl("DiffviewDiffChange", { bg = colors.git_change, fg = colors.bg })
	hl("DiffviewDiffChangeText", { bg = colors.bright_yellow, fg = colors.bg })
	
	-- Diffview.nvim diff context
	hl("DiffviewDiffContext", { fg = colors.fg, bg = colors.bg })
	hl("DiffviewDiffContextHighlight", { fg = colors.fg, bg = colors.bg_alt })
	
	-- Diffview.nvim fold highlights
	hl("DiffviewFolded", { fg = colors.comment, bg = colors.bg_alt, italic = true })
	hl("DiffviewFoldColumn", { fg = colors.comment, bg = colors.bg })
	
	-- Diffview.nvim reference highlights
	hl("DiffviewReference", { fg = colors.keyword, bold = true })
	hl("DiffviewHash", { fg = colors.constant })
	hl("DiffviewCommitAuthor", { fg = colors.property })
	hl("DiffviewCommitDate", { fg = colors.comment })
	hl("DiffviewCommitMessage", { fg = colors.fg })
	hl("DiffviewCommitHash", { fg = colors.constant })
	
	-- Diffview.nvim history panel
	hl("DiffviewHistoryTitle", { fg = colors.keyword, bold = true })
	hl("DiffviewHistoryCounter", { fg = colors.number })
	hl("DiffviewHistoryEntry", { fg = colors.fg })
	hl("DiffviewHistorySelected", { fg = colors.cursor, bg = colors.bg_highlight })
	
	-- Diffview.nvim merge conflicts
	hl("DiffviewMergeConflictOurs", { fg = colors.info, bg = colors.bg })
	hl("DiffviewMergeConflictTheirs", { fg = colors.func, bg = colors.bg })
	hl("DiffviewMergeConflictAncestor", { fg = colors.warning, bg = colors.bg })
	hl("DiffviewMergeConflictResult", { fg = colors.git_add, bg = colors.bg })
	
	-- Diffview.nvim borders and separators
	hl("DiffviewVertSplit", { fg = colors.border })
	hl("DiffviewWinSeparator", { fg = colors.border })
	hl("DiffviewStatusLine", { fg = colors.fg, bg = colors.bg })
	hl("DiffviewStatusLineNC", { fg = colors.comment, bg = colors.bg })
	
	-- Diffview.nvim signs in sign column
	hl("DiffviewSignColumn", { bg = colors.bg })
	hl("DiffviewCursorLine", { bg = colors.bg_highlight })
	
	-- Diffview.nvim special highlights
	hl("DiffviewEndOfBuffer", { fg = colors.bg })
	hl("DiffviewNormal", { fg = colors.fg, bg = colors.bg })
	hl("DiffviewNormalNC", { fg = colors.fg, bg = colors.bg })
end

return M