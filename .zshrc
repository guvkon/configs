export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim
export DEFAULT_USER="guvkon"
export LANG=en_US.UTF-8

export PATH="$HOME/bin:$HOME/scripts:/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:/opt/homebrew/opt/mysql-client@8.0/bin"
export PATH="$PATH:/opt/homebrew/bin"

prompt_context(){}

# Theme requires installation of patched versions of Powerline fonts.
# See for installation instructions https://github.com/powerline/fonts
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git z cp)

source $ZSH/oh-my-zsh.sh
source ~/.shell_aliases

export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.custom.zshrc ] && source ~/.custom.zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

