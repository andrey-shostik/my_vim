# Installation
     sudo apt-get install vim-gtk
     mkdir ~/.fonts
     git clone https://github.com/andrey9828/my_vim.git ~/.vim && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && cd ~/.vim/.fonts && mv * ~/.fonts/ && rm -fr ~/.vim/.fonts && cd ~/.vim/bundle/vim-airline/autoload/airline/themes .vimcurl -O https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/luna.vim
Open vim and run next command: `:PluginInstall`
