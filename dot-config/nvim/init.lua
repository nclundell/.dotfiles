-- Leader Keys --
vim.g.mapleader = ' '

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
  },
  ui = {
    border = 'rounded'
  }
}

vim.cmd.colorscheme('tokyonight')
vim.cmd.syntax('on')
vim.cmd('filetype plugin indent on')

require('core.diagnostics')
require('core.keymaps')
require('core.language_servers')
require('core.options')
require('core.options_global')
