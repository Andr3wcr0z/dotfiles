-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
--    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
--    use 'nvim-treesitter/playground'
    use('theprimeagen/harpoon')
    use('theprimeagen/vim-be-good')
    use 'mbbill/undotree'
    use('tpope/vim-fugitive')
    use('christoomey/vim-tmux-navigator')
    -- use 'morhetz/gruvbox'

--    use({
--        'rose-pine/neovim',
--        as = 'rose-pine',
--        config = function()
--            vim.cmd('colorscheme rose-pine')
--        end
--    })
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
-- rose-pine theme
--     use({
--         'rose-pine/neovim',
--         as = 'rose-pine',
--         config = function()
--             vim.cmd('colorscheme rose-pine') end
--     })
--     use {'nvim-orgmode/orgmode', config = function()
--         require('orgmode').setup{}
--     end
-- }
-- startup
use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup()
  end
}
--
--  catppuccin
use { "catppuccin/nvim", as = "catppuccin" }
--  
use 'lervag/vimtex'
--
--
use {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  }
}
end)
