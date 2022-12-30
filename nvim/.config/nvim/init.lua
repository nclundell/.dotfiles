require('utils.bootstrap')

require('lazy').setup(
  require('plugins'),
  {
    install = {
      colorscheme = {
        'nord'
      }
    },
    ui = {
      border = 'rounded'
    }
  }
)

require('keymaps')
require('settings')
