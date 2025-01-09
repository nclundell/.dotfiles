return {
  'ibhagwan/fzf-lua',
  dependencies = {
    'echasnovski/mini.icons'
  },
  opts = {
    'telescope',
    fzf_colors = true,
    fzf_opts = {
      ["--layout"] = "reverse"
    },
    winopts = {
      preview = {
        title = false
      },
      treesitter = {
        enabled = true
      }
    }
  },
  cmd = {
    'FzfLua'
  },
  keys = {
    { '<leader><leader>', '<CMD>FzfLua keymaps winopts.preview.hidden=hidden<CR>', desc = 'List Keymaps' },
    { '<leader>p', '<CMD>FzfLua commands winopts.preview.hidden=hidden<CR>', desc = 'List Commands' },

    -- Find Stuff
    { '<leader>fb', '<CMD>FzfLua buffers winopts.preview.hidden=hidden<CR>', desc = 'Find Buffers' },
    { '<leader>fB', '<CMD>FzfLua tmux_buffers winopts.preview.hidden=hidden<CR>', desc = 'Find Tmux Buffers' },
    { '<leader>ff', '<CMD>FzfLua files<CR>', desc = 'Find Files' },
    { '<leader>fg', '<CMD>FzfLua git_files<CR>', desc = 'Find Versioned Files' },
    { '<leader>fh', '<CMD>FzfLua helptags<CR>', desc = 'Find Help Tags' },
    { '<leader>fq', '<CMD>FzfLua quickfix<CR>', desc = 'Find Quickfix Items' },
    { '<leader>fr', '<CMD>FzfLua oldfiles<CR>', desc = 'Find Recent Files' },

    -- Git Stuff
    { '<leader>gc', '<CMD>FzfLua git_bcommits<CR>', desc = 'Buffer Git Commits' },
    { '<leader>gC', '<CMD>FzfLua git_commits<CR>', desc = 'Project Git Commits' },
    { '<leader>gs', '<CMD>FzfLua git_status<CR>', desc = 'Modified Files' },

    -- Search (Grep) Stuff
    { '<leader>f<space>', '<CMD>FzfLua grep_cword<CR>', desc = 'Search Word Under The Cursor' },
    { '<leader>/', '<CMD>FzfLua grep_curbuf<CR>', desc = 'Search The Current Buffer' },
    { '<leader>?', '<CMD>FzfLua grep_project<CR>', desc = 'Search The Project' },
  }
}
