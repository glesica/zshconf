#!/bin/sh

set -e

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Install vim-plug (from master because I'm reckless)
curl -fLo \
    "$HOME/.config/nvim/autoload/plug.vim" \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || echo "oh my zsh already installed"

# Install spaceship theme
if [ ! -d "$ZSH_CUSTOM/themes/spaceship-prompt" ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/"
fi

# A helper to create symlinks to the config files without blowing away anything
# important (hopefully).
function install_file () {
    local FILENAME="$1"
    local DESTINATION="$2"
    local PREFIX="$3"
    local DSTPATH="$DESTINATION/$PREFIX$FILENAME"
    local SRCPATH="$PWD/$FILENAME"

    echo "Installing $FILENAME"

    if [ -L "$DSTPATH" ]; then
        echo "Deleting link $DSTPATH"
        rm -f "$DSTPATH"
    fi

    if [ -e "$DSTPATH" ]; then
        echo "Backing up $DSTPATH"
        mv "$DSTPATH" "$DSTPATH.`date`"
    fi

    ln -s "$SRCPATH" "$DSTPATH" || echo "failed to link $FILENAME"
}

# Symlink zsh configuration
install_file zshrc "$HOME" "."
install_file zshalias "$HOME" "."
install_file zshpath "$HOME" "."
install_file profile "$HOME" "."
install_file init.vim "$HOME/.config/nvim" ""
install_file gitconfig "$HOME" "."
install_file gitignore "$HOME" "."

