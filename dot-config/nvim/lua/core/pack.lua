local M = {
  state = {
    buf = nil,
    expanded = {},
  },
}

local PACK_BUFFER_NAME = "vim.pack"
local PACK_GROUP = vim.api.nvim_create_augroup("CorePack", { clear = true })
local pack_sync

local function get_plugins(names)
  local plugins = vim.pack.get(names)

  table.sort(plugins, function(left, right)
    return left.spec.name < right.spec.name
  end)

  return plugins
end

local function get_plugin_names()
  local names = {}

  for _, plugin in ipairs(get_plugins()) do
    table.insert(names, plugin.spec.name)
  end

  return names
end

local function get_orphan_names()
  local names = {}

  for _, plugin in ipairs(get_plugins()) do
    if not plugin.active then
      table.insert(names, plugin.spec.name)
    end
  end

  return names
end

local function complete_plugin_names(arg_lead)
  return vim.tbl_filter(function(name)
    return name:find(arg_lead, 1, true) == 1
  end, get_plugin_names())
end

local function get_plugin_name_from_line(line)
  return line:match("^%- (.-) %(orphaned%)$") or line:match("^%- (.+)$")
end

local function get_confirm_buffer()
  local buf = vim.api.nvim_get_current_buf()
  local name = vim.api.nvim_buf_get_name(buf)

  if name:match("^nvim%-pack://confirm#") ~= nil then
    return buf
  end
end

local function watch_update_confirmation(confirm_buf, opts)
  local applied = false
  local changed_au = vim.api.nvim_create_autocmd("PackChanged", {
    group = PACK_GROUP,
    callback = function()
      applied = true
    end,
  })

  vim.api.nvim_create_autocmd("BufWipeout", {
    group = PACK_GROUP,
    buffer = confirm_buf,
    once = true,
    callback = function()
      pcall(vim.api.nvim_del_autocmd, changed_au)

      if not applied and opts.on_abort ~= nil then
        vim.schedule(opts.on_abort)
      end

      if opts.on_close ~= nil then
        vim.schedule(function()
          opts.on_close(applied)
        end)
      end
    end,
  })
end

local function run_pack_update(names, opts)
  vim.pack.update(names)

  local confirm_buf = get_confirm_buffer()
  if confirm_buf ~= nil then
    watch_update_confirmation(confirm_buf, opts or {})
    return
  end

  if opts ~= nil and opts.on_close ~= nil then
    opts.on_close(true)
  end
end

local function find_plugin_name_at_cursor(buf)
  local cursor = vim.api.nvim_win_get_cursor(0)
  local line_nr = cursor[1]

  while line_nr >= 1 do
    local line = vim.api.nvim_buf_get_lines(buf, line_nr - 1, line_nr, false)[1]
    local name = line and get_plugin_name_from_line(line) or nil

    if name ~= nil then
      return name
    end

    line_nr = line_nr - 1
  end
end

local function set_pack_buffer_lines(buf, lines)
  vim.bo[buf].modifiable = true
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.bo[buf].modifiable = false
end

