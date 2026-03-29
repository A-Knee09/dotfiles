-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	build = ":TSUpdate",
-- 	event = { "BufReadPost", "BufNewFile" },
--
-- 	opts = {
-- 		ensure_installed = {
-- 			"c",
-- 			"lua",
-- 			"vim",
-- 			"vimdoc",
-- 			"query",
-- 			"markdown",
-- 			"markdown_inline",
-- 			"python",
-- 			"go",
-- 		},
--
-- 		sync_install = false,
-- 		auto_install = true,
--
-- 		highlight = {
-- 			enable = true,
--
-- 			disable = function(_, buf)
-- 				local max_filesize = 100 * 1024 -- 100 KB
-- 				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
-- 				return ok and stats and stats.size > max_filesize
-- 			end,
--
-- 			additional_vim_regex_highlighting = false,
-- 		},
-- 	},
--
-- 	config = function(_, opts)
-- 		require("nvim-treesitter").setup(opts)
-- 	end,
-- }
--
return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter")

			-- configure treesitter
			treesitter.setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				-- enable indentation
				indent = { enable = true },

				-- ensure these languages parsers are installed
				ensure_installed = {
					"json",
					"tsx",
					"go",
					"yaml",
					"html",
					"css",
					"python",
					"http",
					"prisma",
					"markdown",
					"markdown_inline",
					"graphql",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
					"query",
					"vimdoc",
					"c",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						-- scope_incremental = false,
						node_decremental = "<C-backspace>",
					},
				},
			})
			-- force start treesitter for all filetypes
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "*",
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},
	-- NOTE: js,ts,jsx,tsx Auto Close Tags
	{
		"windwp/nvim-ts-autotag",
		enabled = true,
		ft = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte" },
		config = function()
			-- Independent nvim-ts-autotag setup
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = true, -- Auto-close tags
					enable_rename = true, -- Auto-rename pairs
					enable_close_on_slash = false, -- Disable auto-close on trailing `</`
				},
				per_filetype = {
					["html"] = {
						enable_close = true, -- Disable auto-closing for HTML
					},
					["typescriptreact"] = {
						enable_close = true, -- Explicitly enable auto-closing (optional, defaults to `true`)
					},
				},
			})
		end,
	},
}
