return {
  'stevearc/overseer.nvim',
  opts = {
    strategy = {
      'toggleterm'
    }
  },
  init = function()
    vim.keymap.set(
      'n',
      '<c-o>',
      function()
        require('overseer').toggle()
      end,
      {
        desc = 'Toggle Task Manager'
      }
    )
  end
}