local function render_pack_buffer(target_name)
  local buf = M.state.buf

  if buf == nil or not vim.api.nvim_buf_is_valid(buf) then
    return
  end

  local plugins = get_plugins()
  local installed_plugins = {}
  local orphaned_plugins = {}
  local lines = {
    string.format("Installed: %d", #plugins),
    string.format("Orphaned: %d", #get_orphan_names()),
    "",
  }
  local target_line

  for _, plugin in ipairs(plugins) do
    if plugin.active then
      table.insert(installed_plugins, plugin)
    else
      table.insert(orphaned_plugins, plugin)
    end
  end

  if #plugins == 0 then
    table.insert(lines, "No plugins found.")
  end

  local function append_plugin(plugin, orphaned)
    local line = orphaned and string.format("- %s (orphaned)", plugin.spec.name)
      or string.format("- %s", plugin.spec.name)

    table.insert(lines, line)

    if plugin.spec.name == target_name then
      target_line = #lines
    end

    if M.state.expanded[plugin.spec.name] then
      table.insert(lines, string.format("  rev: `%s`", plugin.rev))
      table.insert(lines, string.format("  src: `%s`", plugin.spec.src))
      table.insert(lines, string.format("  path: `%s`", plugin.path))

      if plugin.spec.version ~= nil then
        table.insert(lines, string.format("  version: `%s`", tostring(plugin.spec.version)))
      end
    end
  end

  for _, plugin in ipairs(installed_plugins) do
    append_plugin(plugin, false)
  end

  for _, plugin in ipairs(orphaned_plugins) do
    append_plugin(plugin, true)
  end

  set_pack_buffer_lines(buf, lines)

  local win = vim.fn.bufwinid(buf)
  if win ~= -1 then
    if target_line == nil then
      local cursor = vim.api.nvim_win_get_cursor(win)
      target_line = math.min(cursor[1], #lines)
    end

    vim.api.nvim_win_set_cursor(win, { math.max(target_line, 1), 0 })
  end
end

local function refresh_pack_buffer()
  local buf = M.state.buf

  if buf == nil or not vim.api.nvim_buf_is_valid(buf) then
    return
  end

  render_pack_buffer(find_plugin_name_at_cursor(buf))
end

local function close_pack_window()
  if vim.bo.filetype == "pack" then
    vim.cmd("tabclose")
  end
end

local function prompt_delete(name)
  local answer = vim.fn.input(string.format("Delete %s? [y/N] ", name))
  return answer == "y" or answer == "Y" or answer == "yes" or answer == "YES"
end

local function toggle_plugin_details()
  local buf = M.state.buf
  local name = buf and find_plugin_name_at_cursor(buf) or nil

  if name == nil then
    vim.notify("No plugin under cursor.", vim.log.levels.WARN)
    return
  end

  M.state.expanded[name] = not M.state.expanded[name]
  render_pack_buffer(name)
end

local function update_plugin_under_cursor()
  local buf = M.state.buf
  local name = buf and find_plugin_name_at_cursor(buf) or nil

  if name == nil then
    vim.notify("No plugin under cursor.", vim.log.levels.WARN)
    return
  end

  run_pack_update({ name }, {
    on_abort = function()
      vim.notify("Pack update aborted.")
    end,
  })
end

local function delete_plugin_under_cursor()
  local buf = M.state.buf
  local name = buf and find_plugin_name_at_cursor(buf) or nil

  if name == nil then
    vim.notify("No plugin under cursor.", vim.log.levels.WARN)
    return
  end

  if not prompt_delete(name) then
    return
  end

  M.state.expanded[name] = nil
  vim.pack.del({ name })
end

local function set_pack_keymaps(buf)
  local opts = { buffer = buf, silent = true }

  vim.keymap.set("n", "<CR>", toggle_plugin_details, opts)
  vim.keymap.set("n", "u", update_plugin_under_cursor, opts)
  vim.keymap.set("n", "d", delete_plugin_under_cursor, opts)
  vim.keymap.set("n", "s", function()
    pack_sync()
  end, opts)
  vim.keymap.set("n", "r", refresh_pack_buffer, opts)
  vim.keymap.set("n", "q", close_pack_window, opts)
end

local function open_pack_buffer()
  vim.cmd("tabnew")

  local buf = vim.api.nvim_get_current_buf()

  M.state.buf = buf

  vim.bo[buf].buftype = "nofile"
  vim.bo[buf].bufhidden = "wipe"
  vim.bo[buf].swapfile = false
  vim.bo[buf].modifiable = true
  vim.bo[buf].filetype = "pack"
  vim.api.nvim_buf_set_name(buf, PACK_BUFFER_NAME)

  set_pack_keymaps(buf)

  vim.api.nvim_create_autocmd("BufWipeout", {
    group = PACK_GROUP,
    buffer = buf,
    callback = function()
      if M.state.buf == buf then
        M.state.buf = nil
        M.state.expanded = {}
      end
    end,
  })

  render_pack_buffer()
end

local function pack_open()
  open_pack_buffer()
end

local function pack_update(opts)
  if opts.args == "" then
    run_pack_update(nil, {
      on_abort = function()
        vim.notify("Pack update aborted.")
      end,
    })
    return
  end

  run_pack_update({ opts.args }, {
    on_abort = function()
      vim.notify("Pack update aborted.")
    end,
  })
end

local function pack_delete(opts)
  vim.pack.del(vim.split(opts.args, "%s+"))
end

local function pack_clean()
  local names = get_orphan_names()

  if #names == 0 then
    vim.notify("No orphaned plugins to remove.")
    return
  end

  vim.pack.del(names)
end

pack_sync = function()
  local orphan_names = get_orphan_names()

  run_pack_update(nil, {
    on_close = function()
      if #orphan_names > 0 then
        vim.pack.del(orphan_names)
      else
        vim.notify("No orphaned plugins to remove.")
      end
    end,
  })
end

function M.setup()
  vim.api.nvim_create_autocmd("PackChanged", {
    group = PACK_GROUP,
    callback = refresh_pack_buffer,
  })

  vim.api.nvim_create_user_command("Pack", pack_open, {
    desc = "Open the plugin overview",
  })

  vim.api.nvim_create_user_command("PackUpdate", pack_update, {
    nargs = "?",
    complete = complete_plugin_names,
    desc = "Update plugins",
  })

  vim.api.nvim_create_user_command("PackDelete", pack_delete, {
    nargs = "+",
    complete = complete_plugin_names,
    desc = "Delete plugins",
  })

  vim.api.nvim_create_user_command("PackClean", pack_clean, {
    desc = "Delete orphaned plugins",
  })

  vim.api.nvim_create_user_command("PackSync", pack_sync, {
    desc = "Update plugins, then clean orphaned plugins",
  })
end

M.setup()

return M
