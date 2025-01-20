return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = { preset = 'super-tab' },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500
      },
      ghost_text = {
        enabled = true
      },
      list = {
        selection = {
          preselect = true,
          auto_insert = false
        }
      },
      menu = {
        draw = {
          columns = {
            { 'label', 'label_description', gap = 1 },
            { 'kind_icon', 'kind' }
          }
        }
      }
    },
    sources = {
      default = { 'dadbod', 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        dadbod = {
          name = 'Dadbod',
          module = 'vim_dadbod_completion.blink'
        },
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink'
        }
      }
    },
    signature = { enabled = true }
  }
}
