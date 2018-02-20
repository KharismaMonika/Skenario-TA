#!/bin/bash


for (( i = 10; i < 15; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		cd "skenario"$i"ms/skenario"$j
		ns "dsdv1.tcl"
		cd "../../" 
	done
done

for (( i = 10; i < 15; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		cd "skenario"$i"ms/skenario"$j
		awk -f pdr.awk s-dsdv230.tr
		cd "../../" 
	done
done