vim.keymap.set(
  'n',
  '<c-f>',
  function()
    require('nvim-tree.api').tree.toggle()
  end,
  {
    desc = 'Toggle File Tree'
  }
)
