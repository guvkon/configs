export PATH=$HOME/bin:$HOME/scripts:/usr/local/bin:$HOME/.config/composer/vendor/bin:$PATH:$HOME/go/bin
export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim
export DEFAULT_USER="guvkon"

prompt_context(){}

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git z cp dotenv git-flow git-extras gulp sudo svn svn-fast-info symfony2 vagrant)

source $ZSH/oh-my-zsh.sh
source ~/.shell_aliases

prompt_svn() {
    local rev branch
    if in_svn; then
        rev=$(svn_get_rev_nr)
        branch=$(svn_get_branch_name)
        if [[ $(svn_dirty_choose_pwd 1 0) -eq 1 ]]; then
            prompt_segment yellow black
            echo -n "$rev@$branch"
            echo -n "±"
        else
            prompt_segment green black
            echo -n "$rev@$branch"
        fi
    fi
}

build_prompt() {
    RETVAL=$?
    prompt_status
    prompt_context
    prompt_dir
    prompt_git
    prompt_svn
    prompt_end
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.custom.zshrc ] && source ~/.custom.zshrc
