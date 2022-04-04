-- NOTE: Some settings are sourced in plugins.lua
-- and are not sourced here to avoid double sourcing.
--
-- colorscheme.lua

local settings = {
  "backspace",
  "buffers",
  "completion",
  "folds",
  "ui",
  "wildmenu"
}

for _, setting in ipairs(settings) do
  require("settings."..setting)
end
