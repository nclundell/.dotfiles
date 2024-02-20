return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',

    -- Adapters
    'olimorris/neotest-rspec',
    'zidhuss/neotest-minitest'
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require('neotest-minitest'),
        require('neotest-rspec')
      },
      consumers = {
        overseer = require('neotest.consumers.overseer'),
      }
    }

    require('which-key').register({
      r = {
        name = 'Run',
        s = { function() require('neotest').run.run(true) end, 'Run Test Suite' },
        t = { function() require('neotest').run.run() end, 'Run Test' },
        T = { function() require('neotest').run.run(vim.fn.expand('%')) end, 'Run File' }
      },
      t = {
        name = 'Toggle',
        s = { function() require('neotest').summary.toggle() end, 'Toggle Test Summary' }
      }
    }, { prefix = '<leader>' })
  end
}
