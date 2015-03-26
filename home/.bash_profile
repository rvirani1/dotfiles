# Berkshelf Path
export PATH="$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH"

# Required for the Postgres App
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

#Colorizes some stuff for me
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# Enable command line colors, and set some better color defaults for ls
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
alias ls='ls -GFh'

# == Aliases =====

# Add colors to ls
alias ls='ls -FG'

# List all the things
alias l='ls -laFGh'

#Loads the default profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
source "$HOME/.exports"

#Loads the local first
export PATH=/usr/local/bin:$PATH

# == Prompt =====

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
export PS1="${ORANGE}\u ${DARK}@ ${YELLOW}\h ${DARK}in ${CYAN}\w ${LIGHT}\$ "

# Alias for Github Hub
alias git=hub

export NVM_DIR="/Users/riaznvirani/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Pebble SDK
export PATH="/Users/riaznvirani/pebble-dev/PebbleSDK-current/bin:$PATH"

alias worker='bundle exec rake resque:work QUEUE=*'
alias b='bundle exec'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gc='git commit'
alias gp='git pull'
alias st='sourcetree .'

export EDITOR=/usr/bin/vim

alias sourcetree='open -a SourceTree'

eval "$(direnv hook bash)"

export PATH="/Applications/RubyEncoder.app/Contents/MacOS/:$PATH"
export WARN_ERRORS='-Werror'

export GCC=gcc-4.8

[ -f "$HOME/.bash_local" ] && source "$HOME/.bash_local"

if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi


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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
