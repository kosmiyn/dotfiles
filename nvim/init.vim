call plug#begin()

" List your plugins here
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'windwp/nvim-autopairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme catppuccin-mocha

let g:airline_powerline_fonts = 1
autocmd VimEnter * AirlineTheme catppuccin

lua << EOF
require("nvim-autopairs").setup {}
EOF


