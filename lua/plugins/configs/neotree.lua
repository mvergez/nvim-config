neotree = require('neo-tree')
neotree.setup({
    window = {
        mappings = {
            ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
            ["D"] = "show_diff",
        }
    },
    commands = {
        show_diff = function (state)
            -- some variables. use any if you want
            local node = state.tree:get_node()
            -- local abs_path = node.path
            -- local rel_path = vim.fn.fnamemodify(abs_path, ":~:.")
            -- local file_name = node.name
            local is_file = node.type == "file"
            if not is_file then
                vim.notify("Diff only for files", vim.log.levels.ERROR)
                return
            end
            -- open file
            local cc = require("neo-tree.sources.common.commands")
            cc.open(state, function()
                -- do nothing for dirs
            end)

            -- Fugitive
            vim.cmd([[Ghdiffsplit]]) -- or

            -- diffview.nvim
            -- vim.cmd([[DiffviewOpen -- %]])
        end,
    }
})
vim.keymap.set('n', '<leader>n', vim.cmd.Neotree, { desc = '[N]eo tree'})


