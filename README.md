# Installation
     sudo apt-get install vim-gtk
     mkdir ~/.fonts
     cd ~
     && git clone https://github.com/andrey9828/my_vim.git ~/.vim 
     && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
     && cd ~/.fonts 
     && curl -o Inconsolata-gforPowerline.otf https://vk.com/doc147125692_437306065?hash=d440f08883666dc4fc&dl=0f6f03c32fc37d1d9a
Open vim and run next command: `:PluginInstall`
     && cd ~/.vim/bundle/vim-airline/autoload/airline/themes && curl -O      https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/luna.vim
