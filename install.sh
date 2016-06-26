curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& cd ~/.fonts \
&& curl -o Inconsolata-gforPowerline https://gitlab.com/vim_toolset/vim-powerline-fonts/raw/4151af0d071503fa7f728dc7779370059258a0e9/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf \
&& vim +PlugInstall +qall \
&& cd ~/.vim/plugged/vim-airline/autoload/airline/themes \
&& curl -O https://raw.githubusercontent.com/vim-airline/vim-airline-themes/master/autoload/airline/themes/luna.vim \
# YouCompleteMe
&& sudo apt-get install build-essential cmake \
&& sudo apt-get install python-dev python3-dev \
&& cd ~/.vim/bundle/YouCompleteMe \
&& ./install.py --clang-completer \
&& cd ~/ && gvim
