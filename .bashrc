# .bashrc
alias bashrc='vim ~/.bashrc;source ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# User specific aliases and functions

alias fn='find . -name'
alias xg='xargs grep'
alias pm='find . -name *.pm | xargs grep'
alias conf='find . -name *.conf | xargs grep'

alias tailq='sudo tailf /var/log/mysql.log'
alias taile='tailf ~/data/log/error_log'
alias taila='tailf ~/data/log/access_log'

alias tail_all='sudo tail -f /var/log/mysql.log ~/data/log/error_log ~/data/log/access_log'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

MOBA_DIR=~; export MOBA_DIR
PATH=$MOBA_DIR/script/tool:$MOBA_DIR/script/daemon:$PATH

GIT_DIR=/home/github/
alias cdg='cd $GIT_DIR'
alias cdr='cd ~/pm/Rakumeshi'
alias cdrp='cd ~/pm/Rakumeshi/Page'
alias cdh='cd ~/template.smart/_system/rakumeshi/'
alias vimp='vim ~/conf/pages_smart.conf'

alias compile='~/script/tool/compile_smart' 
alias httpd_restart='sudo /etc/init.d/httpd restart'
alias compile_and_httpd_restart='compile;httpd_restart'

function cdls() {
    #cdがループするので\をつける
    \cd $1;
    ls;
}
alias cd=cdls
