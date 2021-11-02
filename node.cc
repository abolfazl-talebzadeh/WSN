#include <stdio.h>
#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;


class node : public cSimpleModule
{
  private:
    int e_level;

  protected:
    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
};

Define_Module(node);

void node::initialize()
{
    e_level = par("energyLeve");
    if (par("sendMsgOnInit").boolValue() == true) {
        EV << getIndex() << ": Sending the first packet\n";
        cMessage *msg = new cMessage("packet");
        if (getIndex()==0){
                    send(msg, "nGate$o",0);
         }
         if (getIndex()==1){
                    send(msg, "nGate$o",1);
         }
         if (getIndex()==2){
                    send(msg, "nGate$o",2);
         }
         if (getIndex()==3){
                     send(msg, "nGate$o",3);
         }
         if (getIndex()==4){
                     send(msg, "nGate$o",4);
         }
         if (getIndex()==5){
                     send(msg, "nGate$o",5);
         }
         if (getIndex()==6){
                     send(msg, "nGate$o",0);
         }
    }
}

void node::handleMessage(cMessage *msg)
{
    e_level--;
    if (e_level == 0) {
        EV << getName() << "is dead\n";
        delete msg;
    }
    else{
        if(getIndex()==0){
            send(msg, "nGate$o",2);
        }
        if (getIndex()==1){
            send(msg, "nGate$o",2);
        }
        if (getIndex()==2){
            send(msg, "nGate$o",2);
        }
        if(getIndex()==3){
            send(msg, "gGate$o");
        }
        if (getIndex()==4){
             send(msg, "nGate$o",3);
        }
        if (getIndex()==5){
             send(msg, "nGate$o",3);
        }
        if (getIndex()==6){
             send(msg, "nGate$o",3);
        }
    }
}
