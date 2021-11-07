return function()
  local map = require('utils').map

  local g = vim.g

  g.fzf_buffers_jump = 1

  -- Define FZF Layout
  vim.cmd "let g:fzf_layout = { 'window': { 'width': 0.4, 'height': 0.6 }}"
  vim.cmd "let g:fzf_preview_window = ['down:70%']"

  -- Search Files
  map('n', '<leader>p', '<CMD> Files <CR>')

  -- Search GitFiles
  map('n', '<leader>gp', '<CMD> GitFiles <CR>')

  -- Search Buffers
  map('n', '<leader>b', '<CMD> Buffers <CR>')

  -- Search For Pattern in Project Files
  map('n', '<leader>f', '<CMD> Rg <CR>')

  -- Search For Pattern in Current File
  map('n', '<leader>/', '<CMD> BLines <CR>')
end
