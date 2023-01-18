# set path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/Applications/Julia-1.5.app/Contents/Resources/julia/bin:/Applications/CMake.app/Contents/bin:/usr/local/texlive/2021/bin/universal-darwin/:/Users/erlendsyljuasen/miniconda3/bin/conda:/Users/erlendsyljuasen/miniconda3/bin:/usr/local/Homebrew/bin:/usr/local/opt/llvm/bin:/usr/sbin:/Users/erlendsyljuasen/progg/scripts:$PATH

# use vim mode
bindkey -v

# style prompt
PROMPT='%F{208}%1d%f > '
force_color_prompt=yes

# aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias p='python3'
alias j='julia'
alias c='g++ -std=c++2a'
alias o='./a.out'
alias mv="mv -i"
alias gb="git add . && git commit -m "m" && git push" # :O
alias saga="ssh erlensy@saga.sigma2.no"

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

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
