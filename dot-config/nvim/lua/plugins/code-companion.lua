return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {},
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
