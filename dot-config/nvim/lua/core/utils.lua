local M = {}

function M.map(lhs, rhs, opts)
  opts = opts or {}

  local keymap_opts = vim.tbl_extend("force", {}, opts)
  local mode = keymap_opts.mode or "n"
  keymap_opts.mode = nil

  vim.keymap.set(mode, lhs, rhs, keymap_opts)
end

function M.copilot_auto_trigger_enabled()
  if vim.b.copilot_suggestion_auto_trigger ~= nil then
    return vim.b.copilot_suggestion_auto_trigger
  end

  local ok, config = pcall(require, 'copilot.config')
  if not ok then return false end

  return config.suggestion.auto_trigger
end

return M
