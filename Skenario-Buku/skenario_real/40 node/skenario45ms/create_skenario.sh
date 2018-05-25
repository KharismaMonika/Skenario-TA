 #!/bin/bash

for i in `seq 1 10`;
do
    cd skenario$i
	#echo skenario$i
		netgenerate --grid --grid.x-number 11 --grid.y-number 11 --grid.x-length 98 --grid.y-length 98 --default.speed=45 --tls.guess=1 --output-file=mapgrid.net.xml
		python /usr/share/sumo/tools/randomTrips.py -n mapgrid.net.xml -e 38 -l --trip-attributes="departLane=\"best\" departSpeed=\"max\" departPos=\"random_free\" color=\"1,0,0\"" -o trips.trips.xml
		duarouter -n mapgrid.net.xml -t trips.trips.xml -o route.rou.xml --ignore-errors --repair
		sumo -c script.sumocfg --fcd-output skenario.xml
		python /usr/share/sumo/tools/traceExporter.py --fcd-input=skenario.xml --ns2mobility-output=skenario.tcl
		python delete.py
		python atur.py
	cd ..
done	
	