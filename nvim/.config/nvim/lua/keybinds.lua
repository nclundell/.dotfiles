local dv = require('diffview')
local ft = require('FTerm')
local nt = require('nvim-tree')
local tr = require('trouble')
local ts = require('telescope')
local tb = require('telescope.builtin')
local wk = require("which-key")

local dropdown_layout = require('telescope.themes').get_dropdown({ previewer = false })

-- Define Leader
vim.g.mapleader = ','

-- Test
-- Normal Mode Mappings
wk.register({
  ['<ESC>'] = { "<CMD> nohl <CR>", "Disable Highlight"},
  ['<C-A-j>'] = { "<CMD> tabnext <CR>", "Next Tab" },
  ['<C-A-k>'] = { "<CMD> tabprev <CR>", "Prev Tab" },
  ["<C-h>"] = { "<C-w>h", "Move Left One Pane" },
  ["<C-j>"] = { "<C-w>j", "Move Down One Pane" },
  ["<C-k>"] = { "<C-w>k", "Move Down Up Pane" },
  ["<C-l>"] = { "<C-w>l", "Move Right One Pane" },
  ["<Space>"] = { "@=(foldlevel('.')?'za': '<Space>')<CR>", "(Un)Fold" },
  ["<leader>"] = {
    a = { "<Plug>(EasyAlign)", "Align" },
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
	name = "Diff",
	c = { function() dv.close() end, "Close" },
	o = { function() dv.open() end, "Open" }
      },
      f = { function() tb.git_files() end, "Files" },
      t = { function() ft.scratch({cmd = 'lazygit'}) end, "Terminal" },
    },
    p = { function() tb.builtin() end, "Telescope" },
    q = { "<CMD> bd <CR>", "Close Buffer" },
    s = {
      name = "Select",
      b = { function() ts.extensions.tele_tabby.list(dropdown_layout) end, "Buffers" }, 
      c = { function() tb.colorscheme(dropdown_layout) end, "ColorSchemes" },
      t = {
	name = "Tmux",
	s = { function() ts.extensions.tmux.sessions(dropdown_layout) end, "Sessions" },
	w = { function() ts.extensions.tmux.windows(dropdown_layout) end, "Windows" }
      }
    },
    t = {
      name = "Toggle",
      d = { function() tr.toggle() end, "Diagnostics" },
      e = { function() nt.toggle() end, "Tree Explorer" },
      p = { function() ft.scratch({cmd = 'htop'}) end, "System Processes" },
      t = { function() ft.toggle() end, "Terminal" },
    },
    w = { "<CMD> w <CR>", "Write Buffer" },
    x = { "<CMD> x <CR>", "Write and Quit" },
    ["/"] = { function() tb.grep_string() end, "Search" },
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
  a = { "<Plug>(EasyAlign)", "Align" },
}, {
  mode = "x"
})
