# Aliases definition
MAC=$(if [ `uname` == "Darwin" ]; then echo '1'; else echo '0'; fi)
COLOR=$(if [ $MAC == "1" ]; then echo '-G'; else echo '--color=auto'; fi)
GREP=$(if [ $MAC == "1" ]; then echo 'ggrep'; else echo 'grep'; fi)

# enable color support of ls and also add handy aliases
alias ls='ls $COLOR'
alias dir='dir $COLOR'
alias grep='$GREP -rn --color=auto --exclude=*.pyc --exclude-dir=notebooks'
alias ll='ls -lArth'
alias la='ls -A'
alias l='ls -CF'
alias sc='screen bash -l'

# Git aliases
git config --global alias.tree log --graph --full-history --all --color --pretty=tformat:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m\"
git config --global alias.tags "!git tag | tail -n5"
git config --global alias.s status
