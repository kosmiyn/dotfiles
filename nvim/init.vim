call plug#begin()

" List your plugins here
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'windwp/nvim-autopairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xiyaowong/transparent.nvim'
Plug 'OXY2DEV/helpview.nvim'
call plug#end()

colorscheme catppuccin-mocha

let g:airline_powerline_fonts = 1
autocmd VimEnter * AirlineTheme catppuccin

autocmd VimEnter * TransparentEnable

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
let NERDTreeShowHidden=1

highlight CocSnippetPlaceholder guifg=#CBA6F7 guibg=#1E1E2E
highlight CocSnippetVisual guifg=#F5E0DC guibg=#6E6C7E
highlight CocMenuSel guifg=#1E1E2E guibg=#CBA6F7
highlight CocPum guifg=#F2CDCD guibg=#302D41

lua << EOF
require("nvim-autopairs").setup {}
EOF

