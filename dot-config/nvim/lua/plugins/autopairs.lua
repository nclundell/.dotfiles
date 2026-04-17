vim.pack.add({ 'https://github.com/windwp/nvim-autopairs' })

require('nvim-autopairs').setup {}

require('nvim-autopairs').add_rules(require('nvim-autopairs.rules.endwise-lua'))
require('nvim-autopairs').add_rules(require('nvim-autopairs.rules.endwise-ruby'))
