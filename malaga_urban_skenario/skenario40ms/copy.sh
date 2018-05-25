#!/bin/bash


#for (( i = 5; i < 6; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		#cp dsdv.tcl skenario$ims/skenario$j/ 
		#cp dsdv1.tcl "skenario"$i"ms/skenario"$j
		cp ro.awk "skenario"$j
		cp pdr.awk "skenario"$j
		cp n2nd.awk "skenario"$j
		cp throughput.awk "skenario"$j
		cp run-ns.sh "skenario"$j
		cp script.sumocfg "skenario"$j
		cp trafic "skenario"$j
		cp dsdv1.tcl "skenario"$j
		cp delete.py "skenario"$j
	done
#done