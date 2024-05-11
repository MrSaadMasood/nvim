return {
  "chrishrb/gx.nvim",
  keys = { { "xl", "<cmd>Browse<cr>", mode = { "n", "x" } } },
  cmd = { "Browse" },
  init = function()
    vim.g.netrw_nogx = 1 -- disable netrw gx
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = true, -- default settings
  submodules = false, --
}
