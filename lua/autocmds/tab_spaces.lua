-- Set 4-space tabs for C++ files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp", "c", "h" },
	callback = function()
		vim.opt_local.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
		vim.opt_local.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
		vim.opt_local.expandtab = true -- Use spaces instead of tabs
	end,
})
