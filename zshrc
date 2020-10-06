source /usr/local/share/antigen/antigen.zsh

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting # must be last

antigen apply

# brew executables
export PATH=/usr/local/bin:$PATH

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

. ~/.zshrc_local
