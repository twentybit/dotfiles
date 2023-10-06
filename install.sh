#!/bin/bash
set -e

# Install packages from brewfile
brew bundle --file=Brewfile

# Symlink dotfiles into home dir
for file in dotfiles/*; do
    ln -sf $PWD/$file ~/."${file#*/}"
    echo "Installed ~/.${file#*/}"
done

# Reload zshrc
source ~/.zshrc
