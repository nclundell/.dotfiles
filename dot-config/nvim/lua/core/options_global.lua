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

-- Folding
go.fillchars = 'fold: '
go.foldenable = true
go.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
go.foldlevel = 1
go.foldmethod = 'expr'
go.foldminlines = 1
go.foldnestmax = 5
go.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
