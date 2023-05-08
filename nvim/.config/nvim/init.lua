vim.g.mapleader = ','
vim.g.maplocalleader = '<'

require('utils.bootstrap')

require('lazy').setup(
  require('plugins'), {
    install = {
      colorscheme = {
        'onedark_vivid'
      }
    },
    ui = {
      border = 'rounded'
    }
  }
)
