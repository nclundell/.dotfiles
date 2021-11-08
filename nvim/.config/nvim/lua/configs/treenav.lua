return function()
  vim.g.nvim_tree_git_hl = 1
  vim.g.nvim_tree_indent_markers = 1

  require('nvim-tree').setup{
    auto_close = true,
    diagnostics = {
      enable = true
    },
    filters = {
      custom = {
        ".git",
        "node_modules"
      }
    },
    update_focused_file = {
      enable = true
    },
    view = {
      auto_resize = true,
      hide_root_folder = true,
      width = 50,
    }
  }
end
