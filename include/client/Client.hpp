#pragma once

#include "HostInterface.hpp"
#include "Socket.hpp"

class Client : public HostInterface {
private:

public:
    Client();
    Client(int port);
    ~Client();
    bool setup() override;
    void run() override;
};


