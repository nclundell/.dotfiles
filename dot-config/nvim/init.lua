-- Leader Key --
vim.g.mapleader = ','

-- Core Settings
require('core.diagnostics')
require('core.keymaps')
require('core.options')
require('core.indent-guides')

-- Language Servers
require('language_servers')

-- Plugins
require('plugins')

-- Color Scheme
vim.cmd.colorscheme('tokyonight')
vim.cmd.syntax('on')
vim.cmd('filetype plugin indent on')
