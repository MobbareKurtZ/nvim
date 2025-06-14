return {
  "L3MON4D3/LuaSnip",
  lazy = true,
  build = (not LazyVim.is_win())
      and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
    or nil,
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
      end,
    },
    { "evesdropper/luasnip-latex-snippets.nvim" },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  config = function()
    -- require("luasnip.loaders.from_snipmate").lazy_load({ paths = "~/.config/nvim/snippets" })
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })
  end,
}
