BEGIN {
rt_pkts = 0;
}

{
if (($1 == "s" || $1 == "f") && ($4 == "RTR") && ($3=="_0_"))
rt_pkts++;
}

END {
printf ("Total number of routing packets\t%d\n",rt_pkts);
}