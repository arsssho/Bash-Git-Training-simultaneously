#!/bin/bash

threshhold=80
usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//' )
available=$(df -h / | awk 'NR==2 {print $4}')

if [[ $usage -ge $threshhold ]];then
	echo "WARNING: Disk usage is at $usage%, Available --> $available"
else
	echo "Disk Usage is normal ($usage%), Available --> $available"
fi

