# Aliases
alias tmux="tmux -2"
alias grep='grep --color=auto'
alias ls='ls -G'


# Adding things to my path
export PATH=.:$PATH


# Carfax specific vars
export PROMOTION_LEVEL=LOCAL


# System settings
export TERM=xterm-color


# Load custom functions
source ~/.bash_functions


# Load git autocomplete script
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


# Stuff to make the prompt more pleasing
# All colors are defined to make it easier to change.
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
GREEN_BOLD="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
YELLOW_BOLD="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BLUE_BOLD="\[\033[1;34m\]"
MAGENTA="\[\033[0;35m\]"
MAGENTA_BOLD="\[\033[1;35m\]"
CYAN_BOLD="\[\033[1;36m\]"
NO_COLOR="\[\033[0m\]"

export PS1="$MAGENTA_BOLD\u@\h$CYAN_BOLD:\w$YELLOW_BOLD\$(parse_git_branch)$NO_COLOR\$ "


# Set default Java Version
function set_jdk() {
    if [ $# -ne 0 ]; then
	remove_from_path '/System/Library/Frameworks/JavaVM.framework/Home/bin'
	if [ -n "${JAVA_HOME}" ]; then
	    remove_from_path $JAVA_HOME
	fi
	export JAVA_HOME=$(/usr/libexec/java_home -v $@)
	export PATH=$JAVA_HOME/bin:$PATH
	$(java -version)
    fi
}

function remove_from_path() {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

# Change this to whichever version of JDK you want as default
set_jdk 1.8


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/briansears/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/briansears/.sdkman/bin/sdkman-init.sh"
## cfx-cli
export PATH=$PATH:/Users/briansears/.cfx/bin:/Users/briansears/cfx/.meta/bin
## end cfx-cli


export NVM_DIR="/Users/briansears/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
