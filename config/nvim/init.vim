
"General Settings {{{
set nocompatible "vim, not vi
filetype plugin indent on
set relativenumber
set tabstop=4
set background=dark
syntax enable
set laststatus=2
" }}}

" Plugin Installs {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive', {'tag': 'v2.3'}  "downgraded to version 2.3 via git tags to fix branch visibility
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'vimlab/split-term.vim'
Plug 'felixhummel/setcolors.vim' "This plugin goes to a next color scheme with F8
Plug 'majutsushi/tagbar'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" All of your Plugins must be added before the following line
call plug#end()
"}}}

" Plugin Settings {{{
let g:deoplete#enable_at_startup = 1
" Set python paths for deoplete
let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"
let g:ruby_host_prog = "/usr/bin/ruby"
" Preview window using coderay (brew) syntax highlighting
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
" }}}
" Remappings {{{
" No arrow keys for you!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
map <C-n> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>
"}}}

" Color Schemes {{{
colorscheme molokai
" }}}
" vim:foldmethod=marker:foldlevel=0
