# Installation
     sudo apt-get install vim-gtk
     mkdir ~/.fonts
     cd ~/ && rm -fr .vim/ && git clone https://github.com/andrey9828/my_vim.git ~/.vim && cd ~/.fonts && curl -o Inconsolata-gforPowerline https://gitlab.com/vim_toolset/vim-powerline-fonts/raw/4151af0d071503fa7f728dc7779370059258a0e9/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf && vim +PlugInstall +qall \
Open vim and run next command: `:PlugInstall`
### Install luna theme in airline
     cd ~/.vim/plugged/vim-airline/autoload/airline/themes && curl -O https://raw.githubusercontent.com/vim-airline/vim-airline-themes/master/autoload/airline/themes/luna.vim
