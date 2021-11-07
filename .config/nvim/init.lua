--------------------------------------------------
--    _   _                     _               --  
--   | \ | |  ___   ___ __   __(_) _ __ ___     --  
--   |  \| | / _ \ / _ \\ \ / /| || '_ ` _ \    --  
--   | |\  ||  __/| (_) |\ V / | || | | | | |   --  
--   |_| \_| \___| \___/  \_/  |_||_| |_| |_|   --  
--                                              --  
--------------------------------------------------

-- Plugin Install/Load --
local initial_install = false
local github_path  = 'https://github.com/wbthomason/packer.nvim'
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	initial_install = true
	vim.fn.system({'git', 'clone', github_path, install_path})
end

vim.cmd [[ packadd packer.nvim ]]
vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]
require('plugins')

if initial_install then
	require('packer').sync()
end

-- Keybinds --
require('keybinds')

-- Settings --
require('settings')
