return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    {
      'tpope/vim-dadbod',
      lazy = true
    },
    {
      'kristijanhusak/vim-dadbod-completion',
      ft = {
        'sql',
        'mysql',
        'plsql'
      },
      lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1

    vim.api.nvim_create_autocmd(
      'FileType',
      {
        pattern = {
          'sql'
        },
        command = 'setlocal omnifunc=vim_dadbod_completion#omni'
      }
    )
  end,
}
