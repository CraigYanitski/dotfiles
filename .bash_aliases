# aliases for neovim
alias vim="nvim"
alias vi="vim"

# generic aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# git aliases
alias gits="git status"
alias gitsw="watch -n1 --color 'git status -s'"
alias gitss="git status -s"
alias gitlog="git log --graph --all --decorate --color=always"
alias gittree="tree -a -I .git | less"
alias gitlogw="watch --color -n1 'git log --graph --all --decorate --color=always'"
alias gittreew="watch --color -n1 'tree -a -I .git'"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Cloudy executable
alias cloudy="/home/yanitski/projects/pdr/cloudy/c17.02/source/cloudy.exe"

# Veusz executable
alias veusz="/home/yanitski/Downloads/veusz-3.3.1-linux-x86_64/veusz.exe"

