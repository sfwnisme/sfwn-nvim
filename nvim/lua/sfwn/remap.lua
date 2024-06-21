-- this file remapping the keybindings
-- "n" => normal mode
-- "<leader>" space bar
-- "<leader>pv" => space + p + v
-- vim.cmd.Ex => 
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- not working
vim.keymap.set("n", "<leader>pv", function()
	vim.api.nvim_command("Ex")
end)

