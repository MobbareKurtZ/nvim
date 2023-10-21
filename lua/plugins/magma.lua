vim.cmd([[
let g:magma_image_provider = "ueberzugpp"
let g:magma_automatically_open_output = v:false
]])

return {
  "dccsillag/magma-nvim",
  build = ":UpdateRemotePlugin",
}
