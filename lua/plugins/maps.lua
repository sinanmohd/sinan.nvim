local M = {}
local maps = {}

maps.gitsigns = {
        n = {
                ["<leader>gb"] = {
                        function()
                                package.loaded.gitsigns.blame_line()
                        end,
                        "Blame line",
                },

                ["<leader>td"] = {
                        function()
                                require("gitsigns").toggle_deleted()
                        end,
                        "Toggle deleted",
                },
        },
}

M.load = function(name, opts)
        local submaps = maps[name]
        opts = opts or {}

        vim.schedule(function()
                for mode, keytab in pairs(submaps) do
                        for key, fun in pairs(keytab) do
                                vim.keymap.set(mode, key, fun[1], { desc = fun[2] }, opts)
                        end
                end
        end)
end

return M
