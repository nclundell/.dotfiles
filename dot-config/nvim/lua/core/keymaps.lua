local map = require("core.utils").map

-- Folding
map(";", '@=(foldlevel(".")?"za": ";") <CR>')

-- Window Movement
map('<C-h>', [[<C-w>h]], { desc = "Move to left window"  })
map('<C-j>', [[<C-w>j]], { desc = "Move to below window" })
map('<C-k>', [[<C-w>k]], { desc = "Move to above window" })
map('<C-l>', [[<C-w>l]], { desc = "Move to right window" })
map('<C-h>', [[<C-\><C-n><C-w>h]], { desc = "Move to left window",  mode = 't' })
map('<C-j>', [[<C-\><C-n><C-w>j]], { desc = "Move to below window", mode = 't' })
map('<C-k>', [[<C-\><C-n><C-w>k]], { desc = "Move to above window", mode = 't' })
map('<C-l>', [[<C-\><C-n><C-w>l]], { desc = "Move to right window", mode = 't' })

-- Write and Close Files
-- map('n', '<leader>c', '<CMD> bd <CR>', { noremap = true })
-- map('n', '<leader>C', '<CMD> bd! <CR>', { noremap = true })
map("<leader>q", "<CMD> q <CR>")
map("<leader>Q", "<CMD> qa! <CR>")
map("<leader>w", "<CMD> w <CR>")
map("<leader>W", "<CMD> wa! <CR>")

-- Indent and Unindent
map(">", ">gv", { mode = "x" })
map("<", "<gv", { mode = "x" })

-- Terminal Mode
map('<C-g>', [[<C-\><C-n>]], { desc = 'Exit Terminal Mode', mode = 't' })
