vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*.markdown', 'gitcommit' },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.complete:append('kspell')
  end
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'gitcommit' },
  callback = function()
    vim.opt_local.colorcolumn = '50,72'
  end
})
