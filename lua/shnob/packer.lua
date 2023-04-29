-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('folke/tokyonight.nvim')
    --vim.cmd('colorscheme tokyonight')

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use('nvim-treesitter/playground')

    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use('nvim-lualine/lualine.nvim')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use('ThePrimeagen/vim-be-good')

    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')

    use('folke/todo-comments.nvim')

    use('alec-gibson/nvim-tetris')

    use('jbyuki/venn.nvim')

    use('lukas-reineke/indent-blankline.nvim')

    use {'folke/which-key.nvim'}

    use('mfussenegger/nvim-jdtls')
end)
