return {
  {
    "EthanJWright/vs-tasks.nvim",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>ta", "<cmd>lua require('telescope').extensions.vstask.tasks()<CR>", desc = "Open tasklist" },
      { "<leader>ti", "<cmd>lua require('telescope').extensions.vstask.inputs()<CR>", desc = "Open inputs" },
      { "<leader>th", "<cmd>lua require('telescope').extensions.vstask.history()<CR>", desc = "Open history" },
      { "<leader>tc", "<cmd>lua require('telescope').extensions.vstask.close()<CR>", desc = "Close taskrunner" },
    },
  },
}
