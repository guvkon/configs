#!/bin/sh
#===============================================================================
#
#          FILE:  svnbrissue.sh
#
#         USAGE:  ./svnbrissue.sh <ISSUE_NUMBER>
#
#   DESCRIPTION: A simple script to create an issue branch (copy from preprod).
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
	echo "A simple script to create an issue branch (copy from preprod)."
	echo "The script should be executed from a workspace directory."
else
	echo "Copying ^/branches/preprod into ^/branches/issue_${1} ..."
	svn cp ^/branches/preprod ^/branches/issue_${1} -m "Create branch issue_${1} from preprod"
fi
