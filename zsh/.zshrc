PATH="$PATH:$HOME/fvm/default/bin"
PATH="$PATH:$HOME/fvm/default/bin/cache/dart-sdk/bin"
PATH="$PATH":"$HOME/fvm/default/.pub-cache/bin"
PATH="$PATH":"$HOME/Library/Android/sdk/platform-tools"
JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home/"
ANDROID_HOME="$HOME/Library/Android/sdk/"
PATH="/Applications/Android Studio.app/Contents/jbr/Contents/Home/bin:$PATH"
##PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
PATH="$PATH":"$HOME/.pub-cache/bin"
export GEM_HOME="$HOME/.rbenv/versions/3.2.2"
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export MANPAGER="nvim +Man!"
export GOPRIVATE="github.com/MathGaps/*,go.buf.build"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"
eval "$(rbenv init - zsh)"
## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f $HOME/.dart-cli-completion/zsh-config.zsh ]] && . $HOME/.dart-cli-completion/zsh-config.zsh || true
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

#History setup
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

#vi-mode
source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

#autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#fzf
source <(fzf --zsh)
alias ivn='nvim $(fzf -m --preview="bat --color=always {}")'
#Oh-my-posh
#disable in apple term
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh.json)"
fi
#setting nvim as default editor
export EDITOR=nvim
export VISUAL="$EDITOR"

alias vi=nvim
alias vim=nvim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/preetsingh/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/preetsingh/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/preetsingh/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/preetsingh/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

