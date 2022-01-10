local map = require('utils').map  
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
    tele_tabby = {}
  }
}

local dropdown_layout = require('telescope.themes').get_dropdown({ previewer = false })

-- Load Extensions
require('telescope').load_extension('fzf')

-- Bindings
