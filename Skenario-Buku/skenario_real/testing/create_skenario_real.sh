 #!/bin/bash

for i in `seq 1 10`;
do
    cd skenario$i
	#echo skenario$i
		netconvert --osm-files map.osm --default.speed=30 --tls.guess=1 --output-file mapgrid.net.xml
		python /usr/share/sumo/tools/randomTrips.py -n mapgrid.net.xml -e 28 -l --trip-attributes="departLane=\"best\" departSpeed=\"max\" departPos=\"random_free\"" -o trips.trips.xml
		duarouter -n mapgrid.net.xml -t trips.trips.xml -o route.rou.xml --ignore-errors --repair
		sumo -c script.sumocfg --fcd-output skenario.xml
		python /usr/share/sumo/tools/traceExporter.py --fcd-input=skenario.xml --ns2mobility-output=skenario.tcl
		python delete.py
		python atur.py
	cd ..
done	



# netconvert --osm-files map.osm --edges.join=1 --output-file mapgrid.net.xml

# netconvert --osm-files map.osm --speed.offset=25 --output-file mapgrid.net.xml --> tambah speed deafault dg 25

# netconvert --osm-files map.osm --speed.minimum 25 --output-file mapgrid.net.xml