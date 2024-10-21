function ColoVim()
  vim.cmd('color vim')
  vim.cmd [[highlight! NormalFloat guibg=none]]
  vim.cmd [[highlight! Pmenu guifg=#FFFFFF guibg=none]] -- colo vim
  vim.cmd [[highlight! PmenuSel guifg=#FFFFFF guibg=#555555]] -- colo vim
  vim.cmd [[highlight! SignColumn guibg=none]] -- colo vim
  vim.cmd [[highlight! LspInlayHint guifg=#707070]]
  vim.cmd [[highlight! Comment guifg=#707070 guibg=NONE gui=italic]]
  vim.cmd [[highlight! DiagnosticUnderlineHint gui=undercurl]]
  vim.cmd [[highlight! DiagnosticUnderlineError gui=undercurl guisp=Red]]
  vim.cmd [[highlight! DiagnosticUnderlineWarn  gui=undercurl guisp=Orange]]
  vim.cmd [[highlight! DiagnosticUnderlineInfo gui=undercurl guisp=LightBlue]]
  vim.cmd [[highlight! DiagnosticUnderlineHint gui=undercurl guisp=LightGrey]]
  vim.cmd [[highlight! DiagnosticUnderlineOk gui=undercurl guisp=LightGreen]]
  vim.cmd [[highlight! DiagnosticHint gui=italic guifg=#707070]]
  vim.cmd [[highlight! DiagnosticWarn gui=italic guifg=Orange]]
  vim.cmd [[highlight! DiagnosticError gui=italic guifg=Red]]
end
