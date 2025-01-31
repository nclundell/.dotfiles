-- OPTIONS --
local o = vim.opt

o.autoindent = true      -- Enable autoindent (copy indent from current line)
o.breakindent = true     -- Enable breakindent (indent wrapped lines)
o.expandtab = true       -- Expand tabs to spaces
o.foldcolumn = '0'       -- Disable fold Column
o.foldenable = true      -- Enable line folding
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
o.fillchars = "fold: "
o.foldlevel = 1         -- Set intitial fold level on buffer open
o.foldmethod = 'expr'
o.foldminlines = 1
o.foldnestmax = 5
o.number = true          -- Show line numbers
o.relativenumber = true  -- Show relative line numbers
o.scrolloff = 10         -- Set scrolloff to 10 (scroll lines from top/bottom)
o.signcolumn = 'yes'     -- Set sign coloumn to yes (always)
o.shiftwidth = 2         -- Set shiftwidth to 2
o.smartindent = true     -- Enable smartindent (autoindent new lines)
o.softtabstop = 2        -- Set softtabstop to 2
o.tabstop = 2            -- Set tabstop to 2

-- GLOBAL OPTIONS --
local go = vim.opt_global

go.autoread = true                         -- Automatically read file if changed outside of vim
go.backspace = {'indent', 'eol', 'start'}  -- Allow backspacing over everything in insert mode
go.backup = false                          -- Disable backup files
go.writebackup = false                     -- Disable backup files
go.clipboard = {'unnamedplus'}             -- Use system clipboard
go.completeopt = {'menuone', 'noinsert', 'noselect', 'preview'}  -- Set completion options
go.hidden = true                           -- Allow hidden buffers
go.ignorecase = true                       -- Ignore case when searching
go.incsearch = true                        -- Incremental searching
go.infercase = true                        -- Infer case when searching
go.mouse = 'a'                             -- Enable mouse support
go.ruler = false                           -- Show the line and column number of the cursor position
go.shortmess:append('WoC')                 -- Set shortmess options (filnxtToOFcWoC)
go.showmode = false                        -- Hide mode in command area
go.smartcase = true                        -- Use smart case when searching
go.splitbelow = true                       -- Split below current windows
go.splitright = true                       -- Split right of current windows
go.swapfile = false                        -- Disable swap files
go.termguicolors = true                    -- Use true color in terminal
go.undofile = true                         -- Enable persistent undofile
go.virtualedit = 'block'                   -- Enable block virtual edit
-- go.wildmenu = true                         -- Enable wildmenu
-- go.wildmode = 'list:longest'               -- Set wildmode to list:longest
