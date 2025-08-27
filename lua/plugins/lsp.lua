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

		lspconfig.clangd.setup({
			-- Optional settings
			cmd = { "clangd" },
			filetypes = { "c", "cpp", "objc", "objcpp" },
			root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
		})
		lspconfig.pyright.setup({
			filetypes = { "python" },
			root_dir = lspconfig.util.root_pattern(
				".git",
				"pyproject.toml",
				"setup.py",
				"setup.cfg",
				"requirements.txt"
			),
		})
	end,
}
