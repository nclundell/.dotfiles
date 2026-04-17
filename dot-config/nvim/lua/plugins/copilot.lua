vim.pack.add({ "https://github.com/zbirenbaum/copilot.lua" })

require("copilot").setup({
  panel = {
    enabled = false,
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    hide_during_completion = false,
    keymap = {
      accept = false,
      accept_word = false,
      accept_line = false,
      next = false,
      prev = false,
      dismiss = false,
      toggle_auto_trigger = false,
    },
  },
})

local suggestion = require("copilot.suggestion")

vim.keymap.set("n", "<leader>tc", function()
  suggestion.toggle_auto_trigger()
end, { desc = "Toggle Copilot" })

vim.keymap.set("i", "<C-y>", function()
 if vim.fn.pumvisible() == 0 and suggestion.is_visible() then
    suggestion.accept_line()
    return ""
  end

  return "<C-y>"
end, { expr = true, desc = "Accept completion or Copilot suggestion (line)" })

vim.keymap.set("i", "<Down>", function()
  if vim.fn.pumvisible() == 0 and suggestion.is_visible() then
    suggestion.next()
    return ""
  end

  return "<Down>"
end, { expr = true, desc = "Next completion or Copilot suggestion" })

vim.keymap.set("i", "<Up>", function()
  if vim.fn.pumvisible() == 0 and suggestion.is_visible() then
    suggestion.prev()
    return ""
  end

  return "<Up>"
end, { expr = true, desc = "Previous completion or Copilot suggestion" })
