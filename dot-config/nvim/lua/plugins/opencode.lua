return {
  "nickjvandyke/opencode.nvim",
  version = "*",
  dependencies = {
  },
  config = function()
    vim.g.opencode_opts = {
      provider = {
        enabled = "snacks",
        snacks = {
          win = {
            position = "float",
            enter = true,
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
      desc = "Toggle opencode",
      mode = { 'n', 't' }
    },
    { "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, desc = "Ask opencode with @this", mode = { "n", "x" } },
    { "<C-x>", function() require("opencode").select() end, desc = "Opencode select", mode = { "n", "x" } },
  }
}
