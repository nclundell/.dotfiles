return function()
  require('configs.nvimtree.keybinds')
  require('nvim-tree').setup {
    diagnostics = {
      enable = true,
      show_on_dirs = true
    },
    renderer = {
      indent_markers = {
        enable = true
      }
    }
  }
end
