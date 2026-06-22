local M = {}

local SPLIT_WIDTH = 41

local bufnr
local winid

local function resolve_size(total, value, default)
  if value == nil then
    return default
  end

  if type(value) == "number" and value > 0 and value < 1 then
    return math.floor(total * value)
  end

  return math.floor(value)
end

local function job_running(buf)
  if buf == nil or not vim.api.nvim_buf_is_valid(buf) then
    return false
  end

  local job_id = vim.b[buf].terminal_job_id
  if type(job_id) ~= "number" then
    return false
  end

  return vim.fn.jobwait({ job_id }, 0)[1] == -1
end

local function open(buf, opts)
  opts = opts or {}

  local style = opts.style == "float" and "float" or "split"
  local previous_win = vim.api.nvim_get_current_win()
  local split_width = resolve_size(vim.o.columns, opts.width, SPLIT_WIDTH)

  if style == "split" and split_width > (vim.api.nvim_win_get_width(previous_win) * 0.5) then
    style = "float"
  end

  if style == "float" then
    local editor_width = vim.o.columns
    local editor_height = vim.o.lines - vim.o.cmdheight

    if vim.o.laststatus > 0 then
      editor_height = editor_height - 1
    end

    if vim.o.showtabline == 2 or (vim.o.showtabline == 1 and #vim.api.nvim_list_tabpages() > 1) then
      editor_height = editor_height - 1
    end

    local width = math.max(1, resolve_size(editor_width, opts.width, math.floor(editor_width * 0.9)))
    local height = math.max(1, resolve_size(editor_height, opts.height, math.floor(editor_height * 0.85)))
    local row = math.max(0, math.floor((editor_height - height) / 2))
    local col = math.max(0, math.floor((editor_width - width) / 2))

    winid = vim.api.nvim_open_win(buf, true, {
      relative = "editor",
      row = row,
      col = col,
      width = width,
      height = height,
      border = "rounded",
      style = "minimal",
    })
  else
    vim.cmd("vsplit")
    winid = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_buf(winid, buf)

    vim.api.nvim_win_set_width(winid, split_width)
  end

  vim.api.nvim_set_current_win(previous_win)
end

function M.toggle(opts)
  opts = opts or {}

  if winid ~= nil and vim.api.nvim_win_is_valid(winid) then
    vim.api.nvim_win_hide(winid)
    winid = nil
    return
  end

  if not job_running(bufnr) then
    if bufnr ~= nil and vim.api.nvim_buf_is_valid(bufnr) then
      vim.api.nvim_buf_delete(bufnr, { force = true })
    end

    bufnr = vim.api.nvim_create_buf(false, false)
    vim.b[bufnr].opencode_terminal = true

    open(bufnr, opts)

    local terminal_win = winid
    local previous_win = vim.api.nvim_get_current_win()
    vim.api.nvim_set_current_win(terminal_win)
    vim.fn.termopen({ "opencode", "--port" }, {
      on_exit = function()
        vim.schedule(function()
          if winid ~= nil and vim.api.nvim_win_is_valid(winid) then
            vim.api.nvim_win_close(winid, true)
          end

          if bufnr ~= nil and vim.api.nvim_buf_is_valid(bufnr) then
            vim.api.nvim_buf_delete(bufnr, { force = true })
          end

          winid = nil
          bufnr = nil
        end)
      end,
    })
    if vim.api.nvim_win_is_valid(previous_win) then
      vim.api.nvim_set_current_win(previous_win)
    end
    return
  end

  open(bufnr, opts)
end

return M
