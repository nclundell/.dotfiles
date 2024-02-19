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
    init = function()
      vim.keymap.set(
        'n',
        '<leader>we',
        function() require('windows.commands').equalize() end,
        { desc = 'Equalize Windows' }
      )

      vim.keymap.set(
        'n',
        '<leader>wm',
        function() require('windows.commands').maximize() end,
        { desc = 'Maximize Windows' }
      )
    end
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  }
}
