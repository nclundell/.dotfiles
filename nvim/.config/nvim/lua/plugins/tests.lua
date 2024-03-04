return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',

      -- Adapters
      'zidhuss/neotest-minitest',
      'olimorris/neotest-rspec',
    },
    config = function()
      local neotest = require('neotest')
      neotest.setup {
        adapters = {
          require('neotest-minitest'),
          require('neotest-rspec')
        }
      }

      require('which-key').register({
        t = {
          name = 'Test',
          a = { function() neotest.run.attach() end, 'Attach to Test' },
          f = { function() neotest.run.run(vim.fn.expand('%')) end, 'Run Test File' },
          o = { function() neotest.output.open() end, 'Open Test Output' },
          O = { function() neotest.output_panel.toggle() end, 'Open Test Results' },
          s = { function() neotest.run.run(vim.fn.expand('<cword>')) end, 'Run Test Suite' },
          S = { function() neotest.summary.toggle() end, 'Test Summary' },
          t = { function() neotest.run.run() end, 'Run Test' },
        }
      }, {
        mode = 'n',
        prefix = '<leader>'
      })
    end
  }
}
