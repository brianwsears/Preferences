# ==========================================================
#
# PERSONAL $HOME/.bashrc file.
# By Brian Sears
#
# This script is executed every time a new Terminal session 
# is started. It is referenced by the .bash_profile script
# that is executed during login.
#
# ==========================================================

############################################################
# Add things to the Path
############################################################
export PATH=$PATH


############################################################
# System settings
############################################################
export TERM=xterm-color


############################################################
# Load custom functions
############################################################
source ~/.bash_functions


############################################################
# Set GRADLE_HOME
############################################################
export GRADLE_HOME=/Users/Development/Software/Gradle/2.3
export PATH=$PATH:$GRADLE_HOME/bin


############################################################
# Set GRAILS_HOME
############################################################
export GRAILS_HOME=/Users/Development/Software/Grails/3.0.1
export PATH=$PATH:$GRAILS_HOME/bin


############################################################
# Load git autocomplete script
############################################################
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


############################################################
# All colors are defined to make it easier to change.
############################################################
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


############################################################
# Set default Java Version
############################################################
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