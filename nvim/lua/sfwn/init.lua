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

-- configuration for error-lens
local error_lens_config ={
	{
		-- this setting tries to auto adjust the colors
		-- based on the diagnostic-highlight groups and your
		-- theme background color with a color blender
		enabled = true,
		auto_adjust = {
			enable = false,
			fallback_bg_color = nil, -- mandatory if enable true (e.g. #281478)
			step = 7, -- inc: colors should be brighter/darker
			total = 30 -- steps of blender
		},
		prefix = 4, -- distance code <-> diagnostic message
		-- default colors
		colors = {
			error_fg = "#FF6363", -- diagnostic font color
			error_bg = "#4B252C", -- diagnostic line color
			warn_fg = "#FA973A",
			warn_bg = "#403733",
			info_fg = "#5B38E8",
			info_bg = "#281478",
			hint_fg = "#25E64B",
			hint_bg = "#147828"
		}
	} 
}

-- Use the error-lens plugin and pass the configuration
require("error-lens").setup(error_lens_config)


-- configuration for auto-save.nvim
local auto_save_config = {
	{
		enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
		execution_message = {
			message = function() -- message to print on save
				return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
			end,
			dim = 0.18, -- dim the color of `message`
			cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
		},
		trigger_events = {"InsertLeave", "TextChanged"}, -- vim events that trigger auto-save. See :h events
		-- function that determines whether to save the current buffer or not
		-- return true: if buffer is ok to be saved
		-- return false: if it's not ok to be saved
		condition = function(buf)
			local fn = vim.fn
			local utils = require("auto-save.utils.data")

			if
				fn.getbufvar(buf, "&modifiable") == 1 and
				utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
				return true -- met condition(s), can save
			end
			return false -- can't save
		end,
		write_all_buffers = false, -- write all buffers when the current one meets `condition`
		debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
		callbacks = { -- functions to be executed at different intervals
			enabling = nil, -- ran when enabling auto-save
			disabling = nil, -- ran when disabling auto-save
			before_asserting_save = nil, -- ran before checking `condition`
			before_saving = nil, -- ran before doing the actual save
			after_saving = nil -- ran after doing the actual save
		}
	}
}
-- Use the auto-save plugin and pass the configuration
require("auto-save").setup(auto_save_config)




