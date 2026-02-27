export PATH="/opt/homebrew/bin:$HOME/.local/bin:/opt/homebrew/opt/llvm/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/opt/ccache/libexec:$PATH"

export PROMPT="%~ > "

export EDITOR="bob run nightly"

export CC="/opt/homebrew/opt/llvm/bin/clang"     
export CXX="/opt/homebrew/opt/llvm/bin/clang++"  

export ASAN_OPTIONS="detect_leaks=1"
export LSAN_OPTIONS="suppressions=$HOME/.lsan_suppressions"

source $HOME/VulkanSDK/1.4.341.0/setup-env.sh > /dev/null

alias c="clear"
alias rm="trash"
alias nvim="bob run nightly"

alias ls="lsd -A"
alias lsl="lsd -A -l"

source /opt/homebrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/opt/zsh-autocomplete/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -Uz edit-command-line
zle -N edit-command-line

bindkey '^e' edit-command-line

eval "$(zoxide init zsh)"

if [[ -z $NVIM ]]; then 
  bindkey -v
  bindkey -M vicmd 'n' vi-backward-char
  bindkey -M vicmd 'i' vi-forward-char
  bindkey -M vicmd 'e' down-line-or-select
  bindkey -M vicmd 'u' up-line-or-search
  
  bindkey -M vicmd 'r' vi-backward-word
  bindkey -M vicmd 't' vi-forward-word
  bindkey -M vicmd 'h' vi-first-non-blank
  bindkey -M vicmd 'o' vi-end-of-line
  
  bindkey -M vicmd 'a' vi-insert
  bindkey -M vicmd 'w' vi-add-next
  
  bindkey -M vicmd 'q' undo
  
fi 

fastfetch
