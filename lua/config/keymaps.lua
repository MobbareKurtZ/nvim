-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.g.mapleader = " "

local km = vim.keymap

-- general
km.set("i", "jk", "<ESC>")
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
km.set("n", "<leader>lc", "<cmd>VimtexCompile<cr>")
