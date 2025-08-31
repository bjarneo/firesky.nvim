-- Firesky colorscheme entry point
-- This file enables traditional colorscheme loading via `vim.cmd.colorscheme "firesky"`

-- Set colorscheme name
vim.g.colors_name = "firesky"

-- Try to load the modular system first
local ok, firesky = pcall(require, "firesky")
if ok then
	-- Use the modular system with default configuration
	firesky.setup()
	firesky.load()
else
	-- Fallback: basic error handling if modular system fails
	vim.notify("Failed to load firesky modular system", vim.log.levels.ERROR)
end