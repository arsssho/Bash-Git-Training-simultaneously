#! /bin/bash

while [ -f ~/Documents/Git/Bash-Git-Training-simultaneously/scripts/tmp ]
do
	echo "$(date) tmp file exists!"
	sleep 1
done

echo "The tmp file has been deleted!"

