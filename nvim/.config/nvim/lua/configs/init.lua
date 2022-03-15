-- Basic Configs
require('Comment').setup {}
require('gitsigns').setup {}
require('guess-indent').setup {}
require('hop').setup {}
require('sidebar-nvim').setup {}
require('which-key').setup {}

-- Pull In Larger Configs
require('configs.cmp')
require('configs.fterm')
require('configs.indentline')
require('configs.lsp')
require('configs.lualine')
require('configs.pairs')
require('configs.telescope')
require('configs.treenav')
require('configs.treesitter')
