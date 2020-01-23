# .bashrc
alias vim="nvim.appimage"
alias vimdiff="vim -d"
alias dpsa="docker ps -a"
alias gc="git commit"
alias gca="git commit --amend"
alias ll='ls -la --color=auto'
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export TERM='xterm-256color'
#source /opt/rh/devtoolset-7/enable 
export PATH="~/downloads/:$PATH"
export PATH="~/rtags/bin:$PATH"
export PATH="~/.fzf:$PATH"

if [ "$HOSTNAME" = dockerhost ]; then
    PS1='\[\e[0;32m\][\w]$ \[\e[m\]'
else
    PS1='\[\e[1;33m\][\w]$ \[\e[m\]'
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
