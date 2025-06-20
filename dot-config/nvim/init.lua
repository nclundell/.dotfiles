-- Leader Keys --
vim.g.mapleader = ' '
vim.g.maplocalleader = '<'

-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Setup Lazy
require('lazy').setup {
  spec = {
    { import = 'plugins' },
    { import = 'plugins.colorschemes' },
    { import = 'plugins.snacks' }
  },
  ui = {
    border = 'rounded'
  }
}

vim.cmd.colorscheme('tokyonight-storm')
vim.cmd.syntax('on')
vim.cmd('filetype plugin indent on')

require('autocmds')
require('keymaps')
-- require('language_servers')
require('options')
