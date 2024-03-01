local M = {}
local maps = require("plugins.maps")

M.gitsigns = {
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "-" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "│" },
	},

	on_attach = function(bufnr)
		maps.load("gitsigns", { buffer = bufnr })
	end,
}

M.luasnip = function(opts)
	require("luasnip").config.set_config(opts)

	-- vscode format
	require("luasnip.loaders.from_vscode").lazy_load()
	-- snipmate format
	require("luasnip.loaders.from_snipmate").lazy_load()
	-- lua format
	require("luasnip.loaders.from_lua").lazy_load()
end

return M
