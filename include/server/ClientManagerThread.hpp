#pragma once

#include "ClientSocket.hpp"

class ClientManagerThread {
private:
    /* data */

public:
    ClientManagerThread(/* args */);
    ~ClientManagerThread();

    void operator()(ClientSocket socket);
};

