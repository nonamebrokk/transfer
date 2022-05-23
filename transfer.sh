#!/bin/bash

RED='\033[31;1m'
GREEN='\033[32;1m'
BLUE='\033[34;1m'
YELLOW='\033[33;1m'
RED_BLINK='\033[31;5;1m'
END='\033[m'

if [ "$1" == "" ]
then
echo -e "${YELLOW} === How to use ===${END}"
echo
echo -e "${YELLOW} Usage   : ${END}./transfer.sh [IP] [PORT] [DIR]"
echo -e "${YELLOW} Example : ${END}./transfet.sh 24.48.0.1 666 /home"

else
echo -e " ${YELLOW}################################################################################${END}"
echo -e " ${YELLOW}#                                                                              #${END}"
echo -e " ${YELLOW}#                            FILE TRANSFER                                     #${END}"
echo -e " ${YELLOW}#                          Coded by xRev3rse                                   #${END}"
echo -e " ${YELLOW}#                                                                              #${END}"
echo -e " ${YELLOW}################################################################################${END}"
echo

echo -e " [*] - Acessing the dir      : ${YELLOW}$3${END}"
echo -e " [*] - Creating the folder   : ${YELLOW}/pastes${END}"
echo -e " [*] - Moving the folders to : ${YELLOW}/pastes${END}"

mkdir pastes
mv $3 pastes

echo
echo -e " [*] - Sending ${YELLOW}$3${END} to host ${YELLOW}$1${END} in port ${YELLOW}$2${END}"
echo

tar czp pastes | nc $1 $2
fi
