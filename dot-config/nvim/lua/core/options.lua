-- OPTIONS --
local o = vim.opt

o.scrolloff = 10         -- Set scrolloff to 10 (scroll lines from top/bottom)
o.signcolumn = 'yes'     -- Set sign coloumn to yes (always)

-- Indentation
o.autoindent = true      -- Enable autoindent (copy indent from current line)
o.breakindent = true     -- Enable breakindent (indent wrapped lines)
o.expandtab = true       -- Expand tabs to spaces
o.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
o.shiftwidth = 2         -- Set shiftwidth to 2
o.smartindent = true     -- Enable smartindent (autoindent new lines)
o.softtabstop = 2        -- Set softtabstop to 2
o.tabstop = 2            -- Set tabstop to 2

-- Line Numbers
o.number = true          -- Show line numbers
-- o.relativenumber = true  -- Show relative line numbers
