#!/bin/sh
#===============================================================================
#
#          FILE:  svnswissue.sh
#
#         USAGE:  ./svnswissue.sh <ISSUE_NUMBER>
#
#   DESCRIPTION: A simple script to cleanly switch to an issue branch.
#                The script should be executed from a workspace directory.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Konstantin Gusev, guvkon@gmail.com
#       COMPANY:  ---
#       VERSION:  1.0
#       CREATED:  2019-05-08
#      REVISION:  ---
#===============================================================================

if [ $# == 0 ]
then
    echo "Usage: $0 <ISSUE_NUMBER>"
	echo ""
	echo "A simple script to create an issue branch (copy from preprod)."
	echo "The script should be executed from a workspace directory."
else
    echo "Reverting uncommitted changes..."
    svn revert -R .
	echo "Switching to ^/branches/issue_${1}..."
    svn switch ^/branches/issue_${1}
fi
