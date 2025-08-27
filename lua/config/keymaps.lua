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
local diag = require("tiny-inline-diagnostic")
vim.keymap.set("n", "<leader>uw", "<cmd>set wrap!<CR>", { desc = "Set text wrap" })
vim.keymap.set("n", "<leader>ug", "<cmd>GitBlameToggle<CR>", { desc = "Toggle git blame" })
vim.keymap.set("n", "<leader>ud", function()
	require("tiny-inline-diagnostic").toggle()
end, { desc = "Toggle Inline Diagnostics" })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", opts)

-- Code
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "LSP: Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code Action" })

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-n>", "<C-\\>")

-- Windows
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
vim.keymap.set("n", "<leader>ws", "<C-W>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>wv", "<C-W>v", { desc = "Split window right" })
vim.keymap.set("n", "<C-h>", "<C-W>h", { desc = "Move window left" })
vim.keymap.set("n", "<C-j>", "<C-W>j", { desc = "Move window down" })
vim.keymap.set("n", "<C-k>", "<C-W>k", { desc = "Move window up" })
vim.keymap.set("n", "<C-l>", "<C-W>l", { desc = "Move window right" })

vim.keymap.set("n", "<C-Right>", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "<C-Left>", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "<C-Up>", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "<C-Down>", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- moving
vim.keymap.set("n", "å", "{")
vim.keymap.set("n", "ä", "}")
