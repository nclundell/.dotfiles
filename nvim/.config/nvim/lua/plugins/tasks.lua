return {
  'stevearc/overseer.nvim',
  opts = {
    strategy = {
      'toggleterm'
    }
  },
  config = function()
    require('which-key').register({
      ['<c-o>'] = { function() require("overseer").toggle() end, 'Toggle Task Manager' }
    })
  end
}
