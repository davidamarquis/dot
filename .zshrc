# autojump via homebrew install
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# bind tab key to autocomplete 
bindkey '^I' expand-or-complete

# git aliases
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

# other aliases
alias ls='ls -Gla'

# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt
local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"
PROMPT='
%~
${smiley}  %{$reset_color%}'

# git info via some scripts from https://github.com/topfunky/zsh-simple/tree/master
RPROMPT='%{$fg[white]%} $(~/bin/git-cwd-info)%{$reset_color%}'

# Or, simple prompt: username and current directory
# PROMPT='%n %~ %# '

# Load completions for Git and any custom completions added to zsh
autoload -U compinit
compinit

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/david.marquis/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# https://stackoverflow.com/questions/65612411/forcing-docker-to-use-linux-amd64-platform-by-default-on-macos/69636473#69636473
export DOCKER_DEFAULT_PLATFORM=linux/amd64

