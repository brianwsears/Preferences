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


if [ -f ${BASHRC_LOCATION} ]; then
    source ${BASHRC_LOCATION}
fi