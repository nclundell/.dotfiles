vim.pack.add({"https://github.com/nvim-lualine/lualine.nvim"})
vim.pack.add({"https://github.com/nvim-tree/nvim-web-devicons"})

local function copilot_suggestions()
  return require('core.utils').copilot_auto_trigger_enabled() and "" or ""
end

require("lualine").setup({
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    globalstatus = true,
    path = 1,
    refresh = { winbar = 100 },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {},
    lualine_c = {
      "filetype",
      {
        "filename",
        symbols = {
          unnamed = "",
        },
      },
    },
    lualine_x = {
      copilot_suggestions,
      "lsp_status"
    },
    lualine_y = {},
    lualine_z = {},
  }
})
