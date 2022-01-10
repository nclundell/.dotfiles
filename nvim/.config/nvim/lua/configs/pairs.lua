local npairs = require('nvim-autopairs')

npairs.setup{}

-- Add Endwise Rules 
npairs.add_rules(require('nvim-autopairs.rules.endwise-lua'))
npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))
