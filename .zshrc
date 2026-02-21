export PROMPT="%~ > "
export EDITOR="nvim"

# Comment if you don't like vi mode
[[ -z $NVIM ]] && bindkey -v

# Set to your paths
source /opt/homebrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/opt/zsh-autocomplete/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Same thing here
export CC="/opt/homebrew/opt/llvm/bin/clang"     
export CXX="/opt/homebrew/opt/llvm/bin/clang++"  

USE_COLEMAK_ZSH_VI_MODE_BINDINGS=1

# neofetch alternative that isn't deprecated
USE_FAST_FETCH=1

# comment these if you don't want them
alias c="clear"
alias rm="trash"
alias nvim="$HOME/.local/share/bob/nvim-bin/nvim"

alias ls="lsd -A"
alias lsl="lsd -A -l"

export ASAN_OPTIONS="detect_leaks=1"
export LSAN_OPTIONS="suppressions=$HOME/.lsan_suppressions"

source $HOME/VulkanSDK/1.4.341.0/setup-env.sh
export PATH="/opt/homebrew/bin:$HOME/.local/bin:/opt/homebrew/opt/llvm/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/opt/ccache/libexec:$PATH"

eval "$(zoxide init zsh)"


if [[ $USE_COLEMAK_ZSH_VI_MODE_BINDINGS = 1 ]]; then
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
  
  autoload -Uz edit-command-line
  zle -N edit-command-line
  
  bindkey -M vicmd ' e' edit-command-line
fi

clear
[[ $USE_FAST_FETCH = 1 ]] && fastfetch
