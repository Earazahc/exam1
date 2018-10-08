#!/bin/bash -
#===============================================================================
#
#          FILE: derekEaton_exam1_p2.sh
#
#         USAGE: ./derekEaton_exam1_p2.sh
#
#   DESCRIPTION: Select the N biggest UID in /etc/passwd
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/08/2018 02:27:03 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Usage Function
usage()
{
    echo "Usage: ./derekEaton_exam1_p2.sh <NumberOfTopUID>"
    exit 1
}

if [[ $# -ne 1 || $1 == "--help" ]]
then
    usage
fi

if [[ ! -d /etc/passwd ]]
then
    `cp /etc/passwd $PWD`
fi

awk -F: '{ print $3 }' passwd >> temp1.csv

`sort -n -r temp1.csv >> temp2.csv`


exit 0
