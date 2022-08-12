#!/bin/bash

echo 'Mission Name to check on NSDB'
read op
touch ~/Documents/$op/ip_$op
grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' ~/Documents/$op/$op > ~/Documents/$op/ip_$op

sudo rm NSDB/*
wget http://10.50.23.198/NSDB.htm -P NSDB
grep -f ~/Documents/$op/ip_$op NSDB/NSDB.htm
sudo rm NSDB/*
