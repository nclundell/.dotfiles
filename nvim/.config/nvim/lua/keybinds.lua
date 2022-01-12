local lg = require('lazygit')
local nt = require('nvim-tree')
local tr = require('trouble')
local ts = require('telescope')
local tb = require('telescope.builtin')
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
  ["<leader>"] = {
    b = {
      name = "Browse",
      f = { function() tb.file_browser(dropdown_layout) end, "Files" },
      t = { function() nt.toggle() end, "Project Tree" },

    },
    d = { "<CMD> DBUIToggle <CR>", "Database" },
    f = {
      name = "Find",
      f = { function() tb.find_files() end, "Files" }, 
      p = { function() ts.extensions.packer.plugins() end, "Plugins" }, 
      v = { function() tb.treesitter() end, "Variables" }, 
      w = { function() tb.grep_string() end, "Word" } 
    },
    g = {
      name = "Git",
      b = { function() tb.git_branches() end, "Branches" },
      c = { function() tb.git_commits() end, "Commits" },
      d = {
      },
      f = { function() tb.git_files() end, "Files" },
      g = { function() lg.lazygit() end, "Lazygit" },
    },
    o = {
      name = "Open",
      b = { function() tb.buffers(selection_layout) end, "Buffers" },
      t = { function() ts.extensions.tele_tabby.list(selection_layout) end, "Tabs" },
    },
    q = { "<CMD> bd <CR>", "Close Buffer" },
    s = {
      name = "Select",
      c = { function() tb.colorscheme(selection_layout) end, "ColorSchemes" },
      t = {
	name = "Tmux",
	s = { function() ts.extensions.tmux.sessions(selection_layout) end, "Sessions" },
        w = { function() ts.extensions.tmux.windows(selection_layout) end, "Windows" }
      }
    },
    t = {
      name = "Toggle",
      d = { function() tr.toggle() end, "Diagnostics" },
    },
    w = { "<CMD> w <CR>", "Write Buffer" },
    x = { "<CMD> x <CR>", "Write and Quit" },
    ["/"] = { function() tb.current_buffer_fuzzy_find() end, "Search Buffer" },
  },
})

-- Terminal Mode Mappings
wk.register({
  ["<leader>"] = {
    t = {
      name = "Toggle",
      t = { function() ft.toggle() end, "Terminal" },
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
