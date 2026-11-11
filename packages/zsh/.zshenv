typeset -U path PATH

export CMAKE_ROOT=$HOME/.local/bin

export PATH="$HOME/.local/bin:$PATH"

[[ -r ~/.local/kitty.app/bin ]] && export PATH="$HOME/.local/kitty.app/bin:$PATH"

[[ -r ~/.cargo/bin/cargo ]] && export PATH="$HOME/.cargo/bin:$PATH"

[[ -r ~/.zshenv.work ]] && . $HOME/.zshenv.work
