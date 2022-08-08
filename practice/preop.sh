#!/bin/bash

echo "Make sure terminals on the LEFT"
echo "enter date <dd-mm-yy>"
read date
echo "enter op#"
read op

NAME="an_"
DATE="${date}_"
OP="${op}"
student_dir=~/Downloads/$NAME$DATE$OP
mkdir $student_dir

cd $student_dir

touch notes_$date
touch NSDB_$date

echo "@@@@@@@@@@@@@@@@@@@@@@Don't forget to script -af termscreen.$$ on all target terminals@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "######################Open all Survey files#############################"
echo "Note: opnotes and NSDB are not on target. Do NOT script them!"
echo "Conduct pre-brief/IP verification with MC"
