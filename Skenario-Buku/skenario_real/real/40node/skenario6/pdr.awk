# AWK Script for Packet Delivery Calculation for OLD Trace Format

BEGIN {
sent=0;
received=0;
}

{

# count packet send
  if($1=="s" && $3=="_38_" && $4=="AGT" && $7=="cbr")
   {
    sent++;
   }

  else if($1=="r" && $3=="_39_" && $4=="AGT" && $7=="cbr")
   {
     received++;
   }
 
}
END {
 #printf " Packet Sent:%d",sent;
 #printf "\n Packet Received:%d",received;
 #printf "\n Packet Delivery Ratio:%.2f\n",(received/sent)*100;
 printf "%.2f|",(received/sent)*100;

}