local map = function(mode, binding, command, opts)
  opts = vim.tbl_extend('keep', opts or {}, {
    noremap = true,
    silent = true,
    expr = false
  })

  vim.keymap.set(mode, binding, command, opts)
end

-- Handle Buffers
map('n', '<leader>q', '<CMD> bd <CR>')
map('n', '<leader>w', '<CMD> w <CR>')
map('n', '<leader>x', '<CMD> x <CR>')

-- Navigate Windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Turn Off Search Highlight
map("n", "<ESC>", "<CMD> nohl <CR>")

-- (Un)Fold With Spacebar
map("n", "<Space>", "@=(foldlevel('.')?'za': '<Space>') <CR>")

-- Visual Mode Indenting
map("x", ">", ">gv")
map("x", "<", "<gv")

local keybind_groups = {
  'find',
  'git',
  'list',
  'misc',
  'open',
  'select',
  'toggle'
}

for _, group in ipairs(keybind_groups) do
  require("keybinds."..group)
end
