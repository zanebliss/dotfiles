return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require('nvim-treesitter.configs')

      configs.setup({
        ensure_installed = { 'ruby', 'rust', 'vimdoc', 'query', 'javascript', 'html' },
        sync_install = true,
        highlight = { enable = true },
      })
    end
  },
}
