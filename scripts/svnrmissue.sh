#!/bin/sh
#===============================================================================
#
#          FILE:  svnrmissue.sh
#
#         USAGE:  ./svnrmissue.sh <ISSUE_NUMBER>
#
#   DESCRIPTION: A simple script to remove an issue branch.
#                The script should be executed from a workspace directory.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Konstantin Gusev, guvkon@gmail.com
#       COMPANY:  ---
#       VERSION:  1.0.1
#       CREATED:  2018-01-18
#      REVISION:  2018-08-17
#===============================================================================

if [ $# == 0 ]
then
    echo "Usage: $0 <ISSUE_NUMBER>"
	echo ""
	echo "A simple script to remove an issue branch."
	echo "The script should be executed from a workspace directory."
else
	echo "Removing ^/branches/issue_${1} ..."
	svn rm ^/branches/issue_${1} -m "Remove branch issue_${1}"
fi
