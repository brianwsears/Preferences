BASHRC_LOCATION=~/.bashrc

####################################################
# Set SCLICOLOR if you want ANSI Colors in ITerm2
####################################################
export CLICOLOR=1


####################################################
# Set colors to match ITerm2 Terminal Colors
####################################################
export TERM=xterm=256color


####################################################
# Set Location for .bashrc file
####################################################
if [ -f ${BASHRC_LOCATION} ]; then
    source ${BASHRC_LOCATION}
fi


####################################################
# Set Java5 Home Location
####################################################
launchctl setenv JAVA_5_HOME /apps/jdk1.5.0_22/


########################################################
# THIS MUST BE AT THE END OF THE FILE FOR SDK TO WORK!!
########################################################
[[ -s "/Users/briansears/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/briansears/.sdkman/bin/sdkman-init.sh"
## cfx-cli
export PATH=$PATH:/Users/briansears/.cfx/bin:/Users/briansears/cfx/.meta/bin
## end cfx-cli


# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
