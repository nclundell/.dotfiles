return {
  "nickjvandyke/opencode.nvim",
  version = "*",
  dependencies = {
    {
      "folke/snacks.nvim",
      optional = true,
      opts = {
        input = {},
        picker = {
          actions = {
            opencode_send = function(...) return require("opencode").snacks_picker_send(...) end,
          },
          win = {
            input = {
              keys = {
                ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
              },
            },
          },
        },
        terminal = {},
      },
    },
  },
  config = function()
    vim.g.opencode_opts = {
      provider = {
        enabled = "snacks",
        snacks = {
          win = {
            position = "float"
          }
        }
      },
      lsp = {
        enabled = true,
      }
    }
  end,
  keys = {
    {
      '<leader>gc',
      function() require("opencode").toggle() end,
      desc = "Toggle opencode"
    }
  }
}
