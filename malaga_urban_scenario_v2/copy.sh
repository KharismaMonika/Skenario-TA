#!/bin/bash


for (( i = 20; i < 45; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		#cp dsdv.tcl skenario$ims/skenario$j/ 
		#cp dsdv1.tcl "skenario"$i"ms/skenario"$j
		cp ro.awk "skenario"$i"ms/skenario"$j
		cp pdr.awk "skenario"$i"ms/skenario"$j
		cp n2nd.awk "skenario"$i"ms/skenario"$j
		cp throughput.awk "skenario"$i"ms/skenario"$j
		cp run-ns.sh "skenario"$i"ms/skenario"$j
		cp atur.py "skenario"$i"ms/skenario"$j
		cp delete.py "skenario"$i"ms/skenario"$j
		cp scen.tcl "skenario"$i"ms/skenario"$j
		cp script.sumocfg "skenario"$i"ms/skenario"$j
		cp trafic "skenario"$i"ms/skenario"$j
		#cp script.sumocfg "skenario"$
		#cp dsdv1.tcl "skenario"$j
		# cp delete.py "skenario"$j
	done
done