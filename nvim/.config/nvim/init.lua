vim.g.mapleader = ','
vim.g.maplocalleader = '<'

require('utils.bootstrap')

require('lazy').setup(
  require('plugins'), {
    install = {
      colorscheme = {
        'doom-one'
      }
    },
    ui = {
      border = 'rounded'
    }
  }
)
