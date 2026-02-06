return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "j-hui/fidget.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {},
  init = function()
    require("plugins.code-companion.fidget"):init()
  end,
  keys = {
    {
      "<leader>ca",
      function()
        require("codecompanion").actions()
      end,
      desc = "Code Companion Actions",
    },
    {
      "<leader>cc",
      function()
        require("codecompanion").toggle()
      end,
      desc = "Toggle Code Companion",
    },
    {
      "<leader>cC",
      function()
        require("codecompanion").toggle(true)
      end,
      desc = "Toggle Code Companion (with focus)",
    },
  },

}
