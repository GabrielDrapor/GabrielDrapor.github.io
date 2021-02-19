nnoremap j 4j
nnoremap k 4k
nnoremap <Up> gk
nnoremap <Down> gj
nnoremap <C-B> <C-W>p
nnoremap gi :GitGutterSignsToggle<CR>
nnoremap gn :set number! number?<CR>
nnoremap gu :GitGutter<CR>
nnoremap gb :Black<CR>
nnoremap ha :Ack!
nnoremap zz zA
nnoremap r zR
nnoremap <C-Q> <C-W>q<CR>
nnoremap tt :CtrlP<CR>
nnoremap ff :FZF<CR>
nnoremap hh :History<CR>
nnoremap ga :call fzf#vim#files('.', {'options':'--query '.expand(<cword>)})<CR>

call plug#begin()
Plug 'universal-ctags/ctags'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'psf/black'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()


set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set tabstop=4
set backspace=indent,eol,start
set hlsearch
set expandtab
set autoindent
set foldmethod=indent
set noswapfile
set completeopt-=preview

autocmd BufReadPost *.py
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

au BufNewFile *.py 0r ~/.vim/skeleton/py_skeleton

syntax on
colorscheme pablo

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

