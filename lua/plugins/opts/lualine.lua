return {
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = { { "buffers", mode = 2 } },

		lualine_x = { "diagnostics" },
		lualine_y = { "progress" },
		lualine_z = {},
	},

	options = {
		component_separators = "",
		section_separators = "",
	},
}
