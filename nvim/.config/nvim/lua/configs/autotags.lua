return function()
  require('nvim-treesitter.configs').setup {
    autotag = {
      enable = true,
    }
  }
end
