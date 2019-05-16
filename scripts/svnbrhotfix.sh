#!/bin/sh
#===============================================================================
#
#          FILE:  svnbrhotfix.sh
#
#         USAGE:  ./svnbrhotfix.sh <ISSUE_NUMBER>
#
#   DESCRIPTION: A simple script to create a hotfix branch (copy from trunk).
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
	echo "A simple script to create a hotfix branch (copy from trunk)."
	echo "The script should be executed from a workspace directory."
else
    echo "Copying trunk into ^/branches/hotfix_${1} ..."
    svn cp ^/trunk ^/branches/hotfix_${1} -m "Create branch hotfix_${1} from trunk"
fi
