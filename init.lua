-- Set leader key to space
vim.g.mapleader = " "

-- Load plugins
require("plugins")

-- Basic settings
vim.opt.number = true  -- Show line numbers
vim.opt.relativenumber = true  -- Relative line numbers
vim.opt.expandtab = true  -- Use spaces instead of tabs
vim.opt.shiftwidth = 4  -- Indentation width
vim.opt.tabstop = 4  -- Tab width

-- Keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true })  -- Save
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })  -- Quit

-- Plugin configuration

-- solarized
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd("colorscheme solarized")

-- treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = { "go", "lua" },
    highlight = { enable = true },  -- Enable syntax highlighting
    indent = { enable = true },  -- Enable indentation support
})

-- gopls
local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
})

-- nvim tree
require("nvim-tree").setup({
    view = {
        width = 30,  -- Set tree width
        side = "left",  -- Show on the left
    },
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
            },
        },
    },
    update_focused_file = {
        enable = true,  -- Auto-highlight the file you're editing
    },
})
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
