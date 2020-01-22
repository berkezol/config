# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#start tmux sesssion named default when interactive terminal is started
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
