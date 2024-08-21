set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-bufferline'
Plugin 'dense-analysis/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set foldmethod=indent

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" Enable modified arrow keys, see  :help xterm-modifier-keys
execute "silent! set <xUp>=\<Esc>[@;*A"
execute "silent! set <xDown>=\<Esc>[@;*B"
execute "silent! set <xRight>=\<Esc>[@;*C"
execute "silent! set <xLeft>=\<Esc>[@;*D"

" Breakpoint
nnoremap <silent> br :let a='    import ipdb; ipdb.set_trace()'\|put=a<cr>

" ALE general settings
let g:ale_python_flake8_options = '--max-line-length=93'
let g:ale_completion_enabled = 1

" ALE remaps
nnoremap gd :ALEGoToDefinition<CR>
cnoremap <leader>d :ALEGoToDefinition<CR>
inoremap <leader>d :ALEGoToDefinition<CR>

" ALE colors
hi ALEError ctermbg=174

" Personal shortcuts
