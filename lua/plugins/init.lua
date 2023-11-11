local plugins = {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make' 
    },
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate"
    },
    "RRethy/vim-illuminate",
}

require("lazy").setup(plugins)
require("plugins.configs")
