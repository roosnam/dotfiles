
# Load antigen
source /usr/share/zsh/scripts/antigen/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Bundles from default repo
antigen bundle jump
antigen bundle vi-mode
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
bindkey '^ ' autosuggest-accept
antigen bundle zsh-users/zsh-history-substring-search
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Load the theme
antigen theme https://github.com/halfo/lambda-mod-zsh-theme lambda-mod

# Tell antigen that you're done
antigen apply

# Load aliases
source ~/.aliases.sh

# BASE16_SHELL="$HOME/.config/base16-shell/base16-gooey.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#export NVM_DIR="/home/booker/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export EDITOR=nvim
export FZF_DEFAULT_COMMAND='ag -g ""'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/firefox:$PATH"
