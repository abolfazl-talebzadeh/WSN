#include <stdio.h>
#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;


class BS : public cSimpleModule
{
  private:
    int counter;

  protected:
    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
};

Define_Module(BS);

void BS::initialize()
{
    EV << getName() << ": State ready!\n";
}

void BS::handleMessage(cMessage *msg)
{
    EV << "packet received";
}

