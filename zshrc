# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rcmc"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew grails)


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH

eval "$(rbenv init -)"
#export PATH=~/.rbenv/shims:$PATH

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
# mysql
export PATH=$PATH:/usr/local/mysql/bin
# heroku
export PATH=$PATH:/usr/local/heroku/bin
# aws
export PATH=$PATH:/Users/ruairi/opt/AWS-ElasticBeanstalk-CLI-2.2/AWSDevTools/Linux
export PATH=$PATH:/Users/ruairi/bin:/Users/ruairi/opt/prince/bin:/Users/ruairi/opt/jad158g
# node
export NODE_PATH=/usr/local/lib/node
export PATH=$PATH:/usr/local/share/npm/bin
# rsense
export RSENSE_HOME=~/opt/rsense-0.3
export COMPLIB=~/opt/complib

# oracle
export ORACLE_BASE=~/opt/instantclient/11.2.0.3.0
export ORACLE_HOME=$ORACLE_BASE
export PATH=$ORACLE_HOME:$PATH
#export DYLD_LIBRARY_PATH=$ORACLE_HOME
export TNS_ADMIN=$ORACLE_HOME/network/admin


function switch_jdk() {
  local wanted_java_version=$1
  export JAVA_HOME=`/usr/libexec/java_home -F -v $wanted_java_version -a x86_64 -d64`

  # cleaned PATH
  export PATH=$(echo $PATH | sed -E "s,(/System)?/Library/Java/JavaVirtualMachines/[a-zA-Z0-9._]+/Contents/Home/bin:,,g")

  # prepend wanted JAVA_HOME
  export PATH=$JAVA_HOME/bin:$PATH

  echo "Now using : "
  java -version
}

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ruairi/.gvm/bin/gvm-init.sh" ]] && source "/Users/ruairi/.gvm/bin/gvm-init.sh"

