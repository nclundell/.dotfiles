--------------------------------------------------
--    _   _                     _               --  
--   | \ | |  ___   ___ __   __(_) _ __ ___     --  
--   |  \| | / _ \ / _ \\ \ / /| || '_ ` _ \    --  
--   | |\  ||  __/| (_) |\ V / | || | | | | |   --  
--   |_| \_| \___| \___/  \_/  |_||_| |_| |_|   --  
--                                              --  
--------------------------------------------------

local bootstrapped = false
local git_path = 'https://github.com/savq/paq-nvim.git'
local install_path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  bootstrapped = true

  vim.fn.system({
    'git',
    'clone',
    '--depth=1',
    git_path,
    install_path
  })

  vim.cmd [[ packadd paq-nvim ]]
  vim.cmd('autocmd User PaqDoneInstall quit')
end

local paq = require('paq')
paq(require('plugins'))

if bootstrapped then
  paq.install()
else
  require('plugins.configs')
  require('keymaps')
  require('settings')
end
