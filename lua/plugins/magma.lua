vim.cmd([[
let g:magma_automatically_open_output = v:false
]])
-- let g:magma_image_provider = "ueberzug"

return {
  "dccsillag/magma-nvim",
  build = ":UpdateRemotePlugin",
}