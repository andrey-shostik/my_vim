set nocompatible
call plug#begin('~/.vim/plugged')
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'airblade/vim-gitgutter'
  Plug 'gregsexton/gitv'
  Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
  Plug 'vim-ruby/vim-ruby'
  Plug 'xuyuanp/nerdtree-git-plugin'
  Plug 'scrooloose/nerdtree' " Best explorer vim
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-fugitive'
  Plug 'bling/vim-airline'
  Plug 'kien/ctrlp.vim' " Easy searcing in explorer
  Plug 'easymotion/vim-easymotion' " Easy searching in document
  Plug 'slim-template/vim-slim'
  Plug 'terryma/vim-multiple-cursors' " a lot of cursor, touch ctrl-m
  Plug 'ryanoasis/vim-devicons' " one problem in <m> nerd tree
  Plug 'FroSTD/frostd-snippets.vim'
  Plug 'FuzzyFinder'
  Plug 'L9'
  Plug 'thoughtbot/vim-rspec'
  Plug 'rhysd/vim-crystal'
  Plug 'Raimondi/delimitMate'
  Plug 'p0deje/vim-ruby-interpolation'
  Plug 'vim-scripts/Gundo'
  Plug 'mhinz/vim-startify'
  Plug 'kchmck/vim-coffee-script'

call plug#end()
filetype plugin indent on

" Gui settings
set guifont=Inconsolata-g\ for\ Powerline\ 9
colorscheme vimbrant

" Custom vim
set linebreak
set clipboard=unnamed
set clipboard=unnamedplus
set encoding=utf8
set nu
set rnu
set expandtab ts=2 sw=2 ai
set showtabline=2
set noswapfile
set list
set listchars=trail:•
set t_Co=256                                                                    "Set 256 colors
set scrolloff=5                                                                 "Start scrolling when we're 3 lines away from margins

" Hide scrolls
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set laststatus=2
set linespace=2

" FuzzyFinder as Ctrl-o
map <C-o> :FufCoverageFile<CR>

" CtrlP
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

" Rubocop activate
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" Airline configuration
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'luna'
map <C-n> :NERDTreeToggle<CR>

" Clean spaces during saving
autocmd BufWritePre * :%s/\s\+$//e

" Hotkey Nerdtree setting
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-0> 10gt

let g:NERDTreeChDirMode = 2                                                     "Always change the root directory
let g:NERDTreeMinimalUI = 1                                                     "Disable help text and bookmark title
let g:NERDTreeIgnore=['\.git$', '\.sass-cache$', '\.vagrant', '\.idea']

" Rails
map gV :Eview<CR>
map gC :Econtroller<CR>
map gM :Emodel<CR>
map gH :Ehelper<CR>
map gJ :Ejavascript<CR>
map gS :Estylesheet<CR>
map gk :Gitv<CR>

" Select and move line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Easy motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Syntastic config
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_highlighting = 0

" My change in multi_cursor hotkey
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_start_key='<C-m>'
let g:multi_cursor_start_word_key='g<C-m>'

" Map save to Ctrl + S
map <c-s> :w<CR>
imap <c-s> <C-o>:w<CR>

" Other settings
let g:enable_bold_font = 1
nnoremap <F5> :GundoToggle<CR>
