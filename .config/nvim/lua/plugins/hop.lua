return {
  'smoka7/hop.nvim',
  version = "*",
  opts = {},
  config = function()
    -- place this in one of your configuration file(s)
    local hop = require('hop')
    hop.setup {
      vim.keymap.set('', '<c-f>', ':HopWord<CR>'),
      vim.keymap.set('', '<c-t>', ':HopAnywhere<CR>'),
    }
  end
}
