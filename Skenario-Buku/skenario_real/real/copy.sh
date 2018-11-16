#!/bin/bash

for (( k = 30; k < 60; k+=10 )); do
	for (( j = 1; j <= 10; j++ )); do
		cp ro.awk $k"node/skenario"$j
	done
done