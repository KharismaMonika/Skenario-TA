#!/bin/bash


for (( i = 5; i < 40; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		echo "skenario"$i"ms/skenario"$j
		cd "skenario"$i"ms/skenario"$j
		sh "run-ns.sh"
		cd "../../" 
	done
done

for (( i = 10; i < 35; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		echo "skenario"$i"ms/skenario"$j
		cd "skenario"$i"ms/skenario"$j
		awk -f pdr.awk s-dsdv230.tr
		awk -f throughput.awk s-dsdv230.tr
		awk -f n2nd.awk s-dsdv230.tr
		awk -f ro.awk s-dsdv230.tr
		cd "../../" 
	done
done