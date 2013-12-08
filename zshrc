# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
DISABLE_CORRECTION="true"

plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh
source ~/.bashrc

# Customize to your needs...
export GOBIN=$HOME/bin
export GRADLE=$HOME/Documents/Libs/gradle-1.2/bin

# PATH
export PATH=$PATH:$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/bin
export PATH=$PATH:/usr/local/sbin:$HOME/.rvm/bin
export PATH=$PATH:$GOBIN:$GRADLE

export GOROOT=$HOME/go
export GOOS=darwin
export GOARCH=386
export GIT_SEQUENCE_EDITOR=/usr/local/bin/vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#    . `brew --prefix`/etc/bash_completion
#fi
source /usr/local/etc/bash_completion.d/cdargs-bash.sh
source $HOME/shell_stuff/utils.sh

# ALIASES
alias git=hub
alias which="/usr/bin/which"
alias vi="vim"
alias subl="open -a 'Sublime Text 2'"
alias vim-bundle="ruby /usr/local/bin/vim-bundle"
alias stmysql="/usr/local/bin/mysqld &"
