return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"harper_ls",
				"cmake",
				"cssls",
				"jinja_lsp",
				"html",
				"lua_ls",
				"pylsp",
				"pyright",
				"ruby_lsp",
				"sqls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"autopep8",
				"clang-format",
				"gersemi",
				"rubocop",
				"stylua",
				"prettier",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
