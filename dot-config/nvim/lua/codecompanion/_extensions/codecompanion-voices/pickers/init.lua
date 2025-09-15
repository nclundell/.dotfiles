local M = {}

function M.select(items, opts, on_choice)
  local pickers_path = vim.fn.stdpath("config") .. "/lua/codecompanion/_extensions/codecompanion-voices/pickers"
  local files = vim.fn.globpath(pickers_path, "*.lua", false, true)

  for _, file in ipairs(files) do
    local name = vim.fn.fnamemodify(file, ":t:r")
    if name ~= "init" then
      local ok, select_fn = pcall(require, "codecompanion._extensions.codecompanion-voices.pickers." .. name)
      if ok and type(select_fn) == "function" then
        return select_fn(items, opts, on_choice)
      end
    end
  end

  -- Fallback, just in case
  vim.ui.select(items, opts, on_choice)
end

return M
