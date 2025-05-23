-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use (j{
        'aktersnurra/no-clown-fiesta.nvim',
        as = 'no-clown-fiestaaterial',
        config = function ()
            vim.cmd('colorscheme no-clown-fiesta')
        end
    })

    use ({
        'Mofiqul/dracula.nvim',
        as = 'dracula',
        config = function ()
            vim.cmd('colorscheme dracula')
        end
    })

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        config = function()
            require('nvim-tree').setup {}
        end
    }


    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim

            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            {'L3MON4D3/LuaSnip'},

            {'rafamadriz/friendly-snippets'},
        }
    }

    use("theprimeagen/harpoon")
    use("eandrju/cellular-automaton.nvim")
    -- use("github/copilot.vim")
end)

