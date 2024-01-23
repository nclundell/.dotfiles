vim.keymap.set(
  'n',
  '<leader>we',
  function() require('windows.commands').equalize() end,
  { desc = 'Equalize Windows' }
)

vim.keymap.set(
  'n',
  '<leader>wm',
  function() require('windows.commands').maximize() end,
  { desc = 'Maximize Windows' }
)
