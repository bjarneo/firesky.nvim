local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Comment.nvim highlights for commented text
	hl("CommentLine", { fg = colors.comment, italic = true })
	hl("CommentBlock", { fg = colors.comment, italic = true })
	
	-- Comment.nvim motion highlights
	hl("CommentMotion", { fg = colors.comment, italic = true })
	
	-- Comment.nvim preview highlights
	hl("CommentPreview", { fg = colors.comment_alt, italic = true })
	
	-- Comment.nvim toggle indicators
	hl("CommentToggle", { fg = colors.info })
	hl("CommentToggled", { fg = colors.comment, italic = true })
	
	-- Comment.nvim operators
	hl("CommentOperator", { fg = colors.operator })
	hl("CommentOperatorLine", { fg = colors.operator })
	hl("CommentOperatorBlock", { fg = colors.operator })
	
	-- Comment.nvim visual mode
	hl("CommentVisual", { fg = colors.comment, italic = true, bg = colors.bg_highlight })
	
	-- Comment.nvim todo-comments integration
	hl("CommentTodo", { fg = colors.info, bold = true })
	hl("CommentNote", { fg = colors.hint, bold = true })
	hl("CommentFix", { fg = colors.warning, bold = true })
	hl("CommentFixme", { fg = colors.warning, bold = true })
	hl("CommentHack", { fg = colors.error, bold = true })
	hl("CommentWarn", { fg = colors.warning, bold = true })
	hl("CommentPerf", { fg = colors.type, bold = true })
	hl("CommentTest", { fg = colors.func, bold = true })
	
	-- Comment.nvim contextual highlighting
	hl("CommentContext", { fg = colors.comment_alt, italic = true })
	hl("CommentContextCurrent", { fg = colors.fg, bold = true })
	
	-- Comment.nvim delimiter highlighting
	hl("CommentDelimiter", { fg = colors.punctuation })
	hl("CommentDelimiterLine", { fg = colors.punctuation })
	hl("CommentDelimiterBlock", { fg = colors.punctuation })
	
	-- Comment.nvim special characters in comments
	hl("CommentSpecial", { fg = colors.string_escape, italic = true })
	hl("CommentUrl", { fg = colors.info, underline = true })
	hl("CommentEmail", { fg = colors.info, underline = true })
	
	-- Comment.nvim code blocks in comments
	hl("CommentCode", { fg = colors.string, italic = false })
	hl("CommentCodeBlock", { fg = colors.string, bg = colors.bg_alt })
end

return M