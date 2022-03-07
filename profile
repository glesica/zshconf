# Private bin/

export PATH="$PATH:$HOME/.local/bin"

# Dart

export PATH="$PATH:$HOME/.pub-cache/bin"

# Nim

export PATH="$PATH:$HOME/.nimble/bin"

# Node / NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="$PATH:./node_modules/.bin"

# Python

PRIMARY_PYTHON=3.9

export PATH="$PATH:$HOME/.poetry/bin"
export PATH="$PATH:/Users/george/Library/Python/$PRIMARY_PYTHON/bin"
export PIPENV_IGNORE_VIRTUALENVS=1
export PIPENV_VERBOSITY=-1
unalias ipython # Fix oh-my-zsh alias

# Rust

export PATH="$PATH:$HOME/.cargo/bin"

source "$HOME/.cargo/env"
