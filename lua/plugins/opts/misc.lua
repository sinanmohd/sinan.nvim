local M = {}
local maps = require "plugins.maps"

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

return M
