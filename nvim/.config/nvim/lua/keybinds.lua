local map = require('utils').map
local wk = require("which-key")

-- Turn Off Search Highlight
map('n', '<ESC>', '<CMD> nohl <CR>', { noremap = true })

-- Navigate Windows
--[[ map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l') ]]

-- Stay in Visual Mode When Indenting
--[[ map('x', '<', '<gv')
map('x', '>', '>gv') ]]

-- Handle Buffers
--[[ map('n', '<leader>q', '<CMD> bd <CR>')
map('n', '<leader>w', '<CMD> w <CR>')
map('n', '<leader>x', '<CMD> x <CR>') ]]

-- OmniFunc Keymap
map('i', '<leader><leader>', '<C-x><C-n>')

-- Popup Navigation
local popup_opts = { expr = true, noremap = true, silent = false }
map('i', '<Tab>',   'pumvisible() ? "<C-n>" : "<Tab>"',   popup_opts)
map('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', popup_opts)
-- map('i', '<CR>',    'pumvisible() ? "<C-y>" : "<CR>"',    popup_opts)

---------------------
-- Leader Mappings --
---------------------

-- Normal Mode
wk.register({
  [">"] = { ">gv", "Indent Right", mode = "x" },
  ["<"] = { "<gv", "Indent Left", mode = "x" },
  ["<C-h>"] = { "<C-w>h", "Move Left One Pane" },
  ["<C-j>"] = { "<C-w>j", "Move Down One Pane" },
  ["<C-k>"] = { "<C-w>k", "Move Down Up Pane" },
  ["<C-l>"] = { "<C-w>l", "Move Right One Pane" },
  ["<leader>"] = {
    a = { "<Plug>(EasyAlign)", "Align" },
    a = { "<Plug>(EasyAlign)", "Align", mode = "x" },
    d = { "<CMD> DBUIToggle <CR>", "Database" },
    e = {
      name = "Explore",
      b = { function() require('telescope.builtin').file_browser() end, "Browser" },
      t = {function() require('nvim-tree').toggle() end,  "Tree" }
    },
    f = {
      name = "Find",
      b = { function() require('telescope.builtin').buffers() end, "Buffers" },
      f = { function() require('telescope.builtin').find_files() end, "Files" }, 
      v = { function() require('telescope.builtin').treesitter() end, "Variables" }, 
      w = { function() require('telescope.builtin').grep_string() end, "Word" } 
    },
    g = {
      name = "Git",
      b = { function() require('telescope.builtin').git_branches() end, "Branches" },
      c = { function() require('telescope.builtin').git_commits() end, "Commits" },
      f = { function() require('telescope.builtin').git_files() end, "Files" },
      s = { function() require('neogit').open() end, "Status" },
    },
    p = { function() require('telescope.builtin').builtin() end, "Telescope" },
    q = { "<CMD> bd <CR>", "Close Buffer" },
    t = {
      name = "Terminal",
      g = { function() require('FTerm').scratch({auto_close = 'true', cmd = 'lazygit'}) end, "Git" },
      t = { function() require('FTerm').toggle() end, "Toggle" },
    },
    w = { "<CMD> w <CR>", "Write Buffer" },
    x = { "<CMD> x <CR>", "Write and Quit" },
  },
  ["<Space>"] = { "@=(foldlevel('.')?'za': '<Space>')<CR>", "(Un)Fold" },
})

-- Visual Block Mode
--[[ wk.register({
  ["<leader>"] = {
    a = { "<Plug>(EasyAlign)", "Align" },
  }
}, {
  mode = "x"
}) ]]

-----------------------
-- Standard Mappings --
-----------------------

-- Indent Mode Mappings
--[[ wk.register({
}, {
  mode = "i"
}) ]]

-- Normal Mode
--[[ wk.register(
  {
    ["<C-h>"] = { "<C-w>h", "Move Left One Pane" },
    ["<C-j>"] = { "<C-w>j", "Move Down One Pane" },
    ["<C-k>"] = { "<C-w>k", "Move Down Up Pane" },
    ["<C-l>"] = { "<C-w>l", "Move Right One Pane" },
  }
) ]]

-- Visual Block Mode Mappings
--[[ wk.register({
  [">"] = { ">gv", "Indent Right" },
  ["<"] = { "<gv", "Indent Left" }
}, {
  mode = "x"
}) ]]
