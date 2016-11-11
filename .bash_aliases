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
