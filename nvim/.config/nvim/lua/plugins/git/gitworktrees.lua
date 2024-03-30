return {
  'ThePrimeagen/git-worktree.nvim',
  opts = {},
  keys = {
    { '<leader>ow', function() require('telescope').extensions.git_worktree.git_worktrees() end, desc = 'Open Git Worktrees' },
    { '<leader>oW', function() require('telescope').extensions.git_worktree.create_git_worktree() end, desc = 'Create Git Worktree' }
  }
}
