-- lua/aknee/plugins/lsp/mason.lua
return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- Enable mason and configure icons
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
			automatic_enable = false,
			ensure_installed = {
				"lua_ls", -- Lua
				"pyright", -- Python
				"clangd", -- C/C++
				"gopls", -- Go
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- Formatters
				"stylua", -- Lua formatter
				"black", -- Python formatter
				"isort", -- Python import formatter
				"gofumpt", -- Go formatter (better than gofmt)

				-- Linters
				"pylint", -- Python linter
				"golangci-lint", -- Go linter
			},
		})
	end,
}
