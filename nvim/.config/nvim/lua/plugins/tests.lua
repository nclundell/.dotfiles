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
      t = {
        name = 'Test',
        f = { function() require('neotest').run.run(vim.fn.expand('%')) end, 'Test Current File' },
        s = { function() require('neotest').summary.toggle() end, 'Test Summary' },
        t = { function() require('neotest').run.run() end, 'Test Nearest Test' },
      }
    }, { prefix = '<leader>' })
  end
}
