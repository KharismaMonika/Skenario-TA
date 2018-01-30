with open(r'tes.tcl', 'r') as infile, open(r'hasiltes.txt', 'w') as outfile:
    data = infile.read();
    data = data.replace("-","")
    outfile.write(data)