# set path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/Applications/Julia-1.5.app/Contents/Resources/julia/bin:/Applications/CMake.app/Contents/bin:/usr/local/texlive/2021/bin/universal-darwin/:/Users/erlendsyljuasen/miniconda3/bin/conda:/Users/erlendsyljuasen/miniconda3/bin:/usr/local/Homebrew/bin:/usr/local/opt/llvm/bin:/usr/sbin:/Users/erlendsyljuasen/progg/scripts:$PATH

# use vim mode
bindkey -v
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# style prompt
# PROMPT='%F{208}%1d%f > '
PROMPT='%B%F{012}%1d%f%b > '
force_color_prompt=yes
export LS_COLORS="di=00;91":"st=00;91":"tw=00;91":"ow=00;91":"*.py=00;93":"*.ipynb=00;93":"*.cpp=00;93":"*.jl=00;93":"*.txt=00;94":"*.pdf=00;95":"*.jpg=00;94":"*.md=00;94":"*.mp3=00;94"

# aliases
alias ls='gls -h -X --group-directories-first --quoting-style=literal --color'
alias ll='gls -1 -X --group-directories-first --quoting-style=literal --color'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias p='python3'
alias j='julia'
alias c='g++ -std=c++2a'
alias o='./a.out'
alias mv="mv -i"
alias gb="git add . && git commit -m "m" && git push" # :O
alias saga="ssh erlensy@saga.sigma2.no"
alias scq="source ~/progg/envs/scq/bin/activate"

# history path and history size
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# autocomplete settings
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
comp_options+=(globdots)
