export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/Applications/Julia-1.5.app/Contents/Resources/julia/bin:/Applications/CMake.app/Contents/bin:/usr/local/texlive/2021/bin/universal-darwin/:/Users/erlendsyljuasen/miniconda3/bin/conda:/Users/erlendsyljuasen/miniconda3/bin

PROMPT='%F{208}%1d%f > '
force_color_prompt=yes

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias p='python3'
alias j='julia'
alias c='g++ -std=c++2a'
alias o='./a.out'
alias mv="mv -i"
alias gb="git add . && git commit -m "m" && git push"
alias cal="ncal -bMw"

bindkey -v