local configs = {
  "autopairs",
  "autotags",
  "cmp",
  "comment",
  "gitsigns",
  "guess-indent",
  "lualine",
  "lsp",
  "neotest",
  "nvimtree",
  "prettyfold",
  "surround",
  "telescope",
  "toggleterm",
  "treesitter",
  "trouble",
}

for _, config in ipairs(configs) do
  require("plugins.configs."..config)
end
