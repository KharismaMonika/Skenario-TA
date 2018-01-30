with open(r'scenario.tcl', 'r') as infile, open(r'skenario_test.txt', 'w') as outfile:
    data = infile.read();
    data = data.replace("-","")
    outfile.write(data)