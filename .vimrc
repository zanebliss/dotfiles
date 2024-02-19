" Zane Bliss
" zanebliss@icloud.com

set showcmd
set hidden
set incsearch
set number
set relativenumber
set wildmenu
set wildmode=longest:full,full
set ruler
set nowrap
set foldmethod=syntax
set foldlevel=20
set laststatus=2
set expandtab
set softtabstop=2
set shiftwidth=2
set textwidth=80
set colorcolumn=80
set mouse=a
set noswapfile

filetype plugin indent on
syntax on

" spellcheck
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell
" dictionary autocompletion
autocmd FileType markdown setlocal complete+=kspell
autocmd FileType gitcommit setlocal complete+=kspell

" better line indicators in gitcommit files
autocmd Filetype gitcommit setlocal colorcolumn=50,72

" plugins
call plug#begin()
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'vim-test/vim-test'
  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-fugitive'
  Plug 'sainnhe/gruvbox-material'
  Plug 'ludovicchabant/vim-gutentags'
call plug#end()

" colors
if has('termguicolors')
  set termguicolors
endif
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_foreground = 'original'
let g:gruvbox_material_better_performance = 1
set background=dark
colorscheme gruvbox-material

" add matchit to runtime
runtime macros/matchit.vim

" gutentags
let g:gutentags_cache_dir = expand('~/.ctags.d/gutentags')

" fzf
let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.6, 'relative': v:false, 'yoffset': 1.0 } }
set grepprg=ag\ --nogroup\ --nocolor
nnoremap \ :Ag<SPACE>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" keys
" Switch between last two files
let g:mapleader = ' '
nnoremap <Leader><Leader> <C-^>
" Open vimrc in split
nmap <leader>vr :split ~/.vim/vimrc<cr>
nmap <leader>so :source ~/.vim/vimrc<cr>
" vim-test
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
" unbind screen redraw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Open new splits right and below
set splitbelow
set splitright

" ale
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_linters = {
\   'ruby': ['rubocop', 'solargraph'],
\   'javascript': ['eslint', 'tsserver']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'ruby': ['rubocop']
\}
let g:ale_ruby_solargraph_executable = 'solargraph'
let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 1
set signcolumn=no
set omnifunc=ale#completion#OmniFunc
