#!/bin/bash

for (( k = 30; k < 60; k+=10 )); do

	for (( j = 1; j <= 10; j++ )); do
		echo $k"node/skenario"$j
		cd $k"node/skenario"$j
		ns scen.tcl
		mv $k"node.tr" $k"node_ns.tr"
		mv $k"node.nam" $k"node_ns.nam"
		mdsdv scen.tcl
		mv $k"node.tr" $k"node_mdsdv.tr"
		mv $k"node.nam" $k"node_mdsdv.nam"
		cd "../../" 
	done
done
