#bind '"\e[A": history-search-backward'
#bind '"\e[B": history-search-forward'
LS_COLORS=$LS_COLORS:'di=0;34:' ; export LS_COLORS
export PS1="\[\033[38;5;154m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;172m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="/opt/homebrew/lib:/usr/local/lib:$PATH"
alias ga='git add -i'
alias gs='git status'
alias gc='git commit -m'
alias gcl='git commit'
alias gfix='git rebase -i HEAD~2'
alias gl='git log --pretty=short'
alias gb='git branch'
alias gco='git checkout'
alias gt='git tag'
alias gb='git branch'

alias ls='ls -Gla'

# completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

# git completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

