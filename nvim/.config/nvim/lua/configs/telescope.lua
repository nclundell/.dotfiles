local ts = require('telescope')
local tb = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" },
    layout_config = {
      prompt_position = 'top'
    },
    sorting_strategy = 'ascending'
  },
  extensions = {
    file_browser = {}
  }
}

-- Load Extensions
require('telescope').load_extension "fzf"
require("telescope").load_extension "file_browser"
