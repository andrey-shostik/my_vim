set nocompatible
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree' " Best explorer vim
  Plug 'scrooloose/syntastic' " Support more syntax
  Plug 'vim-ruby/vim-ruby' " Support ruby
  Plug 'tpope/vim-rails' " Support rails
  Plug 'tpope/vim-fugitive' " Git possibility in vim
  Plug 'gregsexton/gitv' " use :Gitv show beautiful commit history
  Plug 'airblade/vim-gitgutter' " git show added line
  Plug 'xuyuanp/nerdtree-git-plugin' " Git ico in nerdtree and more
  Plug 'bling/vim-airline' " Status powerline
  Plug 'kien/ctrlp.vim' " Easy searcing in explorer
  Plug 'easymotion/vim-easymotion' " Easy searching in document
  Plug 'slim-template/vim-slim' " Support slim
  Plug 'terryma/vim-multiple-cursors' " A lot of cursor, touch ctrl-m
  Plug 'ryanoasis/vim-devicons' " icons
  Plug 'FroSTD/frostd-snippets.vim' "Den sAutocompleteippet
  Plug 'L9' " For correct work vim
  Plug 'p0deje/vim-ruby-interpolation' " Easy interpolation
  Plug 'mhinz/vim-startify' " Fast history home page
  Plug 'Valloric/MatchTagAlways' "Improve show html
  Plug 'jiangmiao/auto-pairs' " auto close some brackets
  Plug 'godlygeek/tabular' " alignment plugin
  " Plug 'valloric/youcompleteme' " Autocomplete
  Plug 'gorodinskiy/vim-coloresque'
call plug#end()

" Gui settings
set guifont=Inconsolata-g\ for\ Powerline\ 9
color vimbrant
    " base16-railscasts
    " hybrid_material
    " luna
    " molokai
    " vimbrant

" Default vim config
set linebreak
set clipboard=unnamedplus
set encoding=utf8
set nu
set rnu
set expandtab ts=2 sw=2 ai
set showtabline=2
set noswapfile
set list
set listchars=trail:• " ,eol:¬ ,extends:❯,precedes:❮,tab:▸\
set t_Co=256                                                                    " Set 256 colors
set scrolloff=5                                                                 " Start scrolling when we're 5 lines away from margins
let g:enable_bold_font = 1
set showbreak=↪

" Hide scrolls
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set laststatus=2
set linespace=2

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

" Kill trailing spaces on save file
autocmd BufWritePre * :%s/\s\+$//e

" Nerdtree setting
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

" Rails go model/view/controller
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
