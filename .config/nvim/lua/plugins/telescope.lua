return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-live-grep-args.nvim',
    -- This will not install any breaking changes.
    -- For major updates, this must be adjusted manually.
    version = '^1.0.0',
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    telescope.load_extension('live_grep_args')

    telescope.setup {
      defaults = {
        layout_strategy = 'vertical',
        mappings = {
          i = {
            ['<S-Down>'] = actions.cycle_history_next,
            ['<S-Up>'] = actions.cycle_history_prev,
            ['<c-e>'] = actions.delete_buffer
          }
        }
      }
    }
  end,
  -- enabled = false
}
