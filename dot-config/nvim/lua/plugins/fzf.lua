vim.pack.add({
  { src = "https://github.com/ibhagwan/fzf-lua" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

local fzf = require('fzf-lua')

fzf.register_ui_select()
fzf.setup {
  fzf_colors = true,
  files = {
    git_icons = true
  },
}

-- Keymaps
local map = require('core.utils').map
local search_picker = {'ivy'}
local select_picker = {
  previewer = false,
  winopts = {
    height = 0.3,
    width = 0.45,
    row = 0.3
  }
}

map('<leader><leader>', function()
  local keymap_picker = vim.tbl_extend(
    'force',
    select_picker,
    { show_details = false }
  )

  fzf.keymaps(keymap_picker)
end, { desc = 'Find Keybindings' })

map('<leader>ff', function()
  fzf.files()
end, { desc = 'Find Files' })

map('<leader>fr', function()
  fzf.oldfiles({
    winopts = {
      title = 'Recent Files'
    }
  }
) end, { desc = 'Find Files' })

map('<leader>fb', function()
  fzf.buffers(select_picker)
end, { desc = 'Find Buffer' })

map('<leader>fh', function()
  fzf.help_tags()
end, { desc = 'Help Tags' })

map('<leader>ft', function()
  fzf.tabs(select_picker)
end, { desc = 'Find Tabs' })

map('<leader>sg', function()
  fzf.live_grep(search_picker)
end, { desc = 'Live Grep' })

map('<leader>sb', function()
 fzf.blines(search_picker)
end, { desc = 'Search Current Buffer' })

map('<leader>sB', function()
 fzf.lines(search_picker)
end, { desc = 'Search Open Buffers' })
