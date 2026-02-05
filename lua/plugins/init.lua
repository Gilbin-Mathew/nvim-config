return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        -- This pulls your table from lua/configs/treesitter.lua
        opts = require("configs.treesitter"),
        config = function(_, opts)
            -- This check handles the "module not found" error automatically
            local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
            if ok then
                ts_configs.setup(opts)
            else
                require("nvim-treesitter").setup(opts)
            end
        end,
    },
    -- lua/plugins/init.lua
    {
        {
            "neovim/nvim-lspconfig",
            config = function()
                require("nvchad.configs.lspconfig").defaults()
                require("configs.lspconfig") -- This points to your custom config file
            end,
        },

        {
            "williamboman/mason.nvim",
            opts = {
                ensure_installed = {
                    "lua-language-server",
                    "stylua",
                    "clangd", -- C/C++
                    "pyright", -- Python
                    "ruff", -- Optional: faster Python linting/formatting
                },
            },
        },
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require("configs.conform"),
    },

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },
}
