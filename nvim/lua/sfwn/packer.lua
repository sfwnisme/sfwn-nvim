-- package: packer.nvim is a package manager for neovim
-- src: https://github.com/wbthomason/packer.nvim
-- file dir: '/home/sfwn/.local/share/nvim/site/pack/packer/start/packer.nvim'
-- excute: run :so then :PackerSync after adding any plugin

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- plugin: telescope.nvim
	-- function: file, filter and preview manager
	-- src: https://github.com/nvim-telescope/telescope.nvim
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--themes start------------------
	
	-- plugin: cyberdream.nvim
	-- function: color scheme
	-- src:https://github.com/scottmckendry/cyberdream.nvim
	use { "scottmckendry/cyberdream.nvim" }

	-- plugin: vscode.nvim
	-- function: color scheme
	-- src: https://github.com/Mofiqul/vscode.nvim
	-- note: the color usage ~/.config/nvim/sfwn/init.lua
	use 'Mofiqul/vscode.nvim'
	
	-- plugin: catppuccino.nvim
	-- function: color scheme
	-- src: https://github.com/catppuccin/nvim
	--note: the color usage ~/.config/nvim/plugin/themes.lua
	use { "catppuccin/nvim", as = "catppuccin" }
	
	--themes end------------------
	
	-- plugin: nvim-treesitter
	-- function: syntax highlighting
	-- src: https://github.com/nvim-treesitter/nvim-treesitter

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- plugin: nvim-treesitter-textobjects
	-- function: text objects
	-- src: https://github.com/nvim-treesitter/playground
	use ('nvim-treesitter/playground')

	-- plugin: nvim-treesitter-angular
	-- function: angular syntax highlighting
	-- src: https://github.com/nvim-treesitter/nvim-treesitter-angular
	use ('nvim-treesitter/nvim-treesitter-angular')

	-- plugin: harpoon
	-- function: bookmark manager
	-- src: https://github.com/ThePrimeagen/harpoon
	use ('ThePrimeagen/harpoon')

	-- plugin: undotree for nvim
	-- function: undo history visualizer
	-- src: https://github.com/mbbill/undotree
	use('mbbill/undotree')

	-- plugin: vim-fugitive
	-- function: git wrapper and git history visualizer
	-- src: https://github.com/tpope/vim-fugitive'
	use('tpope/vim-fugitive')

	-- lsp-zero.nvim
	-- function: lsp client
	-- src:
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	-- plugin: error-lens.nvim
	-- function: highlight the line with error-lens
	-- src: https://github.com/chikko80/error-lens.nvim
	use {
		'chikko80/error-lens.nvim',
		requires = {'nvim-telescope/telescope.nvim'}
	}
	-- plugin: auto-save.nvim
	-- function: auto save without typing :w
	-- src: https://github.com/pocco81/auto-save.nvim
	use({
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup {
				-- your config goes here
				-- or just leave it empty :)
			}
		end,
	})
end)

