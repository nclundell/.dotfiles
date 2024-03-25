return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
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
      update_focused_file = {
        enable = true
      },
      view = {
        adaptive_size = true
      }
    }

    require('which-key').register({
      F = { function() require('nvim-tree.api').tree.toggle() end, 'Toggle File Tree' }
    }, {
      prefix = '<leader>'
    })
  end
}
