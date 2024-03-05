local lsp_zero = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp_zero.extend_lspconfig()
lsp_zero.set_sign_icons({
	error = "󰅚 ",
	warn = "󰀪 ",
	info = "󰋽 ",
	hint = "󰌶 ",
})
lsp_zero.on_attach(function(_, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

lspconfig.lua_ls.setup(lsp_zero.nvim_lua_ls({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "mp" }, -- mpv global
			},
		},
	},
}))

lspconfig.ccls.setup({
	init_options = {
		cache = {
			directory = vim.fn.stdpath("cache") .. "/ccls",
		},
	},
})

lspconfig.gopls.setup({
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparms = true,
			},
		},
	},
})

lspconfig.bashls.setup({})
lspconfig.nil_ls.setup({})
lspconfig.pyright.setup({})

lspconfig.tsserver.setup({})
lspconfig.svelte.setup({})
lspconfig.tailwindcss.setup({})
