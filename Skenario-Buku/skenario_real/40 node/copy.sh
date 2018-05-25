#!/bin/bash


for (( i = 25; i < 55; i+=5 )); do
	for (( j = 1; j <= 10; j++ )); do
		# cp ro.awk "skenario"$i"ms/skenario"$j
		# cp pdr.awk "skenario"$i"ms/skenario"$j
		# cp n2nd.awk "skenario"$i"ms/skenario"$j
		# cp throughput.awk "skenario"$i"ms/skenario"$j
		cp run-ns.sh "skenario"$i"ms/skenario"$j
		cp run-mdsdv.sh "skenario"$i"ms/skenario"$j
		# cp atur.py "skenario"$i"ms/skenario"$j
		# cp delete.py "skenario"$i"ms/skenario"$j
		# cp scen.tcl "skenario"$i"ms/skenario"$j
		# cp script.sumocfg "skenario"$i"ms/skenario"$j
		# cp trafic "skenario"$i"ms/skenario"$j
		# cp mapkertajaya.osm "skenario"$i"ms/skenario"$j
	done
done