-- Global toggle for autoformat
vim.g.autoformat = true

-- Function to toggle and show status
local function toggle_autoformat()
	vim.g.autoformat = not vim.g.autoformat
	print("Autoformat on save: " .. (vim.g.autoformat and "Enabled" or "Disabled"))
end

vim.keymap.set("n", "<leader>uf", toggle_autoformat, { desc = "Toggle autoformat on save" })
