return {
  {
    "nvim-telescope/telescope.nvim",
    pickers = {
      find_files = {
        theme = "ivy",
      },
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        hijack_netrw = true,
      },
    },
    init = function()
      require("telescope").load_extension("file_browser")
    end,
    keys = {
      { "<leader><space>", "<cmd>Telescope find_files theme=ivy<cr>", desc = "Find Files (root dir)" },
      { "<leader>ff", "<cmd>Telescope find_files theme=ivy<cr>", desc = "Find Files (root dir)" },
      { "<leader>fr", "<cmd>Telescope oldfiles theme=ivy<cr>", desc = "Find Files (root dir)" },
      { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true theme=ivy<cr>", desc = "Switch Buffer" },
      { "<leader>fb", "<cmd>Telescope buffers theme=ivy<cr>", desc = "Buffers" },
      { "<leader>sg", "<cmd>Telescope live_grep theme=ivy<cr>", desc = "Grep (root dir)" },
      { "<leader>/", "<cmd>Telescope live_grep theme=ivy<cr>", desc = "Grep (root dir)" },
    },
    opts = {},
  },
}
