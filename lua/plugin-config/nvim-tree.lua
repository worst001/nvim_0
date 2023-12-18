-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup{

  -- -- custom mappings
  -- view = {
  --   mappings = {
  --     list = {
  --       -- add multiple normal mode mappings for edit
  --       { key = { "<CR>", "o", "h", "l" }, action = "edit", mode = "n" },
  --
  --     }
  --   }
  -- }

}


