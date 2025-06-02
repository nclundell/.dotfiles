local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Tokyo Night Storm'

-- Fonts
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 20

-- Tab Bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

return config
