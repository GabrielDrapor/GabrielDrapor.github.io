nnoremap j 4j
nnoremap k 4k
nnoremap <Up> gk
nnoremap <Down> gj
nnoremap <C-B> <C-W>p
nnoremap gi :GitGutterSignsToggle<CR>
nnoremap gn :set number! number?<CR>
nnoremap gu :GitGutter<CR>
nnoremap gb :Black<CR>
nnoremap gp :Prettier<CR>
nnoremap ha :Ack <cword><cr>
nnoremap zz zA
nnoremap r zR
nnoremap <C-Q> <C-W>q<CR>
nnoremap tt :CtrlP<CR>
nnoremap ff :FZF<CR>
nnoremap hh :History<CR>
nnoremap ga :Ag <C-R><C-W><CR>
nnoremap cc :TComment<CR>

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
Plug 'trusktr/seti.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
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
set autoread
" set listchars=tab:»■,trail:↤
" set list
" set wildmenu
" set wildmode=longest:list,full
set termguicolors
set t_Co=256
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:omni_sql_no_default_maps = 1


autocmd BufReadPost *.py
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

au BufNewFile *.py 0r ~/.vim/skeleton/py_skeleton

syntax on
colorscheme wombat256grf

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre *.py :call TrimWhitespace()
autocmd BufWritePre *.thirft :call TrimWhitespace()

" for js
let g:prettier#config#tab_width = 2
let g:prettier#config#print_width = 80

filetype plugin on
