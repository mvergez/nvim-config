require('telescope').setup{
    extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                           -- the default case_mode is "smart_case"
        }
  }
}
require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, { desc = '[F]ind [A]ll files' })
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = '[F]ind git [F]iles' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind in files ([G]rep)' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind in [B]uffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fvc', builtin.git_commits, { desc = '[F]ind [V]ersion control [C]ommits' })
vim.keymap.set('n', '<leader>fvb', builtin.git_branches, { desc = '[F]ind [V]ersion control [B]ranches' })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
