return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",

  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/plugins/luasnip/" })
    end,
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  keys = {
    {
      "n",
      "<Leader>nl",
      '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/plugins/luasnip/"})<CR>',
    },
  },
}
