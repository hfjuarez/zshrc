export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# Alias
alias p="cd ~/projects"
alias h="p && cd hfjuarez"

# Load NVM 
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load Pure (https://github.com/sindresorhus/pure)
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit

zstyle :prompt:pure:git:dirty show yes
zstyle :prompt:pure:git:action show yes
zstyle :prompt:pure:git:arrow show yes
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:execution_time show yes

prompt pure

# zstyle :prompt:pure:path color white

# Load ZSH Syntax Highlighting (https://github.com/zsh-users/zsh-syntax-highlighting/tree/master)
source ${HOMEBREW_PREFIX}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load ZSH Auto Suggestions (https://github.com/zsh-users/zsh-autosuggestions/tree/master)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Load Spaceship (https://github.com/spaceship-prompt/spaceship-prompt)
# echo "source $(brew --prefix)/opt/spaceship/spaceship.zsh" >>! ~/.zshrcsource /opt/homebrew/opt/spaceship/spaceship.zsh
