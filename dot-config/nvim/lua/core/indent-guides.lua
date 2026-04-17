local function should_update_indent_guides()
  return vim.bo.buftype == '' and vim.bo.modifiable
end

local function update_indent_guides()
  if not should_update_indent_guides() then
    vim.opt_local.list = false

    return
  end

  local width = vim.fn.shiftwidth()
  local listchars = vim.opt_local.listchars:get()

  listchars.leadmultispace = "┊" .. string.rep(" ", math.max(width - 1, 0))

  vim.opt_local.list = true
  vim.opt_local.listchars = listchars
end

local indent_guides = vim.api.nvim_create_augroup("core_indent_guides", { clear = true })

vim.api.nvim_create_autocmd(
  {
    "BufEnter",
    "WinEnter",
    "FileType"
  },
  {
    group = indent_guides,
    desc = "Update indent guides for current buffer",
    callback = update_indent_guides,
  }
)

vim.api.nvim_create_autocmd(
  "OptionSet",
  {
    group = indent_guides,
    pattern = { "shiftwidth" },
    desc = "Update indent guides after indent option changes",
    callback = update_indent_guides,
  }
)

update_indent_guides()
