# Aliases definition

# enable color support of ls and also add handy aliases
alias ls='ls -G'
alias dir='dir -G'
alias vdir='vdir -G'

alias grep='grep -G'
alias fgrep='fgrep -G'
alias egrep='egrep -G'

# some more ls aliases
alias ll='ls -lArth'
alias la='ls -A'
alias l='ls -CF'


# Pricematch aliases
## Update
alias pm='sh ~/pricematch/repo_update.sh'

## Algo
alias algo='python ~/pricematch/algo/algo.py'
alias nose='PYTHON_ENV=test python2 algo.py test -f'
alias nb='PYTHON_ENV="production_readonly" PYTHONDONTWRITEBYTECODE=1 ipython notebook'
alias ipython='PYTHONDONTWRITEBYTECODE=1 ipython'
alias update_dump='mysqldump -d -h localhost -uroot -pK65ba5E5c36l6tu pricematch_test | gsed 's/[[:space:]]AUTO_INCREMENT=[0-9]*\b//' > config/pricematch_test.dump'

## Admin
alias rspec='bundle exec rspec -f d'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias rubocop='bundle exec rubocop -c toolbox/rubocop/default.yml'
alias guard='bundle exec guard'

## Devtools
alias sync-from-prod='python ~/pricematch/devtools/perseus/perseus.py database sync'
