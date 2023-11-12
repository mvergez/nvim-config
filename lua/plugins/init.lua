local plugins = {
    "RRethy/vim-illuminate",
    "tpope/vim-fugitive",
    "mbbill/undotree",
    "lewis6991/gitsigns.nvim",
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
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    {
        "nvimdev/guard.nvim",
        -- Builtin configuration, optional
        dependencies = {
            "nvimdev/guard-collection",
        },
    },
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },
}

require("lazy").setup(plugins)
require("plugins.configs")
