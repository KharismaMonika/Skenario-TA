set val(chan)       Channel/WirelessChannel;
set val(prop)       Propagation/TwoRayGround;   
set val(netif)      Phy/WirelessPhy;
set val(mac)        Mac/802_11;
set val(ifq)        Queue/DropTail/PriQueue;   
set val(ll)         LL;
set val(ant)        Antenna/OmniAntenna;   
set val(ifqlen)     50;
# set val(nn)         30;
set val(nn)         30;
set val(rp)         DSDV;
set val(energymodel)    EnergyModel;
set val(initialenergy)  100;
set val(lm)         "off";
set val(x)          226;
set val(y)          226;
set val(stop)       60;
set val(cp)         "trafic";
#set val(cp)         "traffic-dev";
#set val(sc)         "skenario.tcl";
set val(sc)         "skenario_test.tcl";

set ns_ [new Simulator]             
set tracefd [open s-dsdv230.tr w]
set namtrace [open s-dsdv230.nam w]

$ns_ trace-all $tracefd

$ns_ namtrace-all-wireless $namtrace $val(x) $val(y)

Agent/DSDV set num_nodes $val(nn)

set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)
set chan_1_ [new $val(chan)]
$ns_ node-config 	-adhocRouting $val(rp) \
			-llType $val(ll) \
			-macType $val(mac) \
			-channel $chan_1_ \
			-ifqType $val(ifq) \
			-ifqLen $val(ifqlen) \
			-antType $val(ant) \
			-propType $val(prop) \
			-phyType $val(netif) \
			-topoInstance $topo \
			-agentTrace ON \
			-routerTrace ON \
			-macTrace OFF \
			-movementTrace ON \

for {set i 0} {$i < $val(nn)} {incr i} {
set node_($i) [$ns_ node]
}

source $val(cp)
source $val(sc)
for {set i 0} {$i < $val(nn)} {incr i} {
$ns_ initial_node_pos $node_($i) 100
}

for {set i 0} {$i < $val(nn)} { incr i} {
$ns_ at $val(stop) "$node_($i) reset"
}

$ns_ at $val(stop)+0.1 "puts \"end simulation\" ; $ns_ halt"

proc stop {} {
global ns_ tracefd namtrace
$ns_ flush-trace
close $tracefd
close $namtrace
}

$ns_ run
