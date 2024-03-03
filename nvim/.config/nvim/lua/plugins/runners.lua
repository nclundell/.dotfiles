return {
  {
    'stevearc/overseer.nvim',
    opts = {
      strategy = 'toggleterm'
    },
    config = function()
      require('which-key').register({
        R = { function() require('overseer').toggle() end, 'Toggle Task Overview' },
      }, {
        mode = 'n',
        prefix = '<leader>'
      })
    end
  },
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
        },
        consumers = {
          require('neotest.consumers.overseer')
        },
        on_output = function(output)
          if output.status == 'failed' then
            neotest.output.open()
          end
        end
      }

      require('which-key').register({
        t = {
          name = 'Test',
          o = { function() neotest.output.open() end, 'Open Test Output' },
          O = { function() neotest.output_pannel.toggle() end, 'Open Test Results' },
          r = { function() neotest.run.run() end, 'Run Test' },
          R = { function() neotest.run.run(vim.fn.expand('%')) end, 'Run Test File' },
          s = { function() neotest.summary() end, 'Test Summary' }

        }
      }, {
        mode = 'n',
        prefix = '<leader>'
      })
    end
  }
}
