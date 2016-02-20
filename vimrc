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
Plugin 'scrooloose/nerdtree' " Best explorer vim
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim' " Easy searcing in explorer
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab' " What is tabs
Plugin 'easymotion/vim-easymotion' " Easy searching in document
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'slim-template/vim-slim'
Plugin 'rhysd/wandbox-vim'
Plugin 'tomasr/molokai' " Theme
Plugin 'terryma/vim-multiple-cursors' " a lot of cursor, touch ctrl-m
Plugin 'morhetz/gruvbox' " Autocompile, touch ctrl-c

call vundle#end()
filetype plugin indent on

" Custom vim
set linebreak
set clipboard=unnamed
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noswapfile
set encoding=utf8
set nu
set rnu
set laststatus=2
set linespace=2

" Hide scrolls
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set laststatus=2

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'luna'
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Gui settings
set guifont=Inconsolata-gforPowerline\ 10
set background=dark
let g:molokai_original = 1
"colorscheme molokai
"colorscheme luna
"colorscheme railscasts
colorscheme vimbrant
"colorscheme solarized
"colorscheme monokai
"colorscheme gruvbox

" Hotkey Nerdtree Tabs
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

" Hotkey Easymotion Tabs
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

" My change in multi_cursor hotkey
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_start_key='<C-m>'
let g:multi_cursor_start_word_key='g<C-m>'

" Other osettings
map <C-c> :Wandbox<CR>
map <C-s> :w<CR>

let g:syntastic_ruby_checkers = ['mri', 'rubocop']
