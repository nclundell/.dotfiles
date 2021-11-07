return function()
  vim.g.nvim_tree_auto_close = 1
  vim.g.nvim_tree_follow = 1
  vim.g.nvim_tree_git_hl = 1
  vim.g.nvim_tree_ignore = { ".git", "node_modules" }
  vim.g.nvim_tree_indent_markers = 1
  -- g.nvim_tree_show_icons = {"git" = 1, "folders" = 1, "files" = 1}
  vim.g.nvim_tree_side = "left"
  vim.g.nvim_tree_width = 50
end
