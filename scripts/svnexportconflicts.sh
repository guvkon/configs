#!/bin/sh
#===============================================================================
#
#          FILE:  svnexportconflicts.sh
#
#         USAGE:  ./svnexportconflicts.sh <RELATIVE_PATH_TO_BRANCH>
#
#   DESCRIPTION: A script to copy files with tree conflicts from a specified branch into a workspace directory.
#                The script should be executed from the root of the workspace directory.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Konstantin Gusev, guvkon@gmail.com
#       COMPANY:  ---
#       VERSION:  1.0
#       CREATED:  2018-05-18
#      REVISION:  ---
#===============================================================================

if [ $# == 0 ]
then
    echo "Usage: $0 <RELATIVE_PATH_TO_BRANCH>"
	echo ""
    echo "A script to copy files with tree conflicts from a specified branch into a workspace directory."
    echo "The script should be executed from the root of the workspace directory."
else
    FLS=(`svn st | egrep -e "\bC\b" | sed 's/\!     C //' | tr '\n' ' '`)
	for fl in ${FLS[@]}
	do
        echo "Exporting file ^/${1}/${fl} ..."
        svn export --force ^/${1}/${fl} ${fl}
    done
fi
