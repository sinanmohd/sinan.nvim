return {
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = {{ "buffers", mode = 2 }},

		lualine_x = {},
		lualine_y = { "diagnostics", "progress" },
		lualine_z = {},
	},

	options = {
		component_separators = "",
		section_separators = "",
	},
}
