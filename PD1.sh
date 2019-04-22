#!/bin/bash
file="data.txt"
n=100
for i in data/${file}*
	do
		if [ data/${file}.${n} = ${i} ]
			then
				n=$(( $n + 1 ))
		fi
	done

cp data.txt data/${file}.${n}




