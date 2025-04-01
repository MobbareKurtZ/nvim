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
let g:vimtex_compiler_latexmk = {
      \ 'build_dir' : '',
      \ 'options' : [
      \   '-pdf',
      \   '-shell-escape',
      \   '-verbose',
      \   '-file-line-error',
      \   '-interaction=nonstopmode',
      \ ],
      \}
]])

return {
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    end,
    keys = {
      { "<localLeader>l", "", desc = "+vimtex", ft = "tex" },
    },
    ft = "tex",
  },
}
