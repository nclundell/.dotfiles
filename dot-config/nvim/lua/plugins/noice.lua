return {
  "folke/noice.nvim",
  event = "VeryLazy",
  enabled = false,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
      }
    }
  }
}
