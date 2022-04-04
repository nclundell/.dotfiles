--------------------------------------------------
--    _   _                     _               --  
--   | \ | |  ___   ___ __   __(_) _ __ ___     --  
--   |  \| | / _ \ / _ \\ \ / /| || '_ ` _ \    --  
--   | |\  ||  __/| (_) |\ V / | || | | | | |   --  
--   |_| \_| \___| \___/  \_/  |_||_| |_| |_|   --  
--                                              --  
--------------------------------------------------

-- Base Settings
vim.o.mouse = 'a'
vim.g.mapleader = ','

-- Binds and Options
require("keybinds")
require("settings")

-- Everything Plugins
require('utils').bootstrap_plugins()
