filepath = 'dsdv.tcl'
output = open("dsdv-update.tcl","w") 
trip = []
x = 0
y = 0
z = 0  
cnt = 0
with open(filepath) as fp:  
   while True:
		line = fp.readline()
		arr = line.split()
		if not line:
			break
		if len(arr) == 0:
			break
		if "$node_" in arr[0]:
			cnt += 1
			print arr
			if arr[2] == "X_":
				x = arr[3]
			if arr[2] == "Y_":
				y = arr[3]
			if arr[2] == "Z_":
				z = arr[3]
			output.write(line)
			if cnt == 3:
				print line
				output.write('$ns_ at 0.0 "'+arr[0]+' setdest '+x+' '+y+' '+z+'"\n')
				cnt = 0
		else:
			trip.append(line)

for x in trip:
	output.write(x)
output.close()