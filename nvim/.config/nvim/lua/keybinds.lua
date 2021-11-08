local cmp = require('cmp')
local wk = require("which-key")

-- Normal Mode
wk.register({
  ['<ESC>'] = { "<CMD> nohl <CR>", "Disable Highlight", noremap = true },
  ['<C-n>'] = { cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), "Select Next Item" },
  ['<C-p>'] = { cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), "Select Previous Item" },
  ['<Tab>'] = { cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), "Select Next Item" },
  ['<S-Tab>'] = { cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), "Select Previous Item" },
  ['<C-d>'] = { cmp.mapping.scroll_docs(-4), "Scroll Up" },
  ['<C-f>'] = { cmp.mapping.scroll_docs(4), "Scroll Down" },
  ['<C-Space>'] = { cmp.mapping.complete(), "Complete Selection" },
  ['<C-e>'] = { cmp.mapping.close(), "Close Popup" },
  ['<CR>'] = { cmp.mapping.confirm({
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  }), "Select Item" },
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
