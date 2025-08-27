local opts = { noremap = true, silent = true }

-- General
vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("v", "<", "<gv", opts)

-- Buffers
vim.keymap.set("n", "<leader>bn", "<cmd> enew <CR>", { desc = "New buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "H", ":bprev<CR>", opts)
vim.keymap.set("n", "L", ":bnext<CR>", opts)

-- Telescope
-- local builtin = require("telescope.builtin")
-- vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' }, opts)
-- vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' }, opts)
-- vim.keymap.set('n', '<leader>,', builtin.buffers, { desc = 'Telescope buffers' }, opts)
-- vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' }, opts)

vim.keymap.set("n", "<leader>fj", ":Telescope file_browser<CR>", opts)
vim.keymap.set("n", "<leader>fk", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)

-- UI
vim.keymap.set("n", "<leader>uw", "<cmd>set wrap!<CR>", { desc = "Set text wrap" })
vim.keymap.set("n", "<leader>ug", "<cmd>GitBlameToggle<CR>", { desc = "Toggle git blame" })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", opts)

-- Code
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "LSP: Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code Action" })

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-n>", "<C-\\>")
