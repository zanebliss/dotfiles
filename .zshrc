source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -U colors
colors
export CLICOLOR=1

set HIST_SAVE_NO_DUPS
set HIST_EXPIRE_DUPS_FIRST

source $HOME/.aliases

fpath=(~/.zsh/completion $fpath)

for function in ~/.zsh/functions/*; do
  source $function
done

bindkey -v
export KEY_TIMEOUT=1

bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward

export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "

setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
# export PATH="$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$PATH"
# export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$PATH"
# export PATH="$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$PATH"
