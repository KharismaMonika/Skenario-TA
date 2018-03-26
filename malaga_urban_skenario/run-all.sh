#!/bin/bash


# for (( i = 5; i < 40; i+=5 )); do
# 	for (( j = 1; j <= 10; j++ )); do
# 		echo "skenario"$i"ms/skenario"$j
# 		cd "skenario"$i"ms/skenario"$j
# 		sh "run-ns.sh"
# 		cd "../../" 
# 	done
# done

for (( i = 5; i < 40; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		echo "skenario"$i"ms/skenario"$j
		cd "skenario"$i"ms/skenario"$j
		awk -f throughput.awk s-dsdv230.tr
		cd "../../" 
	done
done