-- OPTIONS --
local o = vim.opt

-- Completion
o.autocomplete = true
o.complete = { '.' }
-- o.completeitemalign = { 'abbr', 'kind' }
o.completeopt = {'fuzzy', 'menuone', 'noinsert'}

-- Indentation
o.breakindent = true     -- Enable breakindent (indent wrapped lines)
o.autoindent = true      -- Enable autoindent (copy indent from current line)
o.expandtab = true       -- Expand tabs to spaces
-- o.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
o.shiftwidth = 2         -- Set shiftwidth to 2
o.smartindent = true     -- Enable smartindent (autoindent new lines)
o.softtabstop = 2        -- Set softtabstop to 2
o.tabstop = 2            -- Set tabstop to 2

-- Folding
o.fillchars = 'fold: '
o.foldenable = true
o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
o.foldlevel = 1
o.foldmethod = 'expr'
o.foldminlines = 1
o.foldnestmax = 5
o.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]

-- Line Numbers
o.number = true          -- Show line numbers
-- o.relativenumber = true  -- Show relative line numbers

-- Misc
o.scrolloff = 10         -- Set scrolloff to 10 (scroll lines from top/bottom)
o.signcolumn = 'yes'     -- Set sign coloumn to yes (always)
o.autoread = true                         -- Automatically read file if changed outside of vim
o.backspace = {'indent', 'eol', 'start'}  -- Allow backspacing over everything in insert mode
o.backup = false                          -- Disable backup files
o.writebackup = false                     -- Disable backup files
o.clipboard = {'unnamedplus'}             -- Use system clipboard
o.hidden = true                           -- Allow hidden buffers
o.ignorecase = true                       -- Ignore case when searching
o.incsearch = true                        -- Incremental searching
o.infercase = true                        -- Infer case when searching
o.mouse = 'a'                             -- Enable mouse support
o.ruler = false                           -- Show the line and column number of the cursor position
o.shortmess:append('WoC')                 -- Set shortmess options (filnxtToOFcWoC)
o.showmode = false                        -- Hide mode in command area
o.smartcase = true                        -- Use smart case when searching
o.splitbelow = true                       -- Split below current windows
o.splitright = true                       -- Split right of current windows
o.swapfile = false                        -- Disable swap files
o.termguicolors = true                    -- Use true color in terminal
o.undofile = true                         -- Enable persistent undofile
o.virtualedit = 'block'                   -- Enable block virtual edit
-- o.wildmenu = true                         -- Enable wildmenu
-- o.wildmode = 'list:longest'               -- Set wildmode to list:longest
