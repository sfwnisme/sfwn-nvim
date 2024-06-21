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
end)
