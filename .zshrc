export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls="eza --icons --color"
alias ll="eza --icons -alh --color"
alias tree="eza --icons --tree --color"

alias cat="bat"

alias yay="paru"

alias vi="nvim"

alias code="codium"

export STARSHIP_CONFIG="/home/defined/.config/starship/starship.toml"

# Autorun
catnap

eval "$(starship init zsh)"

eval "$(zoxide init --cmd cd zsh)"

# Bun completions
[ -s "/home/defined/.bun/_bun" ] && source "/home/defined/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"

export PATH="~/.npm-global/bin:$PATH"
export PATH="$BUN_INSTALL/bin:$PATH"

# Sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
