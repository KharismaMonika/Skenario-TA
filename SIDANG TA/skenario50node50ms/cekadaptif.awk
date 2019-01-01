BEGIN {
rt_pkts = 0;
}

{
if (($1 == "s" || $1 == "f") && ($3 == "_1_") && ($4 == "RTR") && ($7 == "message")){
	rt_pkts++;
	printf ("%f\n",$2);
}

}

END {
#printf ("Total number of routing packets\t%d\n",rt_pkts);
printf ("%d|",rt_pkts);
}