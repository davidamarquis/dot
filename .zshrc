source ~/dot/.zshrc

# https://stackoverflow.com/questions/65612411/forcing-docker-to-use-linux-amd64-platform-by-default-on-macos/69636473#69636473
export DOCKER_DEFAULT_PLATFORM=linux/amd64

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/davidmarquis/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/davidmarquis/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/davidmarquis/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/davidmarquis/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/davidmarquis/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/davidmarquis/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/davidmarquis/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version
