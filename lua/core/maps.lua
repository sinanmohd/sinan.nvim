local maps = {
	n = {
		["<Esc>"] = { "<cmd> noh <CR>", "Clear highlights" },
		["<Leader>cc"] = {
			function()
				if vim.api.nvim_get_option_value("colorcolumn", {}) == "" then
					vim.api.nvim_set_option_value("colorcolumn", "80", {})
				else
					vim.api.nvim_set_option_value("colorcolumn", "", {})
				end
			end,
			"Toggle 80 column hint"
		},
	},

	t = {
		["<C-x>"] = {
			vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
			"Escape terminal mode"
		},
	},

	v = {
		["<"] = { "<gv", "Indent line" },
		[">"] = { ">gv", "Indent line" },
	},
}


for mode, keytab in pairs(maps) do
	for key, fun in pairs(keytab) do
		vim.keymap.set(mode, key, fun[1], { desc = fun[2] })
	end
end
