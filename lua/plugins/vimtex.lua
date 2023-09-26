vim.cmd([[
filetype plugin indent on
syntax enable
let g:vimtex_view_method = 'zathura'
set conceallevel=1
let g:tex_conceal='abdmg'
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
