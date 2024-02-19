source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U colors
colors
export CLICOLOR=1

set HIST_SAVE_NO_DUPS
set HIST_EXPIRE_DUPS_FIRST

source $HOME/.aliases

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

