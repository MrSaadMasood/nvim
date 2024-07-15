-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
function Copy_relative_path()
  local relative_path = vim.fn.expand("%")
  vim.fn.setreg("+", relative_path)
end
function Copy_absolue_path()
  local absolute_path = vim.fn.expand("%:p")
  vim.fn.setreg("+", absolute_path)
end

-- yank absolute and relative paths
vim.api.nvim_set_keymap(
  "n",
  "<leader>jr",
  ":lua Copy_relative_path()<CR>",
  { noremap = true, silent = true, desc = "copy relative path" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ja",
  ":lua Copy_absolue_path()<CR>",
  { noremap = true, silent = true, desc = "copy absolute path" }
)

-- oil.nvim keymap
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

vim.api.nvim_set_keymap("i", "<C-m>", "<Esc>", { noremap = true, silent = true })
