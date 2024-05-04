#pragma once

#include "ServerSocketForClient.hpp"

class ClientManagerThread {
private:
    /* data */

public:
    ClientManagerThread();
    ~ClientManagerThread();

    void operator()(ServerSocketForClient socket);
};

