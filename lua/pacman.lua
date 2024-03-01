local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local repo = "https://github.com/folke/lazy.nvim.git"

local lazy_dl = function()
	vim.print(" 󰦗 downloading lazy.nvim")

	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		repo,
		"--branch=stable",
		path,
	})

	vim.print("")
	vim.cmd("redraw")
end

if not vim.loop.fs_stat(path) then
	lazy_dl()
end
vim.opt.rtp:prepend(path)
