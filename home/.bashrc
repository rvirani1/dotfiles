# ==========================================================================================

# == Source External Files
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -s "$HOME/.bash_mac" ]] && source "$HOME/.bash_mac"
[[ -s "$HOME/.bash_ubuntu" ]] && source "$HOME/.bash_ubuntu"
[[ -s "$HOME/.bash_local" ]] && source "$HOME/.bash_local"
[[ -s "$HOME/.git-completion" ]] && source "$HOME/.git-completion"

# ==========================================================================================

# == Colors and Prompt

# Name the colors we'll be using to make them somewhat readable
ORANGE="\[\e[38;5;214m\]"
YELLOW="\[\e[38;5;228m\]"
CYAN="\[\e[0;36m\]"
WHITE="\[\e[1;37m\]"
LIGHT="\[\e[0;37m\]"
DARK="\[\e[38;5;240m\]"

# Set the prompt
# \u - user
# \h - host
# \w - working directory
export PS1="${ORANGE}\u ${DARK}in ${CYAN}\w ${LIGHT}\$ "

# Enable command line colors, and set some better color defaults for ls
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"

# ==========================================================================================

# == Aliases =====

alias git=hub
alias worker='bundle exec rake resque:work QUEUE=*'
alias b='bundle exec'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gc='git commit'
alias gp='git pull'

# Add colors to ls
alias ls='ls -FG'

# List all the things
alias l='ls -laFGh'

# ==========================================================================================

# === Exports =====
# Loads the local first
export PATH=/usr/local/bin:$PATH

export EDITOR=/usr/bin/vim
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.1.0/libexec"
export WARN_ERRORS='-Werror'

man() {
	env LESS_TERMCAP_mb=$'\E[01;31m' \
	LESS_TERMCAP_md=$'\E[01;38;5;74m' \
	LESS_TERMCAP_me=$'\E[0m' \
	LESS_TERMCAP_se=$'\E[0m' \
	LESS_TERMCAP_so=$'\E[38;5;246m' \
	LESS_TERMCAP_ue=$'\E[0m' \
	LESS_TERMCAP_us=$'\E[04;38;5;146m' \
	man "$@"
}

# NVM Setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# RVM Setup
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
