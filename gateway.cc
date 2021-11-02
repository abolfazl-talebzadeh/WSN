#include <stdio.h>
#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;


class Gateway : public cSimpleModule
{
  private:
    int count;
  protected:
    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
};

Define_Module(Gateway);

void Gateway::initialize()
{
    EV << getName() << ": State ready!\n";
}

void Gateway::handleMessage(cMessage *msg)
{
    EV <<getName() << ": packet received\n";
    EV <<"The message is being redirected to The Base Station\n";
    send(msg, "bGate$o");
}

