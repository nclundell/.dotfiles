return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true
    }
  },
  dependencies = {
    {
      "echasnovski/mini.icons",
      opts = {}
    }
  },
  cmd = {
    'Oil'
  },
  keys = {
    { '<leader>sx', '<CMD>sp .<CR>', desc = 'Open Split With Oil' },
    { '<leader>sv', '<CMD>vsp .<CR>', desc = 'Open VSplit With Oil' }
  }
}
