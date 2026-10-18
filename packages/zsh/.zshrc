
# Setup vim mode native in zsh
export EDITOR=nvim
export VISUAL=nvim
# --- Vi mode -----------------------------------------------------------------
# bindkey -v must come BEFORE any custom bindkey calls: it replaces the main
# keymap, discarding anything bound earlier.
bindkey -v
bindkey -M viins '^R' history-incremental-search-backward
# Shift-Left / Shift-Right word movement (bound in both vi keymaps)
bindkey -M viins "^[[1;2D" backward-word
bindkey -M viins "^[[1;2C" forward-word
bindkey -M vicmd "^[[1;2D" backward-word
bindkey -M vicmd "^[[1;2C" forward-word

# Track vi mode changes for the prompt
function zle-keymap-select zle-line-init {
    if [[ ${KEYMAP} == "vicmd" ]]; then
        VIM_MODE="%F{red}[CMD]%f"
    else
        VIM_MODE="%F{green}[INS]%f"
    fi
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Initial value so the first prompt paints correctly (zsh starts in insert mode)
VIM_MODE="%F{green}[INS]%f"

# --- Prompt ------------------------------------------------------------------
# Single quotes + prompt_subst so ${VIM_MODE} is evaluated at display time.
# %F{color} is zsh-native (the old $fg[...] form needed the colors module,
# which was never loaded, so it silently expanded to nothing).
setopt prompt_subst
PROMPT='
${VIM_MODE} %F{white}(%D %*) <%?> [%~]%f
%F{cyan}%m %#%f '
RPROMPT=

# --- Terminal title ----------------------------------------------------------
set-title() {
    print -n "\e]0;$*\a"
}

ssh() {
    set-title "$@"
    /usr/bin/ssh "$@"
    set-title "$HOST"
}

unsetopt beep
setopt histignorealldups sharehistory


# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

