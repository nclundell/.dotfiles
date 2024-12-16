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
  install = {
    colorscheme = {
      'catppuccin'
    }
  },
  spec = {
    { import = 'plugins.code_intelligence' },
    { import = 'plugins.colors' },
    { import = 'plugins.edit' },
    { import = 'plugins.files' },
    { import = 'plugins.git' },
    { import = 'plugins.integrations' },
    { import = 'plugins.misc' },
    { import = 'plugins.treesitter' },
    { import = 'plugins.ui' },
  },
  ui = {
    border = 'single'
  }
}

require('keymaps')
require('options')
