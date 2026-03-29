return {
	-- HACK: docs @ https://github.com/folke/snacks.nvim/blob/main/docs
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		-- NOTE: Options
		opts = {
			styles = {
				input = {
					keys = {
						n_esc = { "<C-c>", "cancel", mode = "n" },
						i_esc = { "<C-c>", "stopinsert", mode = "i" },
					},
				},
			},
			-- Snacks Modules
			indent = {
				animate = {
					enabled = vim.fn.has("nvim-0.10") == 1,
					style = "out",
					easing = "linear",
					duration = {
						step = 20, -- ms per step
						total = 1500, -- maximum duration
					},
				},
			},
			terminal = {
				win = {
					position = "float",
					border = "single",
				},
			},
			input = {
				enabled = true,
			},
			quickfile = {
				enabled = true,
				exclude = { "latex" },
			},
			-- HACK: read picker docs @ https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
			picker = {
				enabled = true,
				matchers = {
					frecency = true,
					cwd_bonus = false,
				},
				exclude = {
					".git",
					"node_modules",
					"dist",
					"build",
				},
				formatters = {
					file = {
						filename_first = true,
						filename_only = false,
						icon_width = 2,
					},
				},
				layout = {
					-- presets options : "default" , "ivy" , "ivy-split" , "telescope" , "vscode", "select" , "sidebar"
					-- override picker layout in keymaps function as a param below
					preset = "telescope", -- defaults to this layout unless overidden
					cycle = false,
				},
				layouts = {
					select = {
						preview = false,
						layout = {
							backdrop = false,
							width = 0.6,
							min_width = 80,
							height = 0.4,
							min_height = 10,
							box = "vertical",
							border = "rounded",
							title = "{title}",
							title_pos = "center",
							{ win = "input", height = 1, border = "bottom" },
							{ win = "list", border = "none" },
							{ win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top" },
						},
					},
					telescope = {
						reverse = true, -- set to false for search bar to be on top
						layout = {
							box = "horizontal",
							backdrop = false,
							width = 0.8,
							height = 0.9,
							border = "none",
							{
								box = "vertical",
								{ win = "list", title = " Results ", title_pos = "center", border = "single" },
								{
									win = "input",
									height = 1,
									border = "double",
									title = "{title} {live} {flags}",
									title_pos = "center",
								},
							},
							{
								win = "preview",
								title = "{preview:Preview}",
								width = 0.50,
								border = "single",
								title_pos = "center",
							},
						},
					},
					ivy = {
						layout = {
							box = "vertical",
							backdrop = false,
							width = 0,
							height = 0.4,
							position = "bottom",
							border = "top",
							title = " {title} {live} {flags}",
							title_pos = "left",
							{ win = "input", height = 1, border = "bottom" },
							{
								box = "horizontal",
								{ win = "list", border = "none" },
								{ win = "preview", title = "{preview}", width = 0.5, border = "left" },
							},
						},
					},

					dropdown = {
						preview = true,
						layout = {
							backdrop = false,
							width = 0.6,
							min_width = 80,
							height = 0.4,
							min_height = 10,
							box = "vertical",
							border = "none",
							title = "{title}",
							title_pos = "center",
							{ win = "input", title = "Search", title_pos = "left", height = 1, border = "single" },
							{ win = "list", height = 5, border = "single" },
							{ win = "preview", title = "{preview}", height = 7, border = "single" },
						},
					},
				},
			},
			image = {
				enabled = function()
					return vim.bo.filetype == "markdown"
				end,
				doc = {
					float = false, -- show image on cursor hover
					inline = false, -- show image inline
					max_width = 50,
					max_height = 30,
					wo = {
						wrap = false,
					},
				},
				convert = {
					notify = true,
					command = "magick",
				},
				img_dirs = {
					"img",
					"images",
					"assets",
					"static",
					"public",
					"media",
					"attachments",
					"Archives/All-Vault-Images/",
					"~/Library",
					"~/Downloads",
				},
			},
			dashboard = {
				enabled = true,
				preset = {
					header = table.concat({

						"██╗  ██╗██╗    ████████╗██╗    ██╗██╗███╗   ██╗",
						"██║  ██║██║    ╚══██╔══╝██║    ██║██║████╗  ██║",
						"███████║██║       ██║   ██║ █╗ ██║██║██╔██╗ ██║",
						"██╔══██║██║       ██║   ██║███╗██║██║██║╚██╗██║",
						"██║  ██║██║       ██║   ╚███╔███╔╝██║██║ ╚████║",
						"╚═╝  ╚═╝╚═╝       ╚═╝    ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝",
						"",
						"",
					}, "\n"),
				},
				sections = {
					{ section = "header", padding = 2 },
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup", gap = 2, padding = 2 },
					{
						section = "terminal",
						cmd = "chafa --symbols inverted --color-space din99d --dither diffusion --scale 1.0 ~/Pictures/profiles/wallhaven-w5o3xx.jpg",
						random = 15,
						pane = 2,
						indent = 15,
						height = 30,
						width = 60,
						border = true,
					},
				},
			},
		},
		-- NOTE: Keymaps
		keys = {
			-- terminal
			{
				"<leader>ft",
				function()
					require("snacks").terminal()
				end,
				desc = "Toggle Terminal",
			},
			{
				"<leader>oc",
				function()
					require("snacks").terminal.toggle("opencode")
				end,
				desc = "Toggle OpenCode",
			},
			{
				"<leader>lg",
				function()
					require("snacks").lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"<leader>gl",
				function()
					require("snacks").lazygit.log()
				end,
				desc = "Lazygit Logs",
			},
			{
				"<leader>rN",
				function()
					require("snacks").rename.rename_file()
				end,
				desc = "Fast Rename Current File",
			},
			{
				"<leader>dB",
				function()
					require("snacks").bufdelete()
				end,
				desc = "Delete or Close Buffer  (Confirm)",
			},

			-- Snacks Picker
			{
				"<leader>ff",
				function()
					require("snacks").picker.files()
				end,
				desc = "Find Files (Snacks Picker)",
			},
			{
				"<leader>fc",
				function()
					require("snacks").picker.files({ cwd = "~/.config/nvim/lua" })
				end,
				desc = "Find Config File",
			},
			{
				"<leader>fw",
				function()
					require("snacks").picker.grep()
				end,
				desc = "Grep word",
			},
			-- {
			-- 	"<leader>fws",
			-- 	function()
			-- 		require("snacks").picker.grep_word()
			-- 	end,
			-- 	desc = "Search Visual selection or Word",
			-- 	mode = { "n", "x" },
			-- },
			{
				"<leader>fk",
				function()
					require("snacks").picker.keymaps({ layout = "dropdown" })
				end,
				desc = "Search Keymaps (Snacks Picker)",
			},

			-- Other Utils
			{
				"<leader>h",
				function()
					require("snacks").dashboard()
				end,
				desc = "Go to dashboard",
			},
			{
				"<leader>th",
				function()
					require("snacks").picker.colorschemes({ layout = "dropdown" })
				end,
				desc = "Pick Color Schemes",
			},
			{
				"<leader>vh",
				function()
					require("snacks").picker.help()
				end,
				desc = "Help Pages",
			},
		},
	},
	-- NOTE: todo comments w/ snacks
	{
		"folke/todo-comments.nvim",
		event = { "BufReadPre", "BufNewFile" },
		optional = true,
		keys = {
			{
				"<leader>pt",
				function()
					require("snacks").picker.todo_comments()
				end,
				desc = "All",
			},
			{
				"<leader>pT",
				function()
					require("snacks").picker.todo_comments({ keywords = { "TODO", "FORGETNOT", "FIXME" } })
				end,
				desc = "mains",
			},
		},
	},
}
