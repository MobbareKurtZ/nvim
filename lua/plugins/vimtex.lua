vim.cmd([[
filetype plugin indent on
syntax enable
let g:vimtex_view_method = 'zathura'
let g:vimtex_syntax_conceal_disable = 1
let g:tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n"
let g:Tex_IgnoreLevel = 8
let g:vimtex_quickfix_open_on_warning = 0
]])

return {
  {
    "lervag/vimtex",
    keys = {
      { "<leader>cl", "<cmd>VimtexCompile<cr>", desc = "Compile latex document" },
    },
    ft = "tex",
  },
}
