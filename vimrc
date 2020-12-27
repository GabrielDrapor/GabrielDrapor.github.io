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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme pablo
