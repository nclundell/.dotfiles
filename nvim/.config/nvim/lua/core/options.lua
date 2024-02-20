local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local go = vim.go
local o = vim.o

-- Autoread
vim.g.autoread = true

-- Backspace
opt.backspace = 'indent,eol,start'

-- Backup
opt.backup = false
opt.writebackup = false

-- Buffers
opt.hidden = true

-- Clipboard
opt.clipboard = 'unnamedplus'

-- Colorscheme
opt.termguicolors = true
cmd.colorscheme('tokyonight')
cmd.syntax('on')

-- Completion and Suggestions
opt.completeopt = 'menuone,noinsert,noselect,preview'

-- Editing
opt.ignorecase = true
opt.incsearch = true
opt.infercase = true
opt.smartcase = true

-- Filetype
cmd('filetype plugin indent on')

-- Folding
-- opt.foldmethod = 'expr'
-- opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldcolumn = '0'
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true

-- Line Numbering 
vim.o.number = true
vim.o.relativenumber = true

-- Messages
-- opt.shortmess = 'filnxtToOFc'
opt.shortmess:append('WoC')

-- Mouse
opt.mouse = 'a'

-- Scoll Lines From Top
opt.scrolloff = 9999

-- Show Column/Row Number
opt.ruler = false

-- Show Mode in Command Area
opt.showmode = false

-- Sign Column
vim.o.signcolumn = 'yes'

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Swap
opt.swapfile = false

-- Undo (Persistent)
opt.undofile = true

-- VirtualEdit
opt.virtualedit = 'block'

-- Wildmenu
opt.wildmenu = true
opt.wildmode = 'list:longest'
