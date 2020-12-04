# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [[ -e "/etc/bash_completion.d/" ]]; then
    . /etc/bash_completion.d/*
fi

. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='\w$(__git_ps1 " (%s)")\$ '
export PS1='[\u@\h \W]$(__git_ps1 " (%s)")\$ '

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
set -o vi
alias vi=vim

