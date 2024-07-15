return {
  "L3MON4D3/LuaSnip",
  build = (not LazyVim.is_win())
      and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
    or nil,
  config = function(_, opts)
    if opts then
      require("luasnip").config.setup(opts)
    end
    vim.tbl_map(function(type)
      require("luasnip.loaders.from_" .. type).lazy_load()
    end, { "vscode", "snipmate", "lua" })
    require("luasnip").filetype_extend("typescript", { "javascript" })
    require("luasnip").filetype_extend("typescriptreact", { "javascript" })
  end,
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    {
      "nvim-cmp",
      dependencies = {
        "saadparwaiz1/cmp_luasnip",
      },
      opts = function(_, opts)
        opts.snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        }
        table.insert(opts.sources, { name = "luasnip" })
      end,
    },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
}
