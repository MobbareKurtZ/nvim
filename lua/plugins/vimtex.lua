vim.cmd([[
filetype plugin indent on
syntax enable
let g:vimtex_view_method = 'zathura'
let g:vimtex_syntax_conceal_disable = 1
]])

return {
  {
    "lervag/vimtex",
    keys = {
      { "<leader>lc", "<cmd>VimtexCompile<cr>", desc = "Compile latex document" },
    },
    ft = "tex",
  },
}
