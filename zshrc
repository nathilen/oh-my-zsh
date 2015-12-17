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
#export M2_HOME=/usr/local/share/apache-maven-3.2.1
export M3_HOME=/usr/local/Cellar/maven/3.1.1

# PATH
export PATH=usr/local/bin:/usr/bin:/bin:/sbin:usr/X11/bin:$PATH
export PATH=$PATH:$GOBIN:$GRADLE:$M2_HOME
# This line is needed for git svn to functional properly. Putting Git provided by development tools ahead in my PATH variable
export PATH="/Applications/XXXXX.app/Contents/Developer/usr/libexec/git-core":/Library/Developer/CommandLineTools/usr/bin:$PATH
export PATH=`echo $PATH | sed -e 's/:\/opt\/local\/bin//g'`

export GOROOT=$HOME/go
export GOOS=darwin
export GOARCH=386
export GIT_SEQUENCE_EDITOR=/usr/local/bin/vim

#SONAR
export SONAR_RUNNER_HOME=/Users/Charlet/Documents/Learning/sonar/sonar-runner-2.4
export PATH=$PATH:$SONAR_RUNNER_HOME/bin

source /usr/local/etc/bash_completion.d/cdargs-bash.sh
# Load my custom functions
source $HOME/shell_stuff/utils.sh

# Setting the local character encoding on iTerm
export LC_CTYPE=en_US.UTF-8

# Increase memory assigned to Maven to handle more memory consuming apps
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:MaxPermSize=512m -XX:PermSize=512m -Dcom.sun.management.jmxremote"

# Setting Java home path
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=`/usr/libexec/java_home -v 1.7.0_80`

# Temp aliases
source $HOME/shell_stuff/aliases.sh

#JBOSS 
export JBOSS_HOME=/usr/local/opt/wildfly-as/libexec
export PATH=${PATH}:${JBOSS_HOME}/bin
export SSL_CERT_FILE=/usr/local/etc/openssl/ca-cert.pem
