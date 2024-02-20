return {
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- "rcarriga/nvim-notify",
    },
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        }
      }
    }
  },
  {
    'anuvyklack/windows.nvim',
    dependencies = {
      'anuvyklack/middleclass',
      -- 'anuvyklack/animation.nvim'
    },
    opts = {
      animation = {
        enable = false
      }
    },
    config = function()
      require('which-key').register({
        ['w'] = {
          name = 'Windows',
          e = { function() require("windows.commands").equalize() end, 'Equalize Windows' },
          m = { function() require("windows.commands").maximize() end, 'Maximize Windows' },
          s = { function() require("windows.commands").split() end, 'Split Windows' },
          v = { function() require("windows.commands").vsplit() end, 'VSplit Windows' },
        }
      }, {
        prefix = '<leader>'
      })
    end
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  }
}
