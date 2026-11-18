vim.pack.add {
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
  { src = 'https://github.com/folke/tokyonight.nvim' }
}

require("catppuccin").setup {
  flavour = 'mocha'
}

require('tokyonight').setup {
  style = 'night'
}
