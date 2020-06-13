#!/bin/bash

# DETERMINE OPERATING SYSTEM
# "Darwin" = MacOS
# "Linux" = Linux
readonly OPERATING_SYSTEM=$(uname -s)
export OPERATING_SYSTEM


# DO UNIVERSAL THINGS



if [ OPERATING_SYSTEM == "Darwin" ]
then
    # DO MACOS THINGS
    ../macos/_scripts/restore_macos.sh

elif [ OPERATING_SYSTEM == "Linux" ]
then
    # DO LINUX THINGS
    ../linux/_scripts/restore_linux.sh
fi