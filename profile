# Private bin/

export PATH="$PATH:$HOME/.local/bin"

# Dart

export PATH="$PATH:$HOME/.pub-cache/bin"

# Nim

export PATH="$PATH:$HOME/.nimble/bin"

# Node / NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Rust

export PATH="$PATH:$HOME/.cargo/bin"
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

