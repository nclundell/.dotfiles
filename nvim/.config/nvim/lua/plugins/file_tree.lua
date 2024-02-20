return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  -- opts = {
  --   diagnostics = {
  --     enable = true,
  --     show_on_dirs = true
  --   },
  --   renderer = {
  --     indent_markers = {
  --       enable = true
  --     }
  --   },
  --   view = {
  --     adaptive_size = true
  --   }
  -- },
  config = function()
    require('nvim-tree').setup {
      auto_close = true,
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
      t = {
        name = 'Toggle',
        f = { function() require('nvim-tree.api').tree.toggle() end, 'Toggle File Tree' }
      }
    }, {
      prefix = '<leader>'
    })
  end
}
