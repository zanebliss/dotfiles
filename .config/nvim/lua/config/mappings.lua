local function opts(prefix, desc)
  return {
    desc = prefix .. ': ' .. desc,
  }
end

-- general
vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true })
vim.keymap.set('n', '<leader>vr', ':split ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', '<leader>so', ':source ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', '<leader>pv', ':Explore<cr>')
vim.keymap.set({ 'n', 'v' }, '<Leader>y', '"+y', opts('CLIPBOARD', 'copy to system'))

-- vim-test
vim.keymap.set('n', '<leader>s', ':TestNearest<cr>', { silent = true })
vim.keymap.set('n', '<leader>t', ':TestFile<cr>', { silent = true })
vim.keymap.set('n', '<leader>a', ':TestSuite<cr>', { silent = true })
vim.keymap.set('n', '<leader>l', ':TestLast<cr>', { silent = true })
vim.keymap.set('n', '<leader>g', ':TestVisit<cr>', { silent = true })

-- buffers
vim.keymap.set('n', '<leader>bd', ':ls<cr>:bd<space>')
vim.keymap.set('n', '<leader>w', ':bd<cr>')
vim.keymap.set('n', '<leader>W', ':%bd<cr>')

-- tags
-- vim.keymap.set('n', '<leader>tn', ':tnext<cr>', { silent = true })
-- vim.keymap.set('n', '<leader>tp', ':tprev<cr>', { silent = true })
-- vim.keymap.set('n', '<leader>ta', ':!.git/hooks/ctags<cr>', { silent = true })
-- vim.keymap.set('n', '<leader>r',
--   ':!ctags -R . --languages=-CSS,SCSS,SQL,JavaScript --exclude=node_modules --exclude=public --exclude=test --exclude=spec --exclude=assets<cr>',
--   { silent = true })

-- pane movement
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-l>', '<c-w>l')

-- clear highlight search
vim.keymap.set('n', '<esc>', '<esc>:noh<cr>', { silent = true })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '\\', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>;', builtin.registers, {})
vim.keymap.set('n', '<leader>;', builtin.registers, {})
vim.keymap.set('n', '<leader>g', builtin.lsp_document_symbols, {})


-- fzf-lua
-- local builtin = require('fzf-lua')
-- vim.keymap.set('n', '<c-p>', builtin.files, {})
-- -- vim.keymap.set('n', '\\', ':FzfLua grep<CR>', {})
-- vim.keymap.set('n', '\\', builtin.live_grep, {})
-- -- vim.keymap.set('n', '<c-l>', builtin.tags, {})
-- vim.keymap.set('n', '<c-b>', builtin.buffers, {})
-- -- vim.keymap.set('n', '<c-k>', builtin.commands, {})
