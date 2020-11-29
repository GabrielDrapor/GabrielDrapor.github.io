nnoremap j 4j
nnoremap k 4k
nnoremap <Up> gk
nnoremap <Down> gj
nnoremap <C-K> :NERDTreeToggle<cr>
nnoremap <C-B> <C-W>p
nnoremap tt :CommandT<CR>
"nnoremap tj :tabprevious<CR>
"nnoremap tk :tabnext<CR>
"nnoremap tt :tabnew<CR>
nnoremap gi :GitGutterSignsToggle<CR>
nnoremap gn :set number! number?<cr>
nnoremap gu :GitGutter<CR>
nnoremap gb :Black<CR>
nnoremap zz zA
nnoremap r zR

call plug#begin()
Plug 'universal-ctags/ctags'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'wincent/command-t'
Plug 'psf/black'
Plug 'valloric/youcompleteme'
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

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

au BufNewFile *.py 0r ~/.vim/skeleton/py_skeleton
