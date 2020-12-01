#!/bin/bash

nbr='^[0-9]+$'

# get total thinking time as input parameter
if [ $# -eq 1 ]; then
	if ! [[ $1 =~ $nbr ]]; then
		echo "Error: Input parameter is not a number." >&2; exit 1
	fi
	thinktime=$(($1*100))
else
	thinktime=10000
fi

# main run command
./autognuchess.exp $thinktime | tee >(tail -n 5 | grep -a '{' | sed 's/.*{//;s/}.*//' | (read -r result ; echo "$(date +"%Y%m%d %H:%M:%S")  -  $result" >> /var/log/autognuchess.log)) 

echo
sleep .5
