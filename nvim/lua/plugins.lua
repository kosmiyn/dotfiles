-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use "windwp/nvim-autopairs"
  use 'vim-airline/vim-airline'
  use 'ap/vim-css-color'
  use 'xiyaowong/transparent.nvim'
  use 'ryanoasis/vim-devicons'
  use 'preservim/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'   
  use 'hrsh7th/cmp-path'                 
  use 'hrsh7th/cmp-cmdline'    
  use 'neovim/nvim-lspconfig' 
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

end)
