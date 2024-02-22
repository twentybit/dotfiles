#!/bin/bash
set -e

# Install packages from brewfile
brew bundle --file=Brewfile

# Symlink dotfiles into home dir
for file in dotfiles/*; do
    ln -sf $PWD/$file ~/."${file#*/}"
    echo "Installed ~/.${file#*/}"
done

# Symlink VSCode settings
ln -sf ~/Library/Application\ Support/Code/User/settings.json vscode-settings.json
echo "Installed VSCode's settings.json"

# Reload zshrc
source ~/.zshrc
