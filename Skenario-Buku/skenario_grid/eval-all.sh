#!/bin/bash

# for (( k = 30; k < 60; k+=10 )); do
# 	printf "\n";
# 	echo $k" node"
# 	printf "\n";
# 	for (( i = 25; i < 55; i+=5 )); do
# 		for (( j = 1; j <= 10; j++ )); do
# 			# echo $k" node/skenario"$i"ms/skenario"$j
# 			cd $k" node/skenario"$i"ms/skenario"$j
# 			# awk -f pdr.awk $k"node_ns.tr"
# 			# awk -f throughput.awk $k"node_ns.tr"
# 			# awk -f n2nd.awk $k"node_ns.tr"
# 			awk -f ro.awk $k"node_ns.tr"
# 			printf "\n";
# 			cd "../../../" 
# 		done
# 	done
# done

for (( k = 30; k < 60; k+=10 )); do
	printf "\n";
	echo $k" node"
	printf "\n";
	for (( i = 25; i < 55; i+=5 )); do
		for (( j = 1; j <= 10; j++ )); do
			# echo $k" node/skenario"$i"ms/skenario"$j
			cd $k" node/skenario"$i"ms/skenario"$j
			# awk -f pdr.awk $k"node_mdsdv.tr"
			# awk -f throughput.awk $k"node_mdsdv.tr"
			# awk -f n2nd.awk $k"node_mdsdv.tr"
			awk -f ro.awk $k"node_mdsdv.tr"
			printf "\n";
			cd "../../../" 
		done
	done
done
