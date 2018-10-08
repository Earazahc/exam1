#!/bin/bash -
#===============================================================================
#
#          FILE: derekEaton_exam1_p1.sh
#
#         USAGE: ./derekEaton_exam1_p1.sh
#
#   DESCRIPTION: Checks if a user exists on the system
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/08/2018 01:41:10 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Set the userId to input
userId=$1

echo "Checking for userId"

# grep the userId in /etc/passwd

if [[ `grep $userId /etc/passwd` != "" ]]
then
    echo "`grep $userId /etc/passwd`"
    echo "User $userId exists in /etc/passwd"
    echo "`id $userId`"
else
    echo "User $userId does not exist in /etc/passwd"
fi


exit 0
