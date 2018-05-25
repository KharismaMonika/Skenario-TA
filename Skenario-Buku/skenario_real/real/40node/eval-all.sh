#!/bin/bash


# for (( i = 25; i < 45; i+=5 )); do
# 	for (( j = 1; j <= 10; j++ )); do
# 		echo "skenario"$i"ms/skenario"$j
# 		cd "skenario"$i"ms/skenario"$j
# 		sh "run-ns.sh"
# 		cd "../../" 
# 	done
# done

# for (( i = 25; i < 55; i+=5 )); do
	# printf "\n";
	# echo "skenario"$i"ms"
	for (( j = 1; j <= 10; j++ )); do
		printf "\n";
		#echo "skenario"$i"ms/skenario"$j
		cd "skenario"$j
		awk -f pdr.awk 40node.tr
		awk -f throughput.awk 40node.tr
		awk -f n2nd.awk 40node.tr
		awk -f ro.awk 40node.tr
		cd "../" 
	done
	# printf "\n";
# done