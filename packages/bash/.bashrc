#
# ~/.bashrc
#
#
FLUTTER_DIR="$HOME/.local/flutter/bin"
if [[ ":$PATH:" != *":$FLUTTER_DIR"* ]]; then
	export PATH=$PATH:$FLUTTER_DIR
fi

CARGO_DIR="$HOME/.cargo/bin"
if [[ ":$PATH:" != *":$CARGO_DIR"* ]]; then
	export PATH=$PATH:$CARGO_DIR
fi

export CHROME_EXECUTABLE="/usr/bin/firefox"
	


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='nvim'
PS1='[\u@\h \W]\$ '
