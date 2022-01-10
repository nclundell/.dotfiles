--------------------------------------------------
--    _   _                     _               --  
--   | \ | |  ___   ___ __   __(_) _ __ ___     --  
--   |  \| | / _ \ / _ \\ \ / /| || '_ ` _ \    --  
--   | |\  ||  __/| (_) |\ V / | || | | | | |   --  
--   |_| \_| \___| \___/  \_/  |_||_| |_| |_|   --  
--                                              --  
--------------------------------------------------

-- Bootstrap Paq
local install = false
local github_path  = 'https://github.com/savq/paq-nvim.git'
local install_path = vim.fn.stdpath('data')..'/site/pack/paqs/start/paq-nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  install = true
  vim.fn.system({
    'git',
    'clone',
    '--depth=1',
    github_path,
    install_path
  })
end

-- Load Plugin List
vim.cmd [[ packadd paq-nvim ]]
require('plugins')

-- Install Plugins or Load Config
if install then
  require('paq').install()
else
  require('configs')
  require('keybinds')
  require('settings')
end
