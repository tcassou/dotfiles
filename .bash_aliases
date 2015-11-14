# Aliases definition
MAC=$(if [ `uname` == "Darwin" ]; then echo '1'; else echo '0'; fi)
COLOR=$(if [ $MAC == "1" ]; then echo '-G'; else echo '--color=auto'; fi)
GREP=$(if [ $MAC == "1" ]; then echo 'ggrep'; else echo 'grep'; fi)

# enable color support of ls and also add handy aliases
alias ls='ls $COLOR'
alias dir='dir $COLOR'
alias grep='$GREP -irn --color=auto'
alias ll='ls -lArth'
alias la='ls -A'
alias l='ls -CF'
alias sc='screen bash -l'


# Pricematch aliases
## Update
alias up='for dir in $( ls -d ~/pricematch/*/); do cd $dir && test -d .git && git up; done; cd'
alias mig='cd ~/pricematch/admin && rake db:migrate; rake db:migrate RAILS_ENV=test; cd'
alias pm='up; cd pricematch/admin && bundle install; mig'
alias v='cd ~/pricematch/devtools/vagrant'
alias vag='cd ~/pricematch/devtools/vagrant && vagrant ssh'
alias prov='cd ~/pricematch/devtools/vagrant && vagrant provision'

## Algo
alias algo='PYTHONDONTWRITEBYTECODE=1 python2 ~/pricematch/algo/algo.py'
alias nose='PYTHON_ENV=test PYTHONDONTWRITEBYTECODE=1 python2 algo.py test -f'
alias nb='PYTHON_ENV="production_readonly" PYTHONDONTWRITEBYTECODE=1 ipython notebook'
alias ipython='PYTHONDONTWRITEBYTECODE=1 ipython'
alias update_dump='mysqldump -d -h localhost -uroot -pK65ba5E5c36l6tu pricematch_test | gsed "s/ AUTO_INCREMENT=[0-9]*//g" > config/pricematch_test.dump'

## Admin
alias rspec='bundle exec rspec'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias rubocop='bundle exec rubocop -c toolbox/rubocop/default.yml'
alias guard='bundle exec guard'

## Devtools
alias sfp='python2 ~/pricematch/devtools/perseus/perseus.py database sync'

## Booking.com
alias hadoop='ssh hadoop-staging.prod.booking.com'
alias statapp='ssh statapp-203.lhr4.corp.booking.com'
