-- lua/aknee/plugins/autopairs.lua
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			check_ts = true, -- treesitter enabled
			ts_config = {
				lua = { "string" }, -- don't add pairs in lua string treesitter nodes
				python = { "string" }, -- don't add pairs in python string treesitter nodes
			},
		})
	end,
}
