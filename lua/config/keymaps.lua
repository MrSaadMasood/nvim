-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- vim.keymap.set("n", "<C-h", ":TmuxNavigateLeft<CR>", { silent = true })
-- vim.keymap.set("n", "<C-j", ":TmuxNavigateDown<CR>", { silent = true })
-- vim.keymap.set("n", "<C-k", ":TmuxNavigateUp<CR>", { silent = true })
-- vim.keymap.set("n", "<C-l", ":TmuxNavigateRight<CR>", { silent = true })
--
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { silent = true })

vim.api.nvim_set_keymap("i", "<C-n>", "<Esc>", { noremap = true, silent = true })
