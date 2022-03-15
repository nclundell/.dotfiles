local ft = require('FTerm')
local hop = require('hop')
local lg = require('lazygit')
local nt = require('nvim-tree')
local tr = require('trouble')
local ts = require('telescope')
local tb = require('telescope.builtin')
local te = require('telescope').extensions
local wk = require("which-key")

local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

-- Define Leader
vim.g.mapleader = ','

-- Normal Mode Mappings
wk.register({
  ['<ESC>'] = { "<CMD> nohl <CR>", "Disable Highlight"},
  ['<C-A-j>'] = { "<CMD> tabnext <CR>", "Next Tab" },
  ['<C-A-k>'] = { "<CMD> tabprev <CR>", "Previous Tab" },
  ["<C-h>"] = { "<C-w>h", "Move Left One Pane" },
  ["<C-j>"] = { "<C-w>j", "Move Down One Pane" },
  ["<C-k>"] = { "<C-w>k", "Move Down Up Pane" },
  ["<C-l>"] = { "<C-w>l", "Move Right One Pane" },
  ["<Space>"] = { 
    "@=(foldlevel('.')?'za': '<Space>')<CR>",
    "(Un)Fold"
  },
  g = {
    l = { function() hop.hint_lines() end, "Hop To Line"},
    w = {
      name = "Hop to Word",
      a = { function() hop.hint_words() end, "Append"},
      i = { function() hop.hint_words() end, "Insert"}
    }
  },
  ["<leader>"] = {
    d = { "<CMD> DBUIToggle <CR>", "Database" },
    f = {
      name = "Find",
      f = { function() tb.find_files() end, "Files" }, 
      v = { function() tb.treesitter() end, "Variables" }, 
      w = { function() tb.grep_string() end, "Word" } 
    },
    g = {
      name = "Git",
      b = { function() tb.git_branches() end, "Branches" },
      c = { function() tb.git_commits() end, "Commits" },
      f = { function() tb.git_files() end, "Files" },
      g = { function() lg.lazygit() end, "Lazygit" },
    },
    o = {
      name = "Open",
      b = { function() tb.buffers(selection_layout) end, "Buffers" },
      f = { function() te.file_browser.file_browser(selection_layout) end, "Files" },
    },
    p = { function() tb.commands() end, "Command Pallate" },
    q = { "<CMD> bd <CR>", "Close Buffer" },
    s = {
      name = "Select",
      c = { function() tb.colorscheme(selection_layout) end, "ColorSchemes" },
    },
    t = {
      name = "Toggle",
      d = { function() tr.toggle() end, "Diagnostics" },
      f = { function() nt.toggle() end, "File Tree" },
      t = { function() ft.toggle() end, "Scratch Terminal" }
    },
    w = { "<CMD> w <CR>", "Write Buffer" },
    x = { "<CMD> x <CR>", "Write and Quit" },
    ["/"] = { function() tb.current_buffer_fuzzy_find() end, "Search Buffer" },
  },
})

-- Terminal Mode Mappings
wk.register({
  ["<leader>"] = {
  ['<C-A-j>'] = { "<CMD> tabnext <CR>", "Next Tab" },
  ['<C-A-k>'] = { "<CMD> tabprev <CR>", "Previous Tab" },
    t = {
      name = "Toggle",
      t = { function() ft.toggle() end, "Scratch Terminal" }
    }
  }
}, {
  mode = "t"
})

-- Visual Block Mappings
wk.register({
  [">"] = { ">gv", "Indent Right" },
  ["<"] = { "<gv", "Indent Left" },
}, {
  mode = "x"
})
