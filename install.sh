#!/bin/sh

set -e

# Install vim-plug (from master because I'm reckless)
curl -fLo \
    "$HOME/.config/nvim/autoload/plug.vim" \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Symlink init.vim
ln -s "$PWD/init.vim" "$HOME/.config/nvim/init.vim" || echo "init.vim already exists"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

# A helper to create symlinks to the config files without blowing away anything
# important (hopefully).
function install_file () {
    local FILENAME="$1"
    local DSTPATH="$HOME/.$FILENAME"
    local SRCPATH="$PWD/$FILENAME"

    if [ -L "$DSTPATH" ]; then
        echo "deleting link $DSTPATH"
        rm -f "$DSTPATH"
    fi

    if [ -e "$FILENAME" ]; then
        echo "backing up $DSTPATH"
        mv "$DSTPATH" "$DSTPATH.`date`"
    fi

    ln -s "$SRCPATH" "$DSTPATH" || echo "failed to link $FILENAME"
}

# Symlink zsh configuration
install_file zshrc
install_file zshalias
install_file zshpath
install_file profile

