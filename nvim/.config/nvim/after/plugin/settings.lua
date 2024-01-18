local cmd = vim.cmd
local opt = vim.opt

-- Autoread
opt.autoread = true

-- Backspace Behavior
opt.backspace = 'indent,eol,start'

-- Clipboard
opt.clipboard = 'unnamedplus'

-- Colorscheme
opt.termguicolors = true
cmd.colorscheme('doom-one')
cmd.syntax('on')

-- Completion and Suggestions
opt.completeopt = 'menuone,noinsert,noselect,preview'

-- Enable Mouse
opt.mouse = 'a'

-- Folding
-- opt.foldmethod = 'expr'
-- opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldcolumn = '0'
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

-- Hide Buffers
opt.hidden = true

-- Improve Colors
opt.termguicolors = true

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line Numbering 
opt.number = true
opt.relativenumber = true

-- Scoll Lines From Top
opt.scrolloff = 9999

-- Shortmess
opt.shortmess = 'filnxtToOFc'

-- Show Column/Row Number
opt.ruler = false

-- Show Mode in Command Area
opt.showmode = false

-- Sign Column
opt.signcolumn = 'yes'

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Swap Files
opt.swapfile = false

-- Tabline
-- opt.showtabline = 2

-- VirtualEdit
opt.virtualedit = 'block'

-- Wildmenu Settings
opt.wildmenu = true
opt.wildmode = 'list:longest'
