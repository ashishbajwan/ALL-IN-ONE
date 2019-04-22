#!/bin/bash
while true 
do
	current_usage=$( df -h | grep '/dev/sdb' | awk {'print $5'} )
	max_usage=27%
	echo $current_usage
	echo $max_usage
	if [ ${current_usage%?} -ge ${max_usage%?} ]; then
    		
    		echo "Script break"
		break
    	
	elif [ ${current_usage%?} -lt ${max_usage%?} ]; then
    		echo "No problems. Disk usage at ${current_usage}." > /dev/null
		bash /root/Downloads/PD1.sh #path of the PD1
	fi
done
