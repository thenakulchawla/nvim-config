-- Set leader key to space
vim.g.mapleader = " "

-- Basic settings
vim.opt.number = true  -- Show line numbers
vim.opt.relativenumber = true  -- Relative line numbers
vim.opt.expandtab = true  -- Use spaces instead of tabs
vim.opt.shiftwidth = 4  -- Indentation width
vim.opt.tabstop = 4  -- Tab width

-- Keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true })  -- Save
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })  -- Quit
