return function()
  local g = vim.g

  g.indentLine_char = '▏'
  g.indentLine_color_term = 0
  g.indentLine_bgcolor_term = 'NONE'
  g.indentLine_color_gui = '#3b4252'
  g.indentLine_bgcolor_gui = 'NONE'

  g.vim_json_syntax_conceal = 0
  g.vim_markdown_conceal = 0
  g.vim_markdown_conceal_code_blocks = 0
end
