## Install vim
`sudo apt-get install vim-gtk`

## Clone vundle with vimrc and Reqiure powerline fonts
`git clone https://github.com/andrey9828/my_vim.git ~/.vim && cd ~/.vim/.fonts && mv * ~/.fonts/ && rm -fr ~/.vim/.fonts` </br>
</br>
`:PluginInstall` in your vim



# Installation

     git clone https://github.com/galulex/vim.git ~/.vim
     mkdir ~/.fonts
     cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/raw/master/patched-fonts/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types.otf
     ln -s  ~/.vim/.vimrc ~/.vimrc
     sudo apt-get install ctags wmctrl

Open vim and run next command: `PlugInstall`

[![endorse](http://api.coderwall.com/galulex/endorsecount.png)](http://coderwall.com/galulex)
