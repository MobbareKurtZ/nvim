-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.g.mapleader = " "

local km = vim.keymap

-- general
km.set("i", "jk", "<ESC>")
-- km.set("i", "kj", "<ESC>")
km.set("n", "<leader>nh", ":nohl<CR>")
km.set("n", "x", '"_x')
km.set("n", "<leader>+", "<C-a>")
km.set("n", "<leader>-", "<C-x>")
km.set("t", "<ESC>", "<C-\\><C-n>")

km.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
km.set("n", "<leader>ws", "<C-W>s", { desc = "Split window below" })
km.set("n", "<leader>wv", "<C-W>v", { desc = "Split window right" })

-- moving
km.set("n", "å", "{")
km.set("n", "ä", "}")

-- plugins
km.set("n", "<leader>e", ":Neotree toggle<CR>")
km.set("n", "<leader>fe", ":Neotree focus<CR>")

km.set("n", "<leader>oc", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })
km.set({ "n", "v" }, "<leader>oe", "<cmd>ChatGPTEditWithInstruction<CR>", { desc = "Edit with instruction" })
km.set({ "n", "v" }, "<leader>og", "<cmd>ChatGPTRun grammar_correction<CR>", { desc = "Grammar Correction" })
km.set({ "n", "v" }, "<leader>ot", "<cmd>ChatGPTRun translate<CR>", { desc = "Translate" })
km.set({ "n", "v" }, "<leader>ok", "<cmd>ChatGPTRun keywords<CR>", { desc = "Keywords" })
km.set({ "n", "v" }, "<leader>od", "<cmd>ChatGPTRun docstring<CR>", { desc = "Docstring" })
km.set({ "n", "v" }, "<leader>oa", "<cmd>ChatGPTRun add_tests<CR>", { desc = "Add Tests" })
km.set({ "n", "v" }, "<leader>oo", "<cmd>ChatGPTRun optimize_code<CR>", { desc = "Optimize Code" })
km.set({ "n", "v" }, "<leader>os", "<cmd>ChatGPTRun summarize<CR>", { desc = "Summarize" })
km.set({ "n", "v" }, "<leader>of", "<cmd>ChatGPTRun fix_bugs<CR>", { desc = "Fix Bugs" })
km.set({ "n", "v" }, "<leader>ox", "<cmd>ChatGPTRun explain_code<CR>", { desc = "Explain Code" })
km.set({ "n", "v" }, "<leader>oz", "<cmd>ChatGPTRun complete_code<CR>", { desc = "Complete Code" })
km.set({ "n", "v" }, "<leader>or", "<cmd>ChatGPTRun roxygen_edit<CR>", { desc = "Roxygen Edit" })
