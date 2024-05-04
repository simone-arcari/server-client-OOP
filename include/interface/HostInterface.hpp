#pragma once

#include "Socket.hpp"

// Dichiarazione del template dell'interfaccia HostInterface
template<typename SocketType>

class HostInterface {
public:
    int serverPort = 8080;
    SocketType socket;
    
public:
    virtual bool setup() = 0;
    virtual void run() = 0;
    
    int getServerPort() {
        return this->serverPort;
    }
    void setServerPort(int port) {
        this->serverPort = port;
    }
};
