simple node
{
    parameters:
        bool sendMsgOnInit = default(true);
        int energyLeve = default(100);
        int limit = default(2);
        @display("i=block/sink");
    gates:
        inout nGate[];  // declare in[] and out[] to be vector gates
        inout gGate;
}
simple Gateway
{
    @display("i=block/dispatch");
    gates:
        inout nGate[];
        inout bGate;
}
simple BS
{
    @display("i=device/server");
    gates:
        inout gGate[];
}
network WSN
{
    @display("bgi=background/streetmap,s");
    submodules:
        node[7]: node;
        n[7]: node;
        gateway[2]: Gateway;
        baseStation: BS;
    connections:
        baseStation.gGate++<-->{ delay = 100ms; } <-->gateway[0].bGate;
        node[0].nGate++ <--> {  delay = 100ms; } <--> node[1].nGate++;
        node[0].nGate++ <--> {  delay = 100ms; } <--> node[2].nGate++;
        node[0].nGate++ <--> {  delay = 100ms; } <--> node[3].nGate++;
        node[0].nGate++ <--> {  delay = 100ms; } <--> node[4].nGate++;
        node[0].nGate++ <--> {  delay = 100ms; } <--> node[5].nGate++;
        node[0].nGate++ <--> {  delay = 100ms; } <--> node[6].nGate++;
        node[0].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
        
        node[1].nGate++ <--> {  delay = 100ms; } <--> node[2].nGate++;
        node[1].nGate++ <--> {  delay = 100ms; } <--> node[3].nGate++;
        node[1].nGate++ <--> {  delay = 100ms; } <--> node[4].nGate++;
        node[1].nGate++ <--> {  delay = 100ms; } <--> node[5].nGate++;
        node[1].nGate++ <--> {  delay = 100ms; } <--> node[6].nGate++;
        node[1].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
        
        node[2].nGate++ <--> {  delay = 100ms; } <--> node[3].nGate++;
        node[2].nGate++ <--> {  delay = 100ms; } <--> node[4].nGate++;
        node[2].nGate++ <--> {  delay = 100ms; } <--> node[5].nGate++;
        node[2].nGate++ <--> {  delay = 100ms; } <--> node[6].nGate++;
        node[2].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
        
        node[3].nGate++ <--> {  delay = 100ms; } <--> node[4].nGate++;
        node[3].nGate++ <--> {  delay = 100ms; } <--> node[5].nGate++;
        node[3].nGate++ <--> {  delay = 100ms; } <--> node[6].nGate++;
        node[3].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
        
        node[4].nGate++ <--> {  delay = 100ms; } <--> node[5].nGate++;
        node[4].nGate++ <--> {  delay = 100ms; } <--> node[6].nGate++;
        node[4].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
        
        node[5].nGate++ <--> {  delay = 100ms; } <--> node[6].nGate++;
        node[5].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
        
        node[6].gGate <--> {  delay = 100ms; } <--> gateway[0].nGate++;
///////////////////////////////////////////////////////////////////////////////////////
		baseStation.gGate++<-->{ delay = 100ms; } <-->gateway[1].bGate;
        n[0].nGate++ <--> {  delay = 100ms; } <--> n[1].nGate++;
        n[0].nGate++ <--> {  delay = 100ms; } <--> n[2].nGate++;
        n[0].nGate++ <--> {  delay = 100ms; } <--> n[3].nGate++;
        n[0].nGate++ <--> {  delay = 100ms; } <--> n[4].nGate++;
        n[0].nGate++ <--> {  delay = 100ms; } <--> n[5].nGate++;
        n[0].nGate++ <--> {  delay = 100ms; } <--> n[6].nGate++;
        n[0].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
        
        n[1].nGate++ <--> {  delay = 100ms; } <--> n[2].nGate++;
        n[1].nGate++ <--> {  delay = 100ms; } <--> n[3].nGate++;
        n[1].nGate++ <--> {  delay = 100ms; } <--> n[4].nGate++;
        n[1].nGate++ <--> {  delay = 100ms; } <--> n[5].nGate++;
        n[1].nGate++ <--> {  delay = 100ms; } <--> n[6].nGate++;
        n[1].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
        
        n[2].nGate++ <--> {  delay = 100ms; } <--> n[3].nGate++;
        n[2].nGate++ <--> {  delay = 100ms; } <--> n[4].nGate++;
        n[2].nGate++ <--> {  delay = 100ms; } <--> n[5].nGate++;
        n[2].nGate++ <--> {  delay = 100ms; } <--> n[6].nGate++;
        n[2].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
        
        n[3].nGate++ <--> {  delay = 100ms; } <--> n[4].nGate++;
        n[3].nGate++ <--> {  delay = 100ms; } <--> n[5].nGate++;
        n[3].nGate++ <--> {  delay = 100ms; } <--> n[6].nGate++;
        n[3].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
        
        n[4].nGate++ <--> {  delay = 100ms; } <--> n[5].nGate++;
        n[4].nGate++ <--> {  delay = 100ms; } <--> n[6].nGate++;
        n[4].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
        
        n[5].nGate++ <--> {  delay = 100ms; } <--> n[6].nGate++;
        n[5].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
        
        n[6].gGate <--> {  delay = 100ms; } <--> gateway[1].nGate++;
}

