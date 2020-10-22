# Private bin/

export PATH="$PATH:$HOME/.local/bin"

# Dart

export PATH="$PATH:$HOME/.pub-cache/bin"

# Golang

export GOPATH="$HOME/Golang"
export PATH="$HOME/Golang/go/bin:$PATH"
export PATH="$PATH:$HOME/Golang/bin"

# Nim

export PATH="$PATH:$HOME/.nimble/bin"

# Node / NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="$PATH:./node_modules/.bin"

# Python

export PATH="$PATH:$HOME/.poetry/bin"
export PIPENV_IGNORE_VIRTUALENVS=1
export PIPENV_VERBOSITY=-1

# Rust

export PATH="$PATH:$HOME/.cargo/bin"

