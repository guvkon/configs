#!/bin/sh
#===============================================================================
#
#          FILE:  svnrmhotfix.sh
#
#         USAGE:  ./svnrmhotfix.sh <ISSUE_NUMBER>
#
#   DESCRIPTION: A simple script to remove a hotfix branch.
#                The script should be executed from a workspace directory.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Konstantin Gusev, guvkon@gmail.com
#       COMPANY:  ---
#       VERSION:  1.0
#       CREATED:  2018-01-18
#      REVISION:  ---
#===============================================================================

if [ $# == 0 ]
then
    echo "Usage: $0 <ISSUE_NUMBER>"
	echo ""
	echo "A simple script to remove a hotfix branch."
	echo "The script should be executed from a workspace directory."
else
	echo "Removing ^/branches/hotfix_${1} ..."
	svn rm ^/branches/hotfix_${1} -m "Remove branch hotfix_${1}"
fi
