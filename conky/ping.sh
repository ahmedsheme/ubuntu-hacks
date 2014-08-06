#!/bin/bash

ping_attempts=1
myHost=74.125.136.104
re='^[0-9]+([.][0-9]+)?$'

ms='ms'
colorGood='${color Green}'
colorAcceptable='${color yellow}'
colorLag='${color red}'
colorend='${color}'


pingms=$(ping -c $ping_attempts $myHost | awk '{print $4}'| tail -1 |cut -d '/' -f 3)
pingms=$( printf "%.1f" $pingms )
if [[ $pingms =~ $re ]]; then
	if (( $(echo "$pingms < 120" | bc -l) )); then
		echo $colorGood$pingms$ms$colorend
	else
		if (( $(echo "$pingms < 300" | bc -l) )); then
			echo $colorAcceptable$pingms$ms$colorend
		else
			echo $colorLag$pingms$ms$colorend
			
		fi
	fi
        
else
        echo 'DEAD'
fi

