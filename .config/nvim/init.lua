require('colors.vim')
require('colors.quiet')

-- autocmds
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
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.opt.list = false
  end
})
--

---- leader
vim.g.mapleader = ' '
--

-- lazy package manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',   -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugins')
--

-- opts
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.colorcolumn = '80'
vim.opt.undofile = true
--

-- mappings
vim.keymap.set({ 'n', 'v' }, '<Leader>y', '"+y')
---- vim-test
vim.keymap.set('n', '<leader>s', ':TestNearest<cr>', { silent = true })
vim.keymap.set('n', '<leader>t', ':TestFile<cr>', { silent = true })
vim.keymap.set('n', '<leader>a', ':TestSuite<cr>', { silent = true })
vim.keymap.set('n', '<leader>l', ':TestLast<cr>', { silent = true })
vim.keymap.set('n', '<leader>g', ':TestVisit<cr>', { silent = true })
---- telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<c-p>', builtin.git_files, {})
-- vim.keymap.set('n', '\\', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
-- vim.keymap.set('n', '<leader>b', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>;', builtin.registers, {})
-- vim.keymap.set('n', '<leader>;', builtin.registers, {})
-- vim.keymap.set('n', '<leader>g', builtin.lsp_document_symbols, {})
---- fzf-lua
local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>pf', fzf.files, {})
vim.keymap.set('n', '<c-p>', fzf.git_files, {})
vim.keymap.set('n', '\\', fzf.live_grep, {})
vim.keymap.set('n', '<leader>b', fzf.buffers, {})
vim.keymap.set('n', '<leader>;', fzf.registers, {})
vim.keymap.set('n', '<leader>;', fzf.registers, {})
vim.keymap.set('n', '<leader>g', fzf.lsp_document_symbols, {})
---- lsp
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
--

ColoVim()
