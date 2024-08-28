require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
end)
vim.cmd.colorscheme "catppuccin-mocha"
