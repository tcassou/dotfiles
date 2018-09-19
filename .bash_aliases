# Aliases definition
MAC=$(if [ `uname` == "Darwin" ]; then echo '1'; else echo '0'; fi)
COLOR=$(if [ $MAC == "1" ]; then echo '-G'; else echo '--color=auto'; fi)
GREP=$(if [ $MAC == "1" ]; then echo 'grep'; else echo 'grep'; fi)

# enable color support of ls and add handy aliases
alias ls='ls $COLOR'
alias dir='dir $COLOR'
alias grep='$GREP -r --color=auto --exclude=*.pyc --exclude-dir=notebooks'
alias ll='ls -lArth'
alias la='ls -A'
alias l='ls -CF'
alias sc='screen bash -l'
alias python='PYTHONDONTWRITEBYTECODE=1 python'
alias nose='nosetests -v --rednose'
alias latex='/Users/tcassou/bin/lualatex -interaction=nonstopmode --aux-directory=./.aux'

_ssh()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts=$(grep -h -E "^Host\s[a-z\-]*$" ~/.ssh/config | sed 's/Host //')

    COMPREPLY=( $(compgen -W "$opts" -- ${cur}) )
    return 0
}
complete -o nospace -F _ssh ssh
