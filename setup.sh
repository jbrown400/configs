#!/bin/zsh

# Run this file to install all tools, plugins, etc.

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing vim"
brew install vim



# Cmake
brew install cmake
