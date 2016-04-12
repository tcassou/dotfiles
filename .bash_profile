# Editor
export EDITOR=nano

# Setting prompt colors and adding current git branch to the display
. /etc/profile
source ~/.git-prompt.sh
# Set PS1
PS1="\[\e[0;35m\]\u\[\e[1;30m\]@\[\e[0;32m\]\h \[\e[0;34m\]\t\[\e[1;30m\] [\[\e[0;33m\]\W\[\e[1;30m\]]\[\e[0;31m\]\$(__git_ps1)\[\e[1;30m\]$\[\e[m\] "

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

#unlimited bash history
declare -x HISTFILESIZE=1000000000
declare -x HISTSIZE=1000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Alias definitions into a separate file: ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# PHP-FPM
export PATH="/usr/local/sbin:$PATH"
PHP_AUTOCONF="/usr/local/bin/autoconf"

# Python path for ipython-notebook
export PYTHONPATH="$PM_ROOT/algo:$PYTHONPATH"

