set -gx PATH /usr/local/bin $PATH
set PATH -gx /opt/homebrew/bin $PATH
set PATH -gx /Users/sichanghe/.cargo/bin $PATH
set PATH -gx /Applications/MATLAB_R2021b.app/bin $PATH
set PATH -gx /Applications/Julia-1.7.app/Contents/Resources/julia/bin $PATH
# starship
starship init fish | source 


set -gx EDITOR "code"

#! below are my alias
alias i="arch -x86_64"

alias py=python3

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
