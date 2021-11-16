local ft = require('FTerm')
local ng = require('neogit')
local nt = require('nvim-tree')
local ts = require('telescope')
local te = require('telescope').extensions
local tb = require('telescope.builtin')
local wk = require("which-key")

local dropdown_layout = require('telescope.themes').get_dropdown({ previewer = false })

-- Define Leader
vim.g.mapleader = ','

-- Normal Mode Mappings
wk.register({
  ['<ESC>'] = { "<CMD> nohl <CR>", "Disable Highlight"},
  ["<C-h>"] = { "<C-w>h", "Move Left One Pane" },
  ["<C-j>"] = { "<C-w>j", "Move Down One Pane" },
  ["<C-k>"] = { "<C-w>k", "Move Down Up Pane" },
  ["<C-l>"] = { "<C-w>l", "Move Right One Pane" },
  ["<Space>"] = { "@=(foldlevel('.')?'za': '<Space>')<CR>", "(Un)Fold" },
  ["<leader>"] = {
    a = { "<Plug>(EasyAlign)", "Align" },
    d = { "<CMD> DBUIToggle <CR>", "Database" },
    e = {
      name = "Explore",
      b = { function() tb.file_browser() end, "Browser" },
      t = {function() nt.toggle() end,  "Tree" }
    },
    f = {
      name = "Find",
      f = { function() tb.find_files() end, "Files" }, 
      p = { function() te.packer.plugins() end, "Plugins" }, 
      v = { function() tb.treesitter() end, "Variables" }, 
      w = { function() tb.grep_string() end, "Word" } 
    },
    g = {
      name = "Git",
      b = { function() tb.git_branches() end, "Branches" },
      c = { function() tb.git_commits() end, "Commits" },
      f = { function() tb.git_files() end, "Files" },
      s = { function() ng.open() end, "Status" },
    },
    p = { function() tb.builtin() end, "Telescope" },
    q = { "<CMD> bd <CR>", "Close Buffer" },
    s = {
      name = "Select",
      b = { function() te.tele_tabby.list(dropdown_layout) end, "Buffers" }, 
      c = { function() tb.colorscheme(dropdown_layout) end, "ColorSchemes" },
      t = {
	name = "Tmux",
	s = { function() te.tmux.sessions(dropdown_layout) end, "Sessions" },
	w = { function() te.tmux.windows(dropdown_layout) end, "Windows" }
      }
    },
    t = {
      name = "Terminal",
      g = { function() ft.scratch({cmd = 'lazygit'}) end, "Git" },
      h = { function() ft.scratch({cmd = 'htop'}) end, "System Processes" },
      t = { function() ft.toggle() end, "Toggle" },
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
      name = "Terminal",
      q = { function() ft.exit() end, "Quit" },
      t = { function() ft.toggle() end, "Toggle" },
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
