return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "black" },
			javascript = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" },
			json = { "prettier" },
		},
		format_on_save = function(bufnr)
			-- Only format if global flag is true
			if not vim.g.autoformat then
				return
			end
			return { timeout_ms = 500, lsp_fallback = true }
		end,
	},
}
