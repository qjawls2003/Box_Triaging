#!/bin/bash
echo "@@@@@@ NO .swp files?????"
echo "enter date <dd-mm-yy>"
read date
echo "enter op#"
read op

NAME="an_"
DATE="${date}_"
OP="${op}"
student_dir=$NAME$DATE$OP
echo "rm *.swp after checking all the vim files"
echo "ready to tar?"
read res
tar -cvf $NAME$DATE$OP.tar $student_dir
echo "Post DEBRIEF to MC chat!!!!"
echo "ready to scp?"
read a
scp $NAME$DATE$OP.tar student4@10.50.23.198:~
