source ~/.bash/config
source ~/.bash/paths
source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/scm_info/scm
source ~/.bash/rvm

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


