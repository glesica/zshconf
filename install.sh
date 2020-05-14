#!/bin/sh

set -e

# Install vim-plug (from master because I'm reckless)
curl -fLo \
    "$HOME/.config/nvim/autoload/plug.vim" \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Symlink init.vim
ln -s "$PWD/init.vim" "$HOME/.config/nvim/init.vim" || echo "init.vim already exists"

# Symlink zsh configuration
ln -s "$PWD/zshrc" "$HOME/.zshrc" || echo ".zshrc already exists"
ln -s "$PWD/zshalias" "$HOME/.zshalias" || echo ".zshalias already exists"
ln -s "$PWD/zshpath" "$HOME/.zshpath" || echo ".zshpath already exists"
