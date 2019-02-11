source /usr/local/share/antigen/antigen.zsh

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting # must be last

antigen apply

export PATH=/usr/local/bin:$PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
