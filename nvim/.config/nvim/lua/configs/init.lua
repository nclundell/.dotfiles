local configs = {
  "cmp",
  "fterm",
  "indentline",
  "lsp",
  "lualine",
  "pairs",
  "prettyfold",
  "telescope",
  "treenav",
  "treesitter"
}

local plugins = {
  "Comment",
  "gitsigns",
  "guess-indent",
  "hop",
  "legendary",
  "sidebar-nvim",
  "which-key"
}

for _, plugin in ipairs(plugins) do
  if pcall(require, plugin) then
    require(plugin).setup {}
  end
end

for _, config in ipairs(configs) do
  config = "configs." .. config
  if pcall(require, config) then
    require(config)
  end
end
