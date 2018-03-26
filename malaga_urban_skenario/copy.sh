#!/bin/bash


for (( i = 5; i < 40; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		#cp dsdv.tcl skenario$ims/skenario$j/ 
		#cp dsdv1.tcl "skenario"$i"ms/skenario"$j
		cp n2nd.awk "skenario"$i"ms/skenario"$j
		cp throughput.awk "skenario"$i"ms/skenario"$j
		#cp run-ns.sh "skenario"$i"ms/skenario"$j
		#cp trafic "skenario"$i"ms/skenario"$j
	done
done