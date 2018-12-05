#!/bin/zsh

# Run this file to install all tools, plugins, etc.

echo "Before we start, has this computer been connected to Justin's GitHub? [y/n]"
### get user input
read answer

if [[ "$answer" != "y" ]]; then
    echo "Exiting. Please connect to Justin's GitHub."
    exit 0
else
    echo "Run the rest of the script"
    exit 0
fi


# ensure script is run from home directory
cd

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing tmux"
brew install tmux

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing vim"
brew install vim

echo "Installing python"
brew install python

echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Grabbing configs"
mkdir configs
git clone git@github.com:jbrown400/configs.git configs/

echo "Copying configs to home directory"
if [[ -a ~/.vimrc ]]; then
    rm ~/.vimrc
fi
cp configs/.vimrc ~/.vimrc

if [[ -a ~/.zshrc ]]; then
    rm ~/.zshrc
fi
cp configs/.zshrc ~/.zshrc

if [[ -a ~/.tmux.conf ]]; then
    rm ~/.tmux.conf
fi
cp configs/.tmux.conf ~/.tmux.conf



# Cmake
brew install cmake
