set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
Plugin 'easymotion/vim-easymotion'
Plugin 'honza/vim-snippets'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'slim-template/vim-slim'
Plugin 'rhysd/wandbox-vim'
Plugin 'tomasr/molokai'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

set linebreak
set clipboard=unnamed
set clipboard=unnamedplus
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar
set cursorline
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set autoindent
set smartindent
set nobackup
set nowritebackup
set noswapfile
set encoding=utf8
"set nu
set rnu
set laststatus=2
set linespace=2

set guifont=Inconsolata-gforPowerline\ 11
let g:molokai_original = 1
set background=dark
"colorscheme molokai
"colorscheme luna
"colorscheme vimbrant
"colorscheme railscasts
"colorscheme vimbrant
"colorscheme solarized
"colorscheme monokai
colorscheme gruvbox

let g:monokai_thick_border = 1
map <C-n> :NERDTreeToggle<CR>
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" hotkey Nerdtree Tabs
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-S-w> <Esc>:tabclose<CR>

nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt
" hotkey Easymotion Tabs
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

" Rails
map gV :Eview<CR>
map gC :Econtroller<CR>
map gM :Emodel<CR>
map gH :Ehelper<CR>
map gJ :Ejavascript<CR>
map gS :Estylesheet<CR>

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

let g:syntastic_ruby_checkers = ['mri', 'rubocop']

let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_start_key='<C-m>'
let g:multi_cursor_start_word_key='g<C-m>'

