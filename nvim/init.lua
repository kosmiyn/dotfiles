-- Load plugin configurations
require('plugins')

-- Set colorscheme
vim.cmd('colorscheme catppuccin-mocha')

-- Enable airline powerline fonts
vim.g.airline_powerline_fonts = 1

-- Set airline theme on VimEnter
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd('AirlineTheme catppuccin')
    end
})

-- Load vim-css-color
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd("PackerCompile")
    end,
})

-- Enable transparency on VimEnter
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.defer_fn(function() vim.cmd('TransparentEnable') end, 100)
    end
})

-- Open NERDTree on VimEnter and handle quitting logic
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd('NERDTree | wincmd p')
    end
})

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        if vim.fn.tabpagenr('$') == 1 and vim.fn.winnr('$') == 1 and vim.b.NERDTree and vim.b.NERDTree.isTabTree then
            vim.fn.feedkeys(":quit\n:<BS>")
        end
    end
})

-- Show hidden files in NERDTree
vim.g.NERDTreeShowHidden = 1

--configure nvim-autopairs
require("nvim-autopairs").setup {}

-- Configure nvim-cmp
local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'luasnip' },
    },
    -- Add additional options if necessary
    formatting = {
        format = function(entry, item)
            item.menu = ({
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
                luasnip = "[Snippet]",
            })[entry.source.name]
            return item
        end,
    },
})

-- Setup LSP capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true

-- Configure LSP servers
require('lspconfig').pyright.setup({
    capabilities = capabilities
})
