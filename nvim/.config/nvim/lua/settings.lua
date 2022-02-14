local bo = vim.bo
local g = vim.g
local go = vim.o
local wo = vim.wo

-- Global Settings --
  
-- Global Options --
  -- Colors
  vim.o.termguicolors = true
  vim.cmd [[ colorscheme dracula ]]
  vim.cmd [[ syntax on ]]

  -- Re-read File When Changed Optside of Vim
  go.autoread = true

  -- Better Backspace Behavior
  go.backspace = 'indent,eol,start'

  -- Completion and Suggestions
  go.completeopt = 'menuone,noinsert,noselect,preview'

  -- Hide Buffers Instead of Closing
  go.hidden = true

  -- Enable Mouse --
  go.mouse = 'a'

  -- Show Column/Row Number
  go.ruler = false

  -- Scoll Lines From Top
  go.scrolloff = 10

  -- Shortmess Settings
  go.shortmess = 'filnxtToOFc'

  -- Show Mode in Command Area
  go.showmode = false

  -- Split Below
  go.splitbelow = true

  -- Vsplit To The Right
  go.splitright = true

  -- Disable Swap Files
  go.swapfile = false

  -- True Color Support
  go.termguicolors = true

  -- Wildmenu Settings
  go.wildmenu = true
  go.wildmode = 'list:longest'

-- Buffer Options --

-- Window Options --
  -- Enable Line Numbering 
  wo.number = true
  wo.relativenumber = true

  -- Enable Sign Column
  wo.signcolumn = 'yes'

  -- Folding --
  vim.wo.foldmethod = 'expr'
  vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'


