### External Configuration
source ~/.secrets
source /Users/jkelly/.iterm2_shell_integration.zsh
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
eval "$(pyenv init -)"

# Environment Modification
export EDITOR=`which vi`
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=$PATH:/anaconda/bin:~/Library/Python/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin
export PATH=$PATH:/usr/local/pear/bin
export PATH=$PATH:$HOME/.yarn/bin  # Yarn
export PATH=$PATH:$HOME/.rvm/bin # RVM
export PATH=$PATH:/usr/local/heroku/bin # Heroku
export PATH=$PATH:/usr/local/mysql/bin # MySQL
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/local/bin:


### ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT=true
plugins=(autojump osx vi-mode brew sublime docker docker-compose git jira per-directory-history zsh-nvm)
source $ZSH/oh-my-zsh.sh

### History
bindkey '^R' history-incremental-search-backward
autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu


function kill_all_log_children {
  pgrep -P $LOG_PID | xargs kill -9
}

### Docker Functions
function colorize_container_name {
  COLOR_CODES=("39" "31" "32" "33" "34" "35" "36" "95" "94" "96" "92" "41" "42" "43" "44" "45" "46")
  POSITION=$1
  shift
  NAME=$1
  echo -e "\e[${COLOR_CODES[$POSITION]}m${NAME} \e[0m"
}

### Alises
alias heroky="heroku"
alias st3="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
