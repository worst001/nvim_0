return require('packer').startup({

    function(use)
        -- Base Dependency
        use 'MunifTanjim/nui.nvim'
        use "nvim-lua/plenary.nvim"
        use "nvim-telescope/telescope.nvim"

        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- Lua Format
        use 'andrejlevkovitch/vim-lua-format'

        -- ChatGPT
        use 'jackMort/ChatGPT.nvim'

        -- todo-comments
        use "folke/todo-comments.nvim"

        -- session save
        use "olimorris/persisted.nvim"

        -- treesitter
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

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
