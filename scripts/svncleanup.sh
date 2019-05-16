#!/bin/sh
#===============================================================================
#
#          FILE:  svncleanup.sh
#
#         USAGE:  ./svncleanup.sh
#
#   DESCRIPTION: A simple script to remove files not in a SVN repository (or not in svn:ignore).
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

echo "Deleted following files:"
svn st | grep \? | sed 's/\?       //'
rm -rf `svn st | grep \? | sed 's/\?       //'`
