require('nvim-tree').setup {
  diagnostics = {
    enable = true,
    show_on_dirs = true
  },
  renderer = {
    indent_markers = {
      enable = true
    }
  },
  view = {
    adaptive_size = true
  }
}

-- Keymaps
local map = require('utils.keymap')

map('n', 'FF', function() require('nvim-tree.api').tree.toggle() end, { desc = 'Toggle File Tree' })
