return {
  'vim-test/vim-test',
  dependencies = {
    'tpope/vim-dispatch',
    'folke/trouble.nvim'
  },
  config = function()
    vim.g['test#strategy'] = 'dispatch'

    require('which-key').register({
      r = {
        name = 'Run',
        t = { function() vim.cmd('TestNearest') end, 'Run Test' },
        T = { function() vim.cmd('TestFile') end, 'Run Test File' },
        s = { function() vim.cmd('TestSuite') end, 'Run Test Suite' },
      }
    }, {
      mode = 'n',
      prefix = '<leader>'
    })
  end
}
