# Aliases definition
MAC=$(if [ `uname` == "Darwin" ]; then echo '1'; else echo '0'; fi)
COLOR=$(if [ $MAC == "1" ]; then echo '-G'; else echo '--color=auto'; fi)
GREP=$(if [ $MAC == "1" ]; then echo 'ggrep'; else echo 'grep'; fi)
VAGRANT=$(if [ `whoami` == "vagrant" ]; then echo '1'; else echo '0'; fi)
PM_ROOT=$(if [ $VAGRANT == "1" ]; then echo $HOME/pricematch; else echo $HOME/vagrant/pricematch; fi)


# enable color support of ls and also add handy aliases
alias ls='ls $COLOR'
alias dir='dir $COLOR'
alias grep='$GREP -rn --color=auto --exclude=*.pyc --exclude-dir=notebooks'
alias ll='ls -lArth'
alias la='ls -A'
alias l='ls -CF'
alias sc='screen bash -l'

# Pricematch aliases
## Repos
function c () { cd $PM_ROOT/"$1"; }
alias up='for dir in $( { ls -d $HOME/pricematch/*/;ls -d $PM_ROOT/*/; } | uniq ); do cd $dir && test -d .git && git up; done; cd'
alias mig='cd $PM_ROOT/admin && bundle exec rake db:migrate; bundle exec rake db:migrate RAILS_ENV=test; cd'
alias pm='up; cd $PM_ROOT/admin && bundle install --path vendor --binstubs; rm bin/rails bin/rake; bundle exec rake rails:update:bin; bin/spring binstub --all; mig'
## Vagrant
alias v='cd $HOME/pricematch/devtools/vagrant'
alias vag='cd $HOME/pricematch/devtools/vagrant && vagrant ssh'
alias prov='cd $HOME/pricematch/devtools/vagrant && vagrant provision'
## Algo
alias algo='PYTHONDONTWRITEBYTECODE=1 python2 $PM_ROOT/algo/algo.py run-algo'
alias training='PYTHONDONTWRITEBYTECODE=1 python2 $PM_ROOT/algo/algo.py demand-model'
alias unittests='cd $PM_ROOT/algo; PYTHON_ENV=test PYTHONDONTWRITEBYTECODE=1 python2 algo.py test'
alias nose='cd $PM_ROOT/algo; PYTHON_ENV=test PYTHONDONTWRITEBYTECODE=1 python2 algo.py test -f'
alias nb='cd $PM_ROOT/algo/notebooks; PYTHON_ENV="production_readonly" PYTHONDONTWRITEBYTECODE=1 ipython notebook'
alias ipy='cd $PM_ROOT/algo; PYTHON_ENV="production_readonly" PYTHONDONTWRITEBYTECODE=1 ipython'
## Devtools
alias sfp='python2 $PM_ROOT/devtools/perseus/perseus.py database sync'

# Booking.com
alias hadoop='ssh hadoop-staging.prod.booking.com'
alias statapp='ssh statapp-203.lhr4.corp.booking.com'
alias kvmhadoop='ssh tcassou-hadoop.lhr4.prod.booking.com'
