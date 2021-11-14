local g = vim.g

local ft = require('FTerm')
local ng = require('neogit')
local nt = require('nvim-tree')
local ts = require('telescope')
local tb = require('telescope.builtin')
local wk = require("which-key")

-- Define Leader
g.mapleader = ','

-- Normal Mode Mappings
wk.register({
  ['<ESC>'] = { "<CMD> nohl <CR>", "Disable Highlight"},
  ["<C-h>"] = { "<C-w>h", "Move Left One Pane" },
  ["<C-j>"] = { "<C-w>j", "Move Down One Pane" },
  ["<C-k>"] = { "<C-w>k", "Move Down Up Pane" },
  ["<C-l>"] = { "<C-w>l", "Move Right One Pane" },
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
      p = { function() require('telescope.builtin').builtin() end, "Telescope" },
      q = { "<CMD> bd <CR>", "Close Buffer" },
      s = {
	name = "Select",
	c = { function() tb.require('telescope.builtin').colorscheme() end, "ColorSchemes" },
	p = { function() ts.extensions.packer.plugins() end, "Plugins" }, 
	t = { function() ts.extensions.tele_tabby.list() end, "Tabs" }, 
      },
      t = {
	name = "Terminal",
	g = { function() ft.scratch({cmd = 'lazygit'}) end, "Git" },
	t = { function() ft.toggle() end, "Toggle" },
      },
      w = { "<CMD> w <CR>", "Write Buffer" },
      x = { "<CMD> x <CR>", "Write and Quit" },
      ["/"] = { function() tb.grep_string() end, "Search" },
      
    },
    ["<Space>"] = { "@=(foldlevel('.')?'za': '<Space>')<CR>", "(Un)Fold" },
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
