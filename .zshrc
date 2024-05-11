PATH="$PATH:/Users/preetsingh/development/flutter/bin"
PATH="$PATH:/Users/preetsingh/development/flutter/bin/cache/dart-sdk/bin"
PATH="$PATH":"$HOME/development/flutter/.pub-cache/bin"
PATH="$PATH":"/Users/preetsingh/Library/Android/sdk/platform-tools"
JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home/"
PATH="/Applications/Android Studio.app/Contents/jbr/Contents/Home/bin:$PATH"
##PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
PATH="$PATH":"$HOME/.pub-cache/bin"
export GEM_HOME="$HOME/.rbenv/versions/3.2.2"
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/preetsingh/.dart-cli-completion/zsh-config.zsh ]] && . /Users/preetsingh/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
