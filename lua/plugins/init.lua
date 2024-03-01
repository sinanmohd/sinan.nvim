require("lazy").setup({
	"tpope/vim-fugitive",
	"tpope/vim-sleuth",
	{ "numToStr/Comment.nvim", opts = {} },

	{
		"lewis6991/gitsigns.nvim",
		opts = require("plugins.opts.misc").gitsigns,
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },

		opts = require "plugins.opts.lualine",
	},

	{
		"tiagovla/tokyodark.nvim",
		lazy = false,

		opts = { transparent_background = true },
		config = function(_, opts)
			require("tokyodark").setup(opts)
			vim.cmd.colorscheme "tokyodark"
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },

		opts = require "plugins.opts.treesitter",
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},

})
