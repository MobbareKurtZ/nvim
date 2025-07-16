return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },

	opts = {
		servers = {
			lua_ls = {},
		},
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig["lua_ls"].setup({ capabilities = capabilities })
	end,
}
