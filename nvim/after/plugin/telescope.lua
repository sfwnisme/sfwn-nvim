-- telescope.nvim is a folder, finder, and filter manager
-- src => https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file
-- #usage/ Using Lua:
local builtin = require('telescope.builtin')
-- the keymaps for telescope function
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
