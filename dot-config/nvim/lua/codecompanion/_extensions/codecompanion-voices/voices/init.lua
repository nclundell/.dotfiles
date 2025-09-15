local M = {}

local voice_files = vim.fn.globpath(
  vim.fn.stdpath("config") .. "/lua/codecompanion/_extensions/codecompanion-voices/voices",
  "*.lua",
  false,
  true
)

for _, file in ipairs(voice_files) do
  local name = vim.fn.fnamemodify(file, ":t:r")
  if name ~= "init" then
    M[name] = dofile(file)
  end
end

M.default = { name = "Default", instructions = "" }

return M
