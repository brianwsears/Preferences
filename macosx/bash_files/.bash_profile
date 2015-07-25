# =============================================================== #
#
# PERSONAL $HOME/.bash_profile
# By Brian Sears
#
# This script is executed every time at login. Place important
# PATH and other Environment variable information here.
#
# =============================================================== #


# ************************* [ VARIABLES ] *************************
BASHRC_LOCATION=~/.bashrc

#Set SCLICOLOR if you want ANSI Colors in ITerm2
export CLICOLOR=1

#Set colors to match ITerm2 Terminal Colors
export TERM=xterm=256color


if [ -f ${BASHRC_LOCATION} ]; then
    source ${BASHRC_LOCATION}
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/Development/.gvm/bin/gvm-init.sh" ]] && source "/Users/Development/.gvm/bin/gvm-init.sh"
