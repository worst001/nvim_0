require("telescope").load_extension("persisted")

require('telescope').setup({
  defaults = {
  },
  extensions = {
    persisted = {
      layout_config = { width = 0.55, height = 0.55 }
    }
  }
})
