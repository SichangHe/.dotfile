set -gx PATH /usr/local/bin $PATH
set PATH -gx /opt/homebrew/bin $PATH

# starship
starship init fish | source 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/sichanghe/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


set -gx EDITOR "code"

#! below are my alias
alias i="arch -x86_64"

# the conda python
alias py="/Users/sichanghe/opt/miniconda3/bin/python"

# ls
alias l="exa"
alias la="exa -a"
alias lla="exa -la"
alias lt="exa -T"
alias llt="exa -lT"
alias lat="exa -aT"
alias llat="exa -laT"
alias ld="exa -D"
alias lad="exa -aD"
alias lld="exa -lD"
alias llad="exa -laD"
