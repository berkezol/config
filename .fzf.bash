# Setup fzf
# ---------
if [[ ! "$PATH" == */home/eberzol/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/eberzol/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/eberzol/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/eberzol/.fzf/shell/key-bindings.bash"
