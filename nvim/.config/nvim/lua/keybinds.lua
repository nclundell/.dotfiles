local wk = require("which-key")

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
	b = { function() require('telescope.builtin').file_browser() end, "Browser" },
	t = {function() require('nvim-tree').toggle() end,  "Tree" }
      },
      f = {
	name = "Find",
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
      s = {
	name = "Select",
	c = { function() require('telescope.builtin').colorscheme() end, "ColorSchemes" },
	p = { function() require('telescope').extensions.packer.plugins() end, "Plugins" }, 
	t = { function() require'telescope'.extensions.tele_tabby.list() end, "Tabs" }, 
      },
      t = {
	name = "Terminal",
	g = { function() require('FTerm').scratch({cmd = 'lazygit'}) end, "Git" },
	t = { function() require('FTerm').toggle() end, "Toggle" },
      },
      w = { "<CMD> w <CR>", "Write Buffer" },
      x = { "<CMD> x <CR>", "Write and Quit" },
      ["/"] = { function() require('telescope.builtin').grep_string() end, "Search" },
      
    },
    ["<Space>"] = { "@=(foldlevel('.')?'za': '<Space>')<CR>", "(Un)Fold" },
  })

-- Terminal Mode Mappings
wk.register({
  ["<leader>"] = {
    t = {
      name = "Terminal",
      q = { function() require('FTerm').exit() end, "Quit" },
      t = { function() require('FTerm').toggle() end, "Toggle" },
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
