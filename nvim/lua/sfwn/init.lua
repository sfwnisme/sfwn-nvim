require("sfwn.remap") -- will automatically get sourced every single time neovim gets opened
print("hello from ./lua/sfwn/init.lua")

-- nvim-tree setup
-- disable netrw at the very start of your init.lua
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
--vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
--require("nvim-tree").setup({
--	sort = {
--		sorter = "case_sensitive",
--	},
--	view = {
--		width = 30,
--	},
--	renderer = {
--		group_empty = true,
--	},
--	filters = {
--		dotfiles = true,
--	},
--})
