return require('packer').startup({

    function(use)
        -- Base Dependency
        use 'MunifTanjim/nui.nvim'
        use "nvim-lua/plenary.nvim"

        -- telescope
        use {'nvim-telescope/telescope.nvim', tag = '0.1.5'}

        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- Lua Format
        use 'andrejlevkovitch/vim-lua-format'

        -- ChatGPT
        -- use 'jackMort/ChatGPT.nvim'

        -- todo-comments
        use "folke/todo-comments.nvim"

        -- session save
        use "olimorris/persisted.nvim"

        -- nvim-tree
        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons' -- optional
            }
        }

        -- treesitter
        use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    end,

    config = {
        max_jobs = 16,
        display = {
            open_fn = function()
                return require('packer.util').float({border = 'single'})
            end
        }
    }

})
