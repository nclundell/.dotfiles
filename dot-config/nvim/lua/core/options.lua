-- OPTIONS --
local o = vim.opt

o.autoindent = true      -- Enable autoindent (copy indent from current line)
o.breakindent = true     -- Enable breakindent (indent wrapped lines)
o.expandtab = true       -- Expand tabs to spaces
o.foldcolumn = '0'       -- Disable fold Column
o.foldenable = true      -- Enable line folding
o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
o.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
o.fillchars = "fold: "
o.foldlevel = 1         -- Set intitial fold level on buffer open
o.foldmethod = 'expr'
o.foldminlines = 1
o.foldnestmax = 5
o.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
o.number = true          -- Show line numbers
o.relativenumber = true  -- Show relative line numbers
o.scrolloff = 10         -- Set scrolloff to 10 (scroll lines from top/bottom)
o.signcolumn = 'yes'     -- Set sign coloumn to yes (always)
o.shiftwidth = 2         -- Set shiftwidth to 2
o.smartindent = true     -- Enable smartindent (autoindent new lines)
o.softtabstop = 2        -- Set softtabstop to 2
o.tabstop = 2            -- Set tabstop to 2
