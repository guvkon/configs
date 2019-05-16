export PATH=$HOME/bin:$HOME/scripts:/usr/local/bin:$HOME/.config/composer/vendor/bin:$PATH:$HOME/go/bin
export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git z cp dotenv git-flow git-extras gulp sudo svn svn-fast-info symfony2 vagrant)

source $ZSH/oh-my-zsh.sh
source ~/.shell_aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/.custom.zshrc ] && source ~/.custom.zshrc

