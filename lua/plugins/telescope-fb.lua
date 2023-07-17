return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = true,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>fj",
        "<cmd>Telescope file_browser theme=ivy<CR>",
        desc = "Telescope file browser (root)",
      },
      {
        "<leader>fk",
        "<cmd>Telescope file_browser path=%:p:h select_buffer=true theme=ivy<CR>",
        desc = "Telescope file browser (curr buff)",
      },
    },
  },
}
