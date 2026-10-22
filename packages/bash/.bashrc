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

# annotated by dave eddy (@yousuckatprogramming)
# explained - https://youtu.be/D0sG2fj0G4Y
# borrowed heavily from https://grml.org

# Begin blinking text mode (Not actually blinking)
export LESS_TERMCAP_mb=$'\e[4;1;36m'

# Begin bold text mode
export LESS_TERMCAP_md=$'\e[1;36m'

# End all special formatting started by mb/md/etc.
export LESS_TERMCAP_me=$'\e[0m'

# End standout mode
export LESS_TERMCAP_se=$'\e[0m'

# Begin standout mode
# search results - bold, yellow foreground, blue background.
export LESS_TERMCAP_so=$'\e[1;33;44m'

# End underline mode
export LESS_TERMCAP_ue=$'\e[0m'

# Begin underline mode
# underline and bold green
export LESS_TERMCAP_us=$'\e[4;1;32m'

# Begin reverse-video mode
export LESS_TERMCAP_mr=$'\e[7m'

# Begin dim/half-bright mode
export LESS_TERMCAP_mh=$'\e[2m'

# Begin subscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZN=$'\e[74m'

# End subscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZV=$'\e[75m'

# Begin superscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZO=$'\e[73m'

# End superscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZW=$'\e[75m'

# Finally wire up `man` to use `less`
# this is usually the default but let's just be sure
export MANPAGER='less -X'
alias less='less -X'
